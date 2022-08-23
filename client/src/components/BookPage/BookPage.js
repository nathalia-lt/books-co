import { useParams } from "react-router-dom"
import { useEffect, useState } from "react"
import key from "../../key"
import axios from "axios"
import FeaturedBook from "../FeaturedBook/FeaturedBook"
import BookReview from "../BookReview/BookReview"


export default function BookPage({ userShelves, setUserShelves, user, setUser}) {
    let [hoverStars, setHoverStars] = useState(0)
    let [clickedStars, setClickedStars] = useState(0)

    //Fetching the specific book for the bookPage

    let params = useParams() //take any think that is after the colon ('/book/:id'). after :
    //we are going to use this ID to performance another fetch to give us the information about the book we selected
    let id = params.id

    let [pageData, setPageData] = useState({})
    let [bookReviews, setBookReviews] = useState([])

    let [reviewText, setReviewText] = useState('')

    //------------------------------------------------------------------

    let [clickedEdit, setClickedEdit] = useState(false)
    let [selectedReview, setSelectedReview] = useState('')


    function truncateDecimals(num, digits) {
        let numS = num.toString(),
            decPos = numS.indexOf('.'),
            substrLength = decPos == -1 ? numS.length : 1 + decPos + digits,
            trimmedResult = numS.substr(0, substrLength),
            finalResult = isNaN(trimmedResult) ? 0 : trimmedResult;

        return parseFloat(finalResult);
    }





    function handleReviewTextChange(event) {
        setReviewText(event.target.value)
    }

    function handleSubmit(e) {
        e.preventDefault()
        let date = new Date()
        let review = {
            'book_id': id,
            'user_id': user.id,
            'rating': clickedStars,
            'text': reviewText,
            'date': date.toDateString().slice(4,)
        }
        axios.post('/reviews', review)
            .then(r => {
                let updatedBookReviews = [...bookReviews, r.data]
                setBookReviews(updatedBookReviews)
            })
        if (clickedEdit) {
            axios.post('/removereview', { 'id': selectedReview })
        }
        setClickedStars(0)
        setReviewText('')
        setSelectedReview('')
        setClickedEdit(false)
    }


    useEffect(() => {
        let url = "https://www.googleapis.com/books/v1/volumes/" + id + '?&key=' + key //I took this link API
        let bookDataRequest = axios.get(url)
        let bookReviewRequest = axios.post('/allbookreviews', { 'book_id': id })
        axios.all([bookDataRequest, bookReviewRequest])
            .then(axios.spread((res1, res2) => {
                setPageData(res1.data)
                setBookReviews(res2.data)
            }))
    }, [])

    if (!pageData.volumeInfo) { //if there is no key of volum info on pagedata return null
        return null
    }


    //---------------------------------------------------------------

    //rating star code:

    //☆★

    function handleClickStar(num) {
        if (clickedStars === num) {
            setClickedStars(0)
            setHoverStars(num)
        } else {
            setClickedStars(num)
            setHoverStars(num)
        }
    }

    function handleHoverStar(num) {
        setHoverStars(num)
    }

    function handleHoverStarOff() {
        setHoverStars(clickedStars)
    }

    function displayStars(num) {
        return clickedStars >= num || hoverStars >= num ? '★' : '☆'
    }

    function starClass(num) {
        return clickedStars >= num || hoverStars >= num ? 'star active' : 'star'
    }


    //-----------------------------------------------------------------


    // I use sort here because I want the latest reviews to appear first.
    let reviewsToDisplay = bookReviews.sort((a, b) => b.id - a.id).map(review => {
        function handleClickEdit() {
            if (clickedEdit && review.id === selectedReview) {
                setClickedStars(0)
                setReviewText('')
                setSelectedReview('')
                setClickedEdit(false)
            } else {
                setClickedStars(review.rating)
                setReviewText(review.text)
                setSelectedReview(review.id)
                setClickedEdit(true)
            }
        }
        //variable inside the function because it has to be for each review
        let madeByUser = review.user.id === user.id
        let inEditMode = selectedReview === review.id

        return (
            <BookReview
                key={review.id}
                review={review}
                user={user}
                madeByUser={madeByUser}
                bookReviews={bookReviews}
                setBookReviews={setBookReviews}
                handleClickEdit={handleClickEdit}
                inEditMode={inEditMode}
            />
        )
    })


    //------------------------------------------------------------------
    //I take the rating from google API

    let avgRating = pageData.volumeInfo.averageRating ? pageData.volumeInfo.averageRating : 0
    let numRatings = pageData.volumeInfo.ratingsCount ? pageData.volumeInfo.ratingsCount : 0

    let bookReviewsRating = bookReviews.reduce((tot, review) => tot + review.rating, 0) / bookReviews.length //average rating in the backEnd
    let calculateBookRating = bookReviews.length ? truncateDecimals(((avgRating * numRatings) + (bookReviewsRating * bookReviews.length)) / (numRatings + bookReviews.length), 2) : avgRating
    // calculatebookingRating, calculates the average rating in the backEnd and API google ratings together
    let totalNumberOfBooksreviews = numRatings + bookReviews.length


    return (
        <div className='mainContainer' >
            <div className='sideBar'  > sidebar</div>
            <div className='display' >
                <FeaturedBook
                    book={pageData}
                    user={user}
                    setUser={setUser}
                    userShelves={userShelves}
                    setUserShelves={setUserShelves}
                />
                <div className='reviewContainer' >
                    <div className='reviewInfo'>
                        <h2>Average Rating: {calculateBookRating} ⭐️</h2>
                        <h4> Number of Ratings: {totalNumberOfBooksreviews} </h4>
                        <hr></hr>
                        <div className="newReviewTitle">
                            <h3>Write a Review: </h3>
                            <div className="stars" onMouseOut={handleHoverStarOff}>
                                {/* I make an anonymous function because all functions that are placed in an element's attribute must not have inputs */}
                                {/* if you place a function in an element's attribute (onClick,onMouseOver,etc) */}
                                {/* and it requires an input (like in the function handleClickStar) */}
                                {/* that function will automatically be invoked */}
                                {/* the solution is to make another function and place the desired function in it  */}
                                <div className={starClass(1)} onClick={() => { handleClickStar(1) }} onMouseOver={() => handleHoverStar(1)}>{displayStars(1)}</div>
                                <div className={starClass(2)} onClick={() => { handleClickStar(2) }} onMouseOver={() => handleHoverStar(2)}>{displayStars(2)}</div>
                                <div className={starClass(3)} onClick={() => { handleClickStar(3) }} onMouseOver={() => handleHoverStar(3)}>{displayStars(3)}</div>
                                <div className={starClass(4)} onClick={() => { handleClickStar(4) }} onMouseOver={() => handleHoverStar(4)}>{displayStars(4)}</div>
                                <div className={starClass(5)} onClick={() => { handleClickStar(5) }} onMouseOver={() => handleHoverStar(5)}>{displayStars(5)}</div>
                            </div>
                        </div>
                        <form className='reviewForm' >
                            <input
                                value={reviewText}
                                onChange={handleReviewTextChange}
                                type='text'

                            />
                            <button onClick={handleSubmit} disabled={!clickedStars} >Submit</button>
                        </form>
                        <hr></hr>
                        <h3>All Reviews:</h3>
                        <div className="userReviews" >
                            {reviewsToDisplay}
                        </div>
                    </div>
                </div>
            </div>

        </div>
    )
}
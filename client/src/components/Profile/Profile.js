import axios from "axios"
import { useEffect, useState } from "react"
import { useParams } from "react-router-dom"
import BookReview from "../BookReview/BookReview"
import BookCard from "../BookCard/BookCard"

export default function Profile({ user, setUser }) {
    let [profileUser, setProfileUser] = useState({})
    let [profileReviews, setProfileReviews] = useState([])
    let [profileShelves, setProfileShelves] = useState([])
    let params = useParams()
    let username = params.username

    function truncateDecimals(num, digits) {
        let numS = num.toString(),
            decPos = numS.indexOf('.'),
            substrLength = decPos == -1 ? numS.length : 1 + decPos + digits,
            trimmedResult = numS.substr(0, substrLength),
            finalResult = isNaN(trimmedResult) ? 0 : trimmedResult;

        return parseFloat(finalResult);
    }

    useEffect(() => {
        let userReq = axios.post('/profileuser', { 'username': username })
        let reviewReq = axios.post('/profilereviews', { 'username': username })
        let shelfReq = axios.post('/profileshelves', { 'username': username })
        axios.all([userReq, reviewReq, shelfReq])
            .then(axios.spread((res1, res2, res3) => {
                setProfileUser(res1.data)
                setProfileReviews(res2.data)
                setProfileShelves(res3.data)
            }))
    }, [username])

    let reviewsToDisplay = profileReviews.sort((a, b) => b.id - a.id).slice(0, 5).map(review => {
        function doNothing() { }
        let madeByUser = review.user.id === user.id
        let onProfile = true
        return (
            <BookReview
                key={review.id}
                user={user}
                madeByUser={madeByUser}
                review={review}
                bookReviews={profileReviews}
                setBookReviews={doNothing}
                handleClickEdit={doNothing}
                inEditMode={false}
                onProfile={onProfile}
            />
        )
    })

    let profileCreationDate = new Date(profileUser.created_at)
    let profileDateMSG = profileCreationDate.toDateString().slice(4,)


    let bookReviewsToDisplay = profileReviews.length ? reviewsToDisplay : <div className="userReviewCard">No reviews have been left for this book.</div>
    let totalNumBookReviews = profileReviews.length
    let calculateBookRating = truncateDecimals(profileReviews.reduce((tot, rev) => tot + rev.rating, 0) / totalNumBookReviews, 2)

    let displayShelves = profileShelves.map(shelf => {
        return (
            <div className="profileShelfBookCard">
                <div className="profileShelfBookCardTitle">{shelf.name}</div>
                <div>Books: {shelf.books.length}</div>
                {shelf.books.length ? <div className="profileShelfBookToDisplay">
                    <BookCard
                        book={shelf.books[shelf.books.length - 1]}
                    />
                </div> : <div className="profileShelfBookToDisplay">
                    <div className="bookCard">
                        <div className="bookCardHalf top">
                            <img className='bookCover' src='https://www.lesprecepteurs.fr/wp-content/uploads/2017/03/no-image-found.jpg'
                                alt='noPhoto' onClick={() => { }} />
                        </div>
                        <div className="bookCardHalf bottom">
                            {/* <div className='bookTitle' onMouseOver={()=>{}} onMouseOut={()=>{}}></div> */}
                            <div className='bookAuthor'>There are no Books in This Shelf</div>
                        </div>
                    </div>
                </div>}
            </div>
        )
    })


    return (
        <div className='profileContainer'>
            <div className="profileCardTop">
                <div className="north">
                    <div className="profilecardtitle">
                        <img className='profileImage' src={profileUser.profile_picture} />
                        <h2>{profileUser.first_name} {profileUser.last_name} ({profileUser.username})</h2>
                    </div>
                    <div className="profilecardsubtitle"> a Scholar since: {profileDateMSG}</div>
                </div>
                <hr></hr>
                <div className="south">
                    <h3>Shelves: {profileShelves.length}</h3>
                    <div className="profileDisplayAllShelves">
                        {displayShelves}
                    </div>
                </div>

            </div>
            <div className="profileCardBottom">
                <div className="reviewContainer">
                    <div className="reviewInfo">
                        <h3>Average Book Rating: {calculateBookRating} ★ --- Number of ratings: {totalNumBookReviews}</h3>
                        <h4></h4>
                        <hr></hr>
                        <h3>Recent Reviews: </h3>
                        <div className="userReviews profilepage">
                            {bookReviewsToDisplay}
                        </div>
                    </div>
                </div>
            </div>
        </div>
    )
}
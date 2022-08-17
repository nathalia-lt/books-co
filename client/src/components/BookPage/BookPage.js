import { useParams } from "react-router-dom"
import { useEffect, useState } from "react"
import key from "../../key"
import axios from "axios"
import FeaturedBook from "../FeaturedBook/FeaturedBook"


export default function BookPage() {
    let [hoverStars, setHoverStars] = useState(0)
    let [clickedStars, setClickedStars] = useState(0)

    //Fetching the specific book for the bookPage

    let params = useParams() //take any think that is after the colon ('/book/:id'). after :
    //we are going to use this ID to performance another fetch to give us the information about the book we selected
    let id = params.id

    let [pageData, setPageData] = useState({})

    let url = "https://www.googleapis.com/books/v1/volumes/" + id + '?&key=' + key //I took this link API


    useEffect(() => {
        axios.get(url)
            .then(r => setPageData(r.data))
    }, [])

    if (!pageData.volumeInfo) { //if there is no key of volum info on pagedata return null
        return null
    }


    //---------------------------------------------------------------

    //rating star code:

    //☆★

    function handleClickStar(num) {
        if (hoverStars === num && clickedStars) {
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

function handleSubmit(e){
    e.preventDefault()
}

function starClass(num) {
    return clickedStars >= num || hoverStars >= num ? 'star active' : 'star' 
}



    return (
        <div className='mainContainer' >
            <div className='sideBar'  > sidebar</div>
            <div className='display' >
                <FeaturedBook
                    book={pageData}
                />
                <div className='reviewContainer' >
                    <div className='reviewInfo'>
                        <h2>Average Rating: 4.5 ⭐️</h2>
                        <h4>Number of ratings: 10</h4>
                        <hr></hr>
                        <div className="newReviewTitle">
                            <label>Write a Review: </label>
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
                                type='text'
                                
                            />
                            <button onClick={handleSubmit} >Submit</button>
                        </form>
                    </div>
                </div>
            </div>

        </div>
    )
}
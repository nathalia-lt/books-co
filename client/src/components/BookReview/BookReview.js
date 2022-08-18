

export default function BookReview( {review} ){







    
    return(
        <div className='userReviewCard' >
            <hr></hr>
            <div className='userReviewId' >
                <div className='userReviewTitle' > <span> {review.user.username}</span> - <span>{review.rating} ★ </span>  </div>
                <div className='userReviewDate'> (review.date)</div>
            </div>
            <div className='userReviewText'> {review.text} </div>
        </div>
    )
}
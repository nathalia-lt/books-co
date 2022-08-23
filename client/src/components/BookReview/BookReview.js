import { GithubSelector, SlackCounter } from '@charkour/react-reactions';
import { useState } from 'react';

export default function BookReview( {review, user, madeByUser, bookReviews, setBookReviews, handleClickEdit, inEditMode} ){

let [reactions, setReactions] = useState([])

let [displayEmojis, setDisplayEmojis] = useState(false)

function handleClickAddEmoji(){
    setDisplayEmojis(!displayEmojis)
}

let displayEmojisSelector = displayEmojis  ? <GithubSelector onSelect={handleSelectReaction}/> : null


//function to avoid re-reaction more than once

function handleSelectReaction(e) {
    let includesReact = reactions.map(reaction => (reaction.emoji === e) && (reaction.by === 'Maria')).includes(true)
    if (!includesReact) {
        let reaction = {
            emoji: e,
            by: 'Maria'
        }
        setReactions([...reactions, reaction])
    }
}

function removeSelectReaction(e) {
    let filteredCounters = reactions.filter(reaction => (reaction.emoji !== e) && (reaction.by === 'Maria'))
    setReactions(filteredCounters)
}


    return(
        <div className='userReviewCard' >
            <hr></hr>
            <div className='userReviewId' >
                <div className='userReviewTitle' > <span> {review.user.username}</span> - <span>{review.rating} ★ </span> 
                <button onClick={handleClickEdit} >{inEditMode ? 'Stop Editing' : 'Edit' }</button> 
                <button>Delete</button>
                </div>
                <div className='userReviewDate'> {review.date}</div>
            </div>
            <div className='userReviewText'> {review.text} </div>
            <div className='reactionCounter' >
                <h5> Reactions: </h5>
            <SlackCounter onAdd={handleClickAddEmoji} counters={reactions} onSelect={removeSelectReaction} />
            </div>
            {displayEmojisSelector}
        </div>
    )
}
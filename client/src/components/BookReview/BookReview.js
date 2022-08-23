import { GithubSelector, SlackCounter } from '@charkour/react-reactions';
import axios from 'axios';
import { useState } from 'react';

export default function BookReview({ review, user, madeByUser, bookReviews, setBookReviews, handleClickEdit, inEditMode }) {

    let [reactions, setReactions] = useState(review.reactions)

    let [displayEmojis, setDisplayEmojis] = useState(false)

    let [clickedDelete, setClickedDelete] = useState(false)


    function handleClickDelete() {
        setClickedDelete(!clickedDelete)
    }

    function handleConfirmDelete(){
        let reviewToDelete = {'id': review.id } // the key of id has the value of review.id
        axios.post('/removereview', reviewToDelete)
        .then(r => {
            let updatedBookReviews = bookReviews.filter(bookReview => bookReview.id !== review.id) 
            //Does this bookReview has the same ID as the one we are targetting? If yes remove it
            setBookReviews(updatedBookReviews)
        })
        alert('Review Deleted')
        setClickedDelete(false)
    }

//pq tem div abaixo e HTML e nao javaScript. Entao precisei colocar o {} no ternary function
    let buttons = clickedDelete ? <div>
        <div> Are you sure? </div>
        <button onClick={handleClickDelete} >Cancel</button>
        <button onClick={handleConfirmDelete} >Confirm</button>
    </div> : <div>
        <button onClick={handleClickEdit} >{inEditMode ? 'Stop Editing' : 'Edit'}</button>
        {inEditMode ? null : <button onClick={handleClickDelete} >Delete</button>}
    </div>
    
    let userButtons = madeByUser ? buttons : null



    function handleClickAddEmoji() {
        setDisplayEmojis(!displayEmojis)
    }

    let displayEmojisSelector = displayEmojis ? <GithubSelector onSelect={handleSelectReaction} /> : null


    //function to avoid re-reaction more than once

    function handleSelectReaction(e) {
        let includesReact = reactions.map(reaction => (reaction.emoji === e) && (reaction.by === user.username)).includes(true)
        if (!includesReact) {
            let reaction = {
                emoji: e,
                user_id: user.id, 
                review_id: review.id
            }
            axios.post('/reactions', reaction)
            .then(r => {
                setReactions([...reactions, r.data])
            })
        }
    }

    function handleRemoveReaction(e) {
        let reactionToDelete = {
            emoji: e,
                user_id: user.id, 
                review_id: review.id
        }
        axios.post('/removereaction', reactionToDelete)
        .then(r => {
            let filteredCounters = reactions.filter(reaction => reaction.id !== r.data.id)
            setReactions(filteredCounters)
        })
    }


    return (
        <div className='userReviewCard' >
            <hr></hr>
            <div className='userReviewId' >
                <div className='userReviewTitle' > <span> {review.user.username}</span> - <span>{review.rating} ★ </span>
                    {userButtons}
                </div>
                <div className='userReviewDate'> {review.date}</div>
            </div>
            <div className='userReviewText'> {review.text} </div>
            <div className='reactionCounter' >
                <h5> Reactions: </h5>
                <SlackCounter onAdd={handleClickAddEmoji} counters={reactions} onSelect={handleRemoveReaction} />
            </div>
            {displayEmojisSelector}
        </div>
    )
}
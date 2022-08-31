import { GithubSelector, SlackCounter } from '@charkour/react-reactions';
import axios from 'axios';
import { useState } from 'react';
import { useNavigate } from 'react-router-dom';

export default function BookReview({ review, user, madeByUser, bookReviews, setBookReviews, handleClickEdit, inEditMode, onProfile }) {

    let [counters, setCounters] = useState(review.reactions)

    let [displayEmojis, setDisplayEmojis] = useState(false)

    let [clickedDelete, setClickedDelete] = useState(false)

    let navigate = useNavigate()

    function handleClickProfile() {
        navigate('/profile/' + review.user.username)
    }


    let reactions = counters.map(reaction => {
        return {
            "emoji": reaction.emoji,
            "by": reaction.user.username
        }
    })


    function handleClickDelete() {
        setClickedDelete(!clickedDelete)
    }

    function handleConfirmDelete() {
        let reviewToDelete = { 'id': review.id } // the key of id has the value of review.id
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
    let buttons = clickedDelete ? <>
        <div> Are you sure? </div>
        <button onClick={handleClickDelete} >Cancel</button>
        <button onClick={handleConfirmDelete} >Confirm</button>
    </> : <>
        <button onClick={handleClickEdit} >{inEditMode ? 'Stop Editing' : 'Edit'}</button>
        {inEditMode ? null : <button onClick={handleClickDelete} >Delete</button>}
    </>

    let userButtons = madeByUser && !onProfile ? buttons : null



    function handleClickAddEmoji() {
        setDisplayEmojis(!displayEmojis)
    }

    let displayEmojisSelector = displayEmojis ? <GithubSelector onSelect={handleSelectReaction} /> : null


    //function to avoid re-reaction more than once

    function handleSelectReaction(e) {
        let includesReact = reactions.map(reaction => (reaction.emoji === e) && (reaction.by === user.username)).includes(true)
        if (!includesReact) {
            let count = {
                emoji: e,
                user_id: user.id,
                review_id: review.id
            }
            axios.post('/reactions', count)
                .then(r => setCounters([...counters, r.data]))
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
                let filteredCounters = counters.filter(reaction => reaction.id !== r.data.id)
                setCounters(filteredCounters)
            })

    }

    let displayBookTitle = onProfile ? review.book_name + ' - ' + review.book_author : ''

    function handleClickBookTitle() {
        navigate('/book/' + review.book_id)
    }

    let reactionsTypeCount = new Set(reactions.map(reaction=>reaction.emoji)).size

    let numbers = {
        '0':'zero',
        '1':'one',
        '2':'two',
        '3':'three',
        '4':'four',
        '5':'five',
        '6':'six'
    }
    let counterClass = (madeByUser ? "reactionCounter madebyuser" : "reactionCounter") + ' ' + numbers[reactionsTypeCount]

    return (
        <div className='userReviewCard' >
            <hr></hr>
            <div className='userReviewId' >
                <div className='userReviewTitle' ><img className='reviewProfile' src={review.user.profile_picture} alt='' /> <span className='reviewUser'  onClick={handleClickProfile} > {review.user.username}</span> <div> - </div>  <div className='allStars'> {'★'.repeat(review.rating) }  </div>
                    {userButtons}
                </div>
                <div className="userReviewBookID" onClick={handleClickBookTitle}>{displayBookTitle}</div>
                <div className='userReviewDate'> {review.date}</div>
            </div>
            <div className='userReviewText'> {review.text} </div>
            <div className={counterClass} >
                <h5> Reactions: </h5>
                <SlackCounter onAdd={handleClickAddEmoji} counters={reactions} onSelect={handleRemoveReaction} />
            </div>
            {displayEmojisSelector}
        </div>
    )
}
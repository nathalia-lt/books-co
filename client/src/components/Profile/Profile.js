import axios from "axios"
import { useEffect, useState } from "react"
import { useParams } from "react-router-dom"
import BookReview from "../BookReview/BookReview"
import BookCard from "../BookCard/BookCard"

export default function Profile({ user, setUser }) {
    let [profileUser, setProfileUser] = useState({})
    let [profileReviews, setProfileReviews] = useState([])
    let [profileShelves, setProfileShelves] = useState([])
    let [clickedEdit, setClickedEdit] = useState(false)

    //Edit
    const [newUsername, setNewUsername] = useState(user.username ? user.username : '')
    const [firstName, setFirstName] = useState(user.username ? user.first_name : '')
    const [lastName, setLastName] = useState(user.username ? user.last_name : '')
    const [password, setPassword] = useState(user.username ? user.last_name : '')
    const [image, setImage] = useState(user.username ? profileUser.profile_picture : '')

    function handleClickEdit() {
        setClickedEdit(!clickedEdit)
        if (clickedEdit) {
            setNewUsername(user.username)
            setFirstName(user.first_name)
            setLastName(user.last_name)
            setImage(user.profile_picture)
        }
    }

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
                console.log(res3.data)
                setNewUsername(res1.data.username)
                setFirstName(res1.data.first_name)
                setLastName(res1.data.last_name)
                setImage(res1.data.profile_picture)
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
                            <div className='bookAuthor'>There are no Books in This Shelf</div>
                        </div>
                    </div>
                </div>}
            </div>
        )
    })

    let profileInformation = <>
        <img src={profileUser.profile_picture} />
        <h1>{profileUser.first_name} {profileUser.last_name} ({profileUser.username})</h1>
    </>

    let editingProfileInformation = <div className="inputCard">
        <div className="inputRow">

            <div className="inputColumn">
                <div>First Name:</div>
                <input type='text' className='userInfoInput' placeholder="First Name" value={firstName} onChange={(e) => { setFirstName(e.target.value) }} />

            </div>
            <div className="inputColumn">
                <div>Last Name:</div>
                <input type='text' className='userInfoInput' placeholder="Last Name" value={lastName} onChange={(e) => { setLastName(e.target.value) }} />

            </div>
            <div className="inputColumn">
                <div>Username:</div>
                <input type='text' className='userInfoInput' placeholder="Username" value={newUsername} onChange={(e) => { setNewUsername(e.target.value) }} />
            </div>
            {/* <input type='text' placeholder="Password" value={password} onChange={(e)=>{setPassword(e.target.value)}}/> */}
        </div>
        <div className="inputRow">
            <div className="inputColumn url">
                <div>Image URL:</div>
                <input type='url' className='userInfoInput' placeholder="Image Link" value={image} onChange={(e) => { setImage(e.target.value) }} />
            </div>
        </div>

    </div>


    let yourProfile = profileUser.id === user.id

    function handleSubmitChanges(e) {
        e.preventDefault();

        let updatedDetails = {}

        if (newUsername === '' || newUsername === user.username) {
            setNewUsername(user.username)
        } else {
            updatedDetails['username'] = newUsername
        }

        if (firstName === '' || firstName === user.first_name) {
            setFirstName(user.first_name)
        } else {
            updatedDetails['firstName'] = firstName
        }

        if (lastName === '' || lastName === user.last_name) {
            setLastName(user.last_name)
        } else {
            updatedDetails['lastName'] = lastName
        }

        if (image === '' || image === user.profile_picture) {
            setImage(user.profile_picture)
        } else {
            updatedDetails['profile_picture'] = image
        }

        axios.patch('/users/' + user.id, updatedDetails)
            .then(r => {
                setUser(r.data)
                setProfileUser(r.data)
                alert('Your account has been updated!')
            })
            .catch(function (error) {
                if (error.response) {
                    console.log(error.response.data.errors);
                    let msg = '';
                    error.response.data.errors.map(error => { msg += error + '\n' })
                    alert(msg)
                } else if (error.request) {
                    console.log(error.request);
                } else {
                    console.log('Error', error.message);
                }
            });
    }


    return (
        <div className='profileContainer'>
            <div className="profileCardTop">
                <div className="north">
                    <div className="profilecardtitle">
                        {clickedEdit ? editingProfileInformation : profileInformation}
                        {clickedEdit ? <button onClick={handleSubmitChanges}>Submit Changes</button> : null}
                        {yourProfile ? <button onClick={handleClickEdit}>{clickedEdit ? 'Stop Editing' : 'Edit Profile'}</button> : null}
                    </div>
                    <div className="northLower">
                        <div className="profilecardsubtitle"> a User since: {profileDateMSG}</div>
                    </div>
                    <div></div>
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
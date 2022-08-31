import axios from "axios"
import { useEffect, useState } from "react"
import { useNavigate, useParams } from "react-router-dom"
import BookContainer from "../BookContainer/BookContainer"

export default function BookClub({ user, setUser, bookClubs, setBookClubs, userBookClubs, setUserBookClubs }) {
    let navigate = useNavigate()
    let [bookClub, setBookClub] = useState({})
    let [clubUsers, setClubUsers] = useState([])
    let [clickedEdit, setClickedEdit] = useState(false)
    let [clickedDelete, setClickedDelete] = useState(false)

    const [newName, setNewName] = useState(bookClub.name ? bookClub.name : '')
    const [image, setImage] = useState(bookClub.image ? bookClub.image : '')
    const [newDescription, setNewDescription] = useState(bookClub.description ? bookClub.description : '')

    function handleDeleteClick() {
        setClickedDelete(!clickedDelete)
    }

    function handleClickCancel() {
        setClickedDelete(false)
    }

    function handleClickEdit() {
        setClickedDelete(false)
        setClickedEdit(!clickedEdit)
        if (clickedEdit) {
            setNewName(bookClub.name)
            setImage(bookClub.image)
        }
    }

    let yourClub = bookClub.host ? bookClub.host.id === user.id : false

    let params = useParams()
    let id = params.id

    useEffect(() => {
        let bookClubReq = axios.get('/bookclubs/' + id)
        let clubUsersReq = axios.post('/bookclubusers', { id: id })
        axios.all([bookClubReq, clubUsersReq])
            .then(axios.spread((res1, res2) => {
                setBookClub(res1.data)
                setClubUsers(res2.data)
            }))

    }, [id])

    let clubInformation = <>
        <img src={bookClub.image} />
        <h1>{bookClub.name}</h1>
    </>

    let editClubInfoTop = <div className="inputCard bookClubPage">
        <div className="inputRow">
            <div className="inputColumn url">
                <div>Image URL:</div>
                <input type='url' className='userInfoInput' placeholder="Image Link" value={image} onChange={(e) => { setImage(e.target.value) }} />
            </div>
        </div>
        <div className="inputRow">
            <div className="inputColumn">
                <div>Name:</div>
                <input type='text' className='userInfoInput' placeholder="Name" value={newName} onChange={(e) => { setNewName(e.target.value) }} />
            </div>
        </div>
        <div className="inputRow">
            <div className="inputColumn descript">
                <div>Description:</div>
                <input type='text' className='userInfoInput' placeholder="Description" value={newDescription} onChange={(e) => { setNewDescription(e.target.value) }} />
            </div>
        </div>
    </div>

    let clubCreationDate = new Date(bookClub.created_at)
    let clubDateMSG = clubCreationDate.toDateString().slice(4,)

    function handleSubmitChanges(e) {
        e.preventDefault();

        let updatedDetails = {}

        if (newName === '' || newName === bookClub.name) {
            setNewName(bookClub.name)
        } else {
            updatedDetails['name'] = newName
        }

        if (image === '' || image === bookClub.image) {
            setImage(bookClub.image)
        } else {
            updatedDetails['image'] = image
        }

        if (newDescription === '' || newDescription === bookClub.description) {
            setNewDescription(bookClub.description)
        } else {
            updatedDetails['description'] = newDescription
        }

        axios.patch('/bookclubs/' + id, updatedDetails)
            .then(r => {
                setBookClub(r.data)
                setClickedEdit(false)
                alert('Your bookclub has been updated!')
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


    let users = clubUsers.length ? clubUsers.map(clubUser => clubUser.user) : []
    let inClub = users.map(user => user.id).includes(user.id)

    let displayShelves = users.map(user => {
        function handleClickProfile() {
            navigate('/profile/' + user.username)
        }
        return (
            <div className="profileShelfBookCard bookClubUser">
                <img src={user.profile_picture} />
                <div className="profileShelfBookCardTitle clubUserCard" onClick={handleClickProfile}>{user.username}</div>
                <div className="profileShelfBookCardSubTitle" >{user.first_name} {user.last_name}</div>
            </div>
        )
    })

    let books = bookClub.books ? bookClub.books : []

    let booksToDisplay = <div className="bookclubshelfrow">
        <BookContainer
            books={books} />
    </div>

    let host = bookClub.host ? bookClub.host : {}

    function handleClickMembershipButton() {
        if (inClub) {
            let clubUserId = userBookClubs.find(clubUser => clubUser.bookclub.id == id).id
            axios.post('/removeclubuser', { "id": clubUserId })
                .then(r => {
                    let updatedClubUsers = clubUsers.filter(clubUser => clubUser.id != r.data.id)
                    let updatedUserBookClubs = userBookClubs.filter(clubUser => clubUser.id != r.data.id)
                    setUserBookClubs(updatedUserBookClubs)
                    setClubUsers(updatedClubUsers)
                    alert('You have left ' + bookClub.name + '.')
                })
        } else {
            axios.post('/clubusers', {
                "bookclub_id": id,
                "user_id": user.id
            })
                .then(r => {
                    setClubUsers([...clubUsers, r.data])
                    setUserBookClubs([...userBookClubs, r.data])
                    alert('You have joined ' + bookClub.name + '!')
                })
        }
    }
    let buttonOptions = clickedDelete ? <div className="bookClubDescription">
        <span className="reviewbuttonlabel">Are you sure?</span>
        <button onClick={handleClickCancel}>Cancel</button>
        <button onClick={handleConfirmDelete}>Confirm</button>
    </div> : <div>
        {yourClub ? <button onClick={handleClickEdit}>{clickedEdit ? 'Stop Editing' : 'Edit Information'}</button> : null}
        {yourClub && !clickedEdit ? <button onClick={handleDeleteClick}>Delete Club</button> : null}
        {yourClub ? null : <button onClick={handleClickMembershipButton}>{inClub ? 'Leave Club' : 'Join Club'}</button>}
    </div>
    
    let bookClubButtons = inClub ? buttonOptions : <button onClick={handleClickMembershipButton}>{inClub ? 'Leave Club' : 'Join Club'}</button>

    let displayBookClubButtons = user.username ? bookClubButtons : null

    function handleConfirmDelete() {
        let bookClubToDelete = { "id": id }
        axios.post('/removebookclub', bookClubToDelete)
            .then(r => {
                let updatedBookClubs = bookClubs.filter(club => club.id != Number(id))
                let clubUserId = userBookClubs.find(clubUser => clubUser.bookclub.id == id).id
                let updatedUserBookClubs = userBookClubs.filter(clubs => clubs.id !== clubUserId)
                setBookClubs(updatedBookClubs)
                setUserBookClubs(updatedUserBookClubs)
                alert(bookClub.name + ' has been deleted!')
                setClickedDelete(false)
                navigate('/community')
            })
    }
    
    return (
        <div className='profileContainer bookClubContainer'>
            <div className="profileCardTop">
                <div className="north">
                    <div className="profilecardtitle">
                        {clickedEdit ? editClubInfoTop : clubInformation}
                        {clickedEdit ? <button onClick={handleSubmitChanges}>Submit Changes</button> : null}
                    </div>
                    {clickedEdit ? null : <div className="northLower">
                        <div className="bookClubDescription"><span>Host:</span> {host.first_name} {host.last_name} {'(' + host.username + ')'}</div>
                        <div className="bookClubDescription"><span>Description:</span> {bookClub.description}</div>
                        <div className="bookClubDescription"><span>Since:</span> {clubDateMSG}</div>
                    </div>}
                    <div className="bookClubButtons">
                        {displayBookClubButtons}
                    </div>

                </div >
                <div className="south bookClub">
                    <h3>Users: {bookClub.clubusers ? clubUsers.length : 0}</h3>
                    <div className="profileDisplayAllShelves users">
                        {displayShelves}
                    </div>
                </div>
            </div >
            <div className="profileCardBottom clubCardBottom">
                <div className="bookClubcontainer">
                    <h2>Reading List:</h2>
                    {booksToDisplay}
                </div>
            </div >
        </div>
    )
}
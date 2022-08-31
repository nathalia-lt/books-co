import axios from "axios";
import { useEffect, useState } from "react";
import BookClubCard from "../BookClubCard/BookClubCard";
import SideBar from "../Sidebar/Sidebar";

export default function Community({ user, setUser, bookClubs, setBookClubs, userBookClubs, setUserBookClubs }) {
    document.title = 'Scholar - Book Clubs'
    let [search, setSearch] = useState('')
    function handleSearchChange(e) {
        setSearch(e.target.value)
    }
    let [clickedCreate, setClickedCreate] = useState(false)
    function handleClickCreate() {
        setClickedCreate(!clickedCreate)
    }
    let [newImage, setNewImage] = useState('')
    let [newName, setNewName] = useState('')
    let [newDescription, setNewDescription] = useState('')

    useEffect(() => {
        let bookClubsReq = axios.get('/bookclubs')
        axios.all([bookClubsReq,])
          .then(axios.spread((res1) => {
            setBookClubs(res1.data)
          }))
      }, [])

    let bookClubsToDisplay = bookClubs.filter(club => club.name.toLowerCase().includes(search.toLowerCase())).sort((a, b) => a.name.toLowerCase().localeCompare(b.name.toLowerCase())).map(club => {
        return (
            <BookClubCard
                club={club}
            />
        )
    })

    function handleSubmit() {
        let newBookClub = {}
        newBookClub['host'] = user
        if (newName) { newBookClub['name'] = newName }
        if (newImage) { newBookClub['image'] = newName }
        if (newDescription) { newBookClub['description'] = newDescription }
        axios.post('/bookclubs', newBookClub)
            .then(r => {
                setBookClubs([...bookClubs, r.data])
                let newClubUser = {
                    id: r.data.clubusers[0].id,
                    user: user,
                    bookclub: r.data
                }
                setUserBookClubs([...userBookClubs, newClubUser])
                setClickedCreate(false)
                setNewImage('')
                setNewName('')
                setNewDescription('')
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

    let newBookClubInputCard = <div className="bookClubCard addNew">
        <img className='addNew' src={"https://img.icons8.com/ios-glyphs/100/000000/plus--v1.png"} />
        <input
            type='url'
            placeholder="Image Link"
            value={newImage}
            onChange={(e) => { setNewImage(e.target.value); }} />
        <input
            type='text'
            placeholder="Name"
            value={newName}
            onChange={(e) => { setNewName(e.target.value); }} />
        <hr></hr>
        <div className="clubCardBottom">
            <input
                type='text'
                placeholder="Description"
                value={newDescription}
                onChange={(e) => { setNewDescription(e.target.value); }} />
            <button onClick={handleSubmit}>Submit</button>
            <button onClick={handleClickCreate}>Cancel</button>
        </div>
    </div>;

    let newBookClubCard = user.username ? <div className="bookClubCard addNew">
        <img className='addNew' src={"https://img.icons8.com/ios-glyphs/100/000000/plus--v1.png"} />
        <h2>New Club</h2>
        <hr></hr>
        <div className="clubDescription">Click below to create a new book club!</div>
        <button onClick={handleClickCreate}>Create</button>
    </div> : null

    let displayCreateNewBookClub = clickedCreate ? newBookClubInputCard :
        newBookClubCard;

    return (
        <div className="mainContainer">
            <SideBar
                user={user}
                setUser={setUser}
                pageData={{}}
                page={'community'}
                userBookClubs={userBookClubs}
            />
            <div className="communityDisplay">
                <div className="commContainer">
                    <div className="communityTitle">
                        <h1>Book Clubs:</h1>
                        <input
                            className="searchBar"
                            type='text'
                            placeholder="Search by Name"
                            value={search}
                            onChange={handleSearchChange}
                        />
                    </div>
                    <div className="clubsContainer">
                        {displayCreateNewBookClub}
                        {bookClubsToDisplay}
                    </div>
                </div>

            </div>

        </div>
    )
}
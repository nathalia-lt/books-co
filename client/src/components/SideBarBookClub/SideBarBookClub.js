import axios from "axios"
import { useState } from "react"
import { useNavigate } from "react-router-dom"

export default function SideBarBookClub({ club, setUser, book, page, userBookClubs, setUserBookClubs }) {
    let navigate = useNavigate()
    let inClub = club.books.length ? club.books.map(clubBook => clubBook.id).includes(book.id) : false

    let [clickedDropDown, setClickedDropDown] = useState(false)

    function handleClickRow() {
        setClickedDropDown(!clickedDropDown)
    }

    function handleClickVisit() {
        navigate('/bookclub/' + club.id)
    }

    let showOptions = clickedDropDown && <div>
        <div className="sideBarBookClubContent">
            <div className="clubOption">
                <div onClick={handleClickVisit}>Visit Club Page</div>
            </div>
            <div className="clubOption">
                {page === 'bookpage' && <div onClick={handleSubmit}>{inClub ? 'Remove from' : 'Add to'} Reading List</div>}
            </div>
        </div>
    </div>


    let dropDownTriangle = clickedDropDown ? '▼' : '▲'

    function handleSubmit() {
        if (inClub) {
            let clubUpdate = {
                "club_id": club.id,
                "book_id": book.id,
            }
            axios.post('/removebookfromclub', clubUpdate)
                .then(r => {
                    let updatedBookClubs = userBookClubs.filter(clubuser => clubuser.id !== r.data.id)
                    setUserBookClubs([...updatedBookClubs, r.data])
                })
            alert('This book has been removed from the reading list of ' + club.name)
        } else {
            let clubUpdate = {
                "club_id": club.id,
                "book": book,
            }
            axios.post('/addbooktoclub', clubUpdate)
                .then(r => {
                    let updatedBookClubs = userBookClubs.filter(clubuser => clubuser.id !== r.data.id)
                    setUserBookClubs([...updatedBookClubs, r.data])
                })
            alert('This book has been added to the reading list for ' + club.name)
        }
    }

    return (
        <div className="clubCard">
            <div className="clubrow" onClick={handleClickRow}>
                <div className="clubname">{club.name}</div>
                <div className='dropdown'>{dropDownTriangle}</div>
            </div>
            {showOptions}
        </div>
    )
}
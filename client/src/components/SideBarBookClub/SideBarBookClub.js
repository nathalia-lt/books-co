import { useState } from "react"
import axios from "axios"



export default function SideBarBookClub( {club, book, setUser} ){

    let inClub = club.books.length ? club.books.map(shelfBook => shelfBook.id).includes(book.id) : false
    let [clickedDropDown, setClickedDropDown] = useState(false)

    function handleClickClub(){
        setClickedDropDown(!clickedDropDown)
    }

    let showOptions = clickedDropDown ? <div>  <li>Go to page </li> <li onClick={handleSubmit}> {inClub ? 'Remove from':'Add to'} Reading List </li> </div> : null

    let dropDownTriangle = clickedDropDown ? '▾' : '▴'

    function handleSubmit() {
        if (inClub) {
            let clubUpdate = {
                "club_id": club.id,
                "book_id": book.id,
            }
            axios.post('/removebookfromclub', clubUpdate)
                .then(r => { 
                    setUser(r.data)
                })
            alert('This book has been removed from ' + club.name + '\s reading list.')
        } else {
            let clubUpdate = {
                "club_id": club.id,
                "book": book,
            }
            axios.post('/addbooktoclub', clubUpdate)
                .then(r => {
                    setUser(r.data)
                })
            alert('This book has been added to ' + club.name + '\s reading list')
        }
    }


    return(
        <div className="clubCard">
        <div className='clubRow' onClick={handleClickClub} >
            <div className='clubName' > {club.name} </div>
            <div className='dropDown'> {dropDownTriangle} </div>
        </div>
        {showOptions}
    </div>
    )
}
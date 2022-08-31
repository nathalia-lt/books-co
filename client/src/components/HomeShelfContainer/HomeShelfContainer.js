import { useState } from "react";
import BookContainer from "../BookContainer/BookContainer";
import axios from 'axios'
import BookClubCard from "../BookClubCard/BookClubCard";
// i want to be able to click the name of each shelf to toggle displaying the books in that shelf 
// I need a variable with state to be able to do this because you need to be able to dynamically update a variable on demand
// you can only use 'useState' or other react hooks (useEffect, etc) directly inside of a React Component (function with a capital first letter) 
// you can not use 'useState' or other react hooks inside of a function (or .map, etc) made inside of a component 
// to get around this issue,  I had to create a completely new component so that I can create a variable with state for every shelf passed into this component


export default function HomeShelfContainer({ shelf, type,userShelves, setUserShelves, idx }) {
    let [clickedTitle, setClickedTitle] = useState(true)
    function handleClickShelfName() {
        setClickedTitle(!clickedTitle)
    }
    let [clickedDelete, setClickedDelete] = useState(false)

    function handleDeleteClick() {
        setClickedDelete(!clickedDelete)
    }

    function handleClickCancel() {
        setClickedDelete(false)
    }


    let displayBookClub = type === 'club' ? <BookClubCard club={shelf} /> : null

    let displayBooksInShelf = clickedTitle ? <div className="homeshelfrow">
        {displayBookClub}
        <BookContainer
            books={shelf.books}
        />
    </div> : null;

    let dropDownTriangle = clickedTitle ? '▼' : '▲'


    let buttonOptions = clickedDelete ? <div className="homeShelfButtons">
        <span className="reviewbuttonlabel">Are you sure?</span>
        <button onClick={handleClickCancel}>Cancel</button>
        <button onClick={handleConfirmDelete}>Confirm</button>
    </div > : <button onClick={handleDeleteClick}>Delete Shelf</button>


    function handleConfirmDelete() {
        let shelfToDelete = { "id": shelf.id }
        axios.post('/removeshelf', shelfToDelete)
            .then(r => {
                let updatedUserShelves = userShelves.filter(userShelf=> userShelf.id !== shelf.id)
                setUserShelves(updatedUserShelves)
                alert(shelf.name + ' has been deleted!')
                setClickedDelete(false)
            })
    }

    let buttonsToDisplay = type === 'shelf' && idx > 3 && clickedTitle ? buttonOptions : null
    return (
        <div className="homeshelfcontainer">
            <div className="homeShelfTitle">
                <h2 onClick={handleClickShelfName}>{shelf.name}: <span>{dropDownTriangle}</span></h2>
                {buttonsToDisplay}
            </div>
            {displayBooksInShelf}
        </div>
    )
}
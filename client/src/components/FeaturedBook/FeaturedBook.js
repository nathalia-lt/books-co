import { useState, useEffect } from "react"
import axios from "axios"

export default function FeaturedBook( {book, user, setUser, userShelves, setUserShelves} ){

    useEffect(()=>{userShelves.sort((a,b)=>a.id-b.id)},[userShelves])

    let [selectedStatus, setSelectedStatus] = useState(-1)
    function handleStatusChange(e) {
        setSelectedStatus(e.target.value)
    }
    let [displayNewShelfForm, setDisplayNewShelfForm] = useState(false)
    let [selectedShelf, setSelectedShelf] = useState(-1)
    function handleShelfChange(e) {
        setDisplayNewShelfForm(false)
        setSelectedShelf(e.target.value)
    }

    let [newShelfName, setNewShelfName] = useState('')
    function handleNewShelfNameChange(e) {
        setNewShelfName(e.target.value)
    }


    let bookCover = book.volumeInfo.imageLinks ? book.volumeInfo.imageLinks.thumbnail : 'https://www.lesprecepteurs.fr/wp-content/uploads/2017/03/no-image-found.jpg'

    let synopsis =  book.volumeInfo.description ? book.volumeInfo.description.replace(/<(?:"[^"]"['"]|'[^']'['"]|[^'">])+>/g, '') : 'No synopsis available'

    //to shrink the synopsis when it is too big

    //what is my conditional? Is relate do the length
    //if it is less than 300 then give me the whole synopsis otherwise shorten it and use ...

    let shortenedBookSynopsis = synopsis.length < 1000 ? synopsis : synopsis.slice(0,1000) + '...'

    let dateTime = new Date(book.volumeInfo.publishedDate) //new date takes in strings, I need to use new date class
    let publishedYear = dateTime.getFullYear()

    let language = book.volumeInfo.language

    let pageCount = book.volumeInfo.pageCount

    let bookTitle = book.volumeInfo.title

    let bookSubTitle = book.volumeInfo.subtitle

    let bookAuthor = book.volumeInfo.authors

    //-------------------------------------------------------------

    //when I hover over the synopsis it expends to the full version


    //I make a variable useState to identify when I am hover or not

    let [synopsisHover, setSynopsisHover] = useState(false)

    function handleOnHover(){
        setSynopsisHover(true)
    }

    function handleOffHover(){
        setSynopsisHover(false)
    }

    //what is my condition? when I hover over is my condition
    //because synopsisHover will always going to be false when Im not hover over the synopsis

    let showSynopsis = synopsisHover ? synopsis : shortenedBookSynopsis 

    //when I hover over show the full synopsis for books over 1000 car
    let displayFullSynopsis = synopsisHover && synopsis.length > 1000 ? <div onMouseOver={handleOnHover} onMouseOut={handleOffHover} className='fullSynopsis'> 
    <h3> Synopsis: </h3>
    <div>{synopsis} </div>
    </div> : null


// to handle changing the status
    // identify the the non selected status options and make three separate posts requests to remove the book from them 
    function handleStatusSubmit() {
        if (selectedStatus == -1) {

        } else {
            let shelf = statusShelves[selectedStatus]
            let inShelf = shelf.books.map(shelfBook => shelfBook.id).includes(book.id)
            let ids = [0, 1, 2, 3]
            if (inShelf) {
                ids.splice(selectedStatus, 1)
                let shelfUpdate = {
                    "shelf_id": shelf.id,
                    "book_id": book.id,
                }
                axios.post('/removebook', shelfUpdate)
                    .then(r => {
                        let updatedShelves = userShelves
                        updatedShelves[selectedStatus] = r.data
                        setUserShelves(updatedShelves)
                    })
                    alert('This book has been removed from your '+ shelf.name + ' shelf')
            } else {

                let shelfUpdate = {
                    "shelf_id": shelf.id,
                    "book": book,
                }
                axios.post('/addbook', shelfUpdate)
                    .then(r => {
                        let updatedShelves = userShelves
                        updatedShelves[selectedStatus] = r.data
                        setUserShelves(updatedShelves)
                    })
                    alert('This book has been added to your '+ shelf.name + ' shelf')
                ids.splice(selectedStatus, 1)
                for (let id of ids) {
                    let otherShelf = statusShelves[id]
                    let inOtherShelf = otherShelf.books.map(shelfBook => shelfBook.id).includes(book.id)
                    if (inOtherShelf) {
                        let shelfUpdate = {
                            "shelf_id": otherShelf.id,
                            "book_id": book.id,
                        }
                        axios.post('/removebook', shelfUpdate)
                            .then(r => {
                                let updatedShelves = userShelves
                                updatedShelves[id] = r.data
                                setUserShelves(updatedShelves)
                                console.log(r.data)
                            })
                    }
                }
            }
        }

    }

    function handleShelfSubmit() {
        if (selectedShelf == -1) {
            setDisplayNewShelfForm(true)
        } else {
            const shelfIndex = 4 + Number(selectedShelf)
            let shelf = userShelves[shelfIndex]
            let inShelf = shelf.books.map(shelfBook => shelfBook.id).includes(book.id)
            if (inShelf) {
                let shelfUpdate = {
                    "shelf_id": shelf.id,
                    "book_id": book.id,
                }
                axios.post('/removebook', shelfUpdate)
                    .then(r => {
                        let updatedShelves = userShelves
                        updatedShelves[shelfIndex] = r.data
                        setUserShelves(updatedShelves)
                    })
                    alert('This book has been removed from your '+ shelf.name + ' shelf')
            } else {
                let shelfUpdate = {
                    "shelf_id": shelf.id,
                    "book": book,
                }
                axios.post('/addbook', shelfUpdate)
                    .then(r => {
                        let updatedShelves = userShelves
                        updatedShelves[shelfIndex] = r.data
                        setUserShelves(updatedShelves)
                        console.log(r.data)
                    })
                    alert('This book has been added to your '+ shelf.name + ' shelf')
            }
        }
    }

    function handleAddNewShelfCancel() {
        setDisplayNewShelfForm(false)
    }

    function handleAddNewShelfSubmit() {
        let newShelf = {
            "name": newShelfName,
            "user_id": user.id
        }
        axios.post('/shelves', newShelf)
            .then(r => {
                setUserShelves([...userShelves, r.data])
                console.log(r.data)
            })
        setDisplayNewShelfForm(false)
        setNewShelfName('')
        alert('Your '+ newShelf.name + ' shelf has been created')
    }

    let statusShelves = userShelves.slice(0, 4)
    let listShelves = userShelves.slice(4,)

    let statusShelvesToDisplay = user.username ? (statusShelves.map((shelf, idx) => {
        return shelf.books.map(shelfBook => shelfBook.id).includes(book.id) ? <option value={Number(idx)}>✓ Added to {shelf.name}</option> : <option value={Number(idx)}>{shelf.name}</option>
    })) : null

    let listShelvesToDisplay = user.username ? (listShelves.map((shelf, idx) => {
        return shelf.books.map(shelfBook => shelfBook.id).includes(book.id) ? <option value={Number(idx)}>✓ Added to {shelf.name}</option> : <option value={Number(idx)}>{shelf.name}</option>
    })) : null

    let statusButtonText = selectedStatus == -1 ? 'Add' : userShelves[selectedStatus].books.map(shelfBook => shelfBook.id).includes(book.id) ? 'Remove' : 'Add'
    let shelfButtonText = selectedShelf == -1 ? 'Confirm' : userShelves[4 + Number(selectedShelf)].books.map(shelfBook => shelfBook.id).includes(book.id) ? 'Remove' : 'Add'
    let newShelvesToDisplay = listShelves.length ? listShelvesToDisplay : null
    let newShelfForm = displayNewShelfForm ? <div className='shelfRow'>
        <div>Name:</div>
        <input
            type='text'
            value={newShelfName}
            onChange={handleNewShelfNameChange}
            placeholder='Enter a Shelf Name' />
        <button onClick={handleAddNewShelfSubmit}>Submit</button>
    </div> : null
    let shelfButton = !displayNewShelfForm ? <button onClick={handleShelfSubmit}>{shelfButtonText}</button> : <button onClick={handleAddNewShelfCancel}>Cancel</button>
    let userShelvesOptions = user.username ? <div className='featuredCardBottom'>
        <div className='shelfRow'>
            <div>Status: </div>
            <select onChange={handleStatusChange}>
                <option value={-1}>Options:</option>
                {statusShelvesToDisplay}
            </select>
            <button onClick={handleStatusSubmit} disabled={selectedStatus == -1}>{statusButtonText}</button>
        </div>
        <div className='shelfRow'>
            <div>Add to a Shelf:</div>
            <select onChange={handleShelfChange}>
                <option value={-1}>Create a New Shelf</option>
                {newShelvesToDisplay}
            </select>
            {shelfButton}
        </div>
        {newShelfForm}
    </div> : null



    return(
        <div className='bookPageCard'>
        <div className='bookPageCardSide' >
            <img className='bookPageCardCover' src={bookCover} alt='' />
        </div>
        <div className='bookPageCardMain'>
            <div className='bookPageCardInformation' >
                <div className='bookPageTitle'>{bookTitle}</div>
                <div className='bookPageTitle'>{bookSubTitle}</div>
                <hr></hr>
                <div className="synopsis" onMouseOver={handleOnHover} onMouseOut={handleOffHover}  >{shortenedBookSynopsis}</div>
                {displayFullSynopsis}
                <div className='Author'><b>{bookAuthor} </b></div>
                <hr></hr>
                <div className='bookInfo'><b>Pages:</b> {pageCount}</div>
                <div className='bookInfo'><b>Language:</b> {language} </div>
                <div className='bookInfo' ><b>Publication Year:</b> {publishedYear} </div>
            </div>
            {userShelvesOptions}
        </div>
    </div>
    )
}
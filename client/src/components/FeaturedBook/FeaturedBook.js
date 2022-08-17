import { useState } from "react"

export default function FeaturedBook( {book}){

    let bookCover = book.volumeInfo.imageLinks ? book.volumeInfo.imageLinks.thumbnail : ''

    let synopsis = book.volumeInfo.description.replace(/<(?:"[^"]"['"]|'[^']'['"]|[^'">])+>/g, '')

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
        </div>
    </div>
    )
}
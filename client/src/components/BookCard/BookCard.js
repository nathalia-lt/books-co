import {useState} from "react";


export default function BookCard( {book} ){

    //I need book cover, book title and author to display on the browser
    let bookCover = book.volumeInfo.imageLinks.thumbnail
    //console.log(bookCover)

    //Toda vez que o tittulo e muito grande ele empurra o author pra baixo tirando do card. Para evitar isso, vou fazer a ternary
    let bookTitle = book.volumeInfo.title.length > 34 ? book.volumeInfo.title.slice(0,20)+ '...' : book.volumeInfo.title

    //console.log(bookTitle)
    let bookAuthor = book.volumeInfo.authors[0].length > 25 ? book.volumeInfo.authors[0].slice(0,20)+ '...' : book.volumeInfo.authors[0]

    //console.log(bookAuthor)

    //When I hover shows the full title of my book

    let [displayTitle, setDisplayTitle] = useState(false)

    function handleOnTitleHover(){
        setDisplayTitle(true)
    }

    function handleOffTitleHover(){
        setDisplayTitle(false)
    }

    let bookTitleText =  displayTitle ?  book.volumeInfo.title : bookTitle

    return(
            <div className='bookCard' >
                <div className='bookCardHalf top'>
                <img className='bookCover' src={bookCover} alt='' />
                    </div>
                <div className='bookCardHalf bottom' >
                <div className='bookTitle' onMouseOver={handleOnTitleHover} onMouseOut={handleOffTitleHover} >  {bookTitleText} </div>
                <div className='bookAuthor'> by: {bookAuthor} </div>
                </div>
            </div>
    )
}
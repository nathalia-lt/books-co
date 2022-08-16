import {useState} from "react";
import { useNavigate } from "react-router-dom";


export default function BookCard( {book} ){
    let navigate = useNavigate() //I use useNavigate to send me to a new page
    let [displayTitle, setDisplayTitle] = useState(false)

    //algumas pesquisas nao mostram a capa. Para esconder isso:

    let bookCover = book.volumeInfo.imageLinks ? book.volumeInfo.imageLinks.thumbnail : ''


    //I need book cover, book title and author to display on the browser
    //let bookCover = book.volumeInfo.imageLinks.thumbnail
    //console.log(bookCover)

    //Toda vez que o tittulo e muito grande ele empurra o author pra baixo tirando do card. Para evitar isso, vou fazer a ternary
    let bookTitle = book.volumeInfo.title.length > 25 ? book.volumeInfo.title.slice(0,30)+ '...' : book.volumeInfo.title
    let titleClass = book.volumeInfo.title.length > 25 ?'bookTitle shrunk' : 'bookTitle'
    let displayTitleClass = displayTitle ? 'bookTitle extended' : titleClass


    //console.log(bookTitle)
    let bookAuthor = book.volumeInfo.authors[0].length > 25 ? book.volumeInfo.authors[0].slice(0,20)+ '...' : book.volumeInfo.authors[0]

    //console.log(bookAuthor)

    //When I hover shows the full title of my book


    function handleOnTitleHover(){
        if (book.volumeInfo.title.length > 25){
            setDisplayTitle(true)            
        }
    }

    function handleOffTitleHover(){
        setDisplayTitle(false)
    }

    let bookTitleText =  displayTitle ?  book.volumeInfo.title : bookTitle

    //------------------------------------------------------

    //I want the author to dispper when I hover over the title

    let bookAuthorText = displayTitle ?  '' : bookAuthor

//------------------------------------------------------------
//open a new page 

function handleCoverClick(){
    navigate('/book/' + book.id)
}


    return(
            <div className='bookCard' >
                <div className='bookCardHalf top'>
                <img className='bookCover' src={bookCover} alt=''  onClick={handleCoverClick}  />
                    </div>
                <div className='bookCardHalf bottom' >
                <div className={displayTitleClass} onMouseOver={handleOnTitleHover} onMouseOut={handleOffTitleHover} >{bookTitleText}</div>
                <div className='bookAuthor'>{bookAuthorText}</div>
                </div>
            </div>
    )
}
import { useParams } from "react-router-dom"
import { useEffect, useState } from "react"
import key from "../../key"
import axios from "axios"


export default function BookPage() {

    //Fetching the specific book for the bookPage

    let params = useParams() //take any think that is after the colon ('/book/:id'). after :
    //we are going to use this ID to performance another fetch to give us the information about the book we selected
    console.log(params)
    let id = params.id

    let [pageData, setPageData] = useState({})

    let url = "https://www.googleapis.com/books/v1/volumes/" + id + '?&key=' + key //I took this link API


    useEffect(() => {
        axios.get(url)
            .then(r => setPageData(r.data))
    }, [])

    if (!pageData.volumeInfo) { //if there is no key of volum info on pagedata return null
        return null
    }

    let bookCover = pageData.volumeInfo.imageLinks ? pageData.volumeInfo.imageLinks.thumbnail : ''

    let synopsis = pageData.volumeInfo.description.replace(/<(?:"[^"]"['"]|'[^']'['"]|[^'">])+>/g,'')

    let dateTime = new Date(pageData.volumeInfo.publishedDate) //new date takes in strings, I need to use new date class
    let publishedYear = dateTime.getFullYear()
    
    let language = pageData.volumeInfo.language

    let pageCount = pageData.volumeInfo.pageCount

    let bookTitle = pageData.volumeInfo.title
    
    let bookSubTitle = pageData.volumeInfo.subtitle    
    
    let bookAuthor = pageData.volumeInfo.authors
    console.log(bookAuthor)




    return (
        <div className='mainContainer' >
            <div className='sideBar'  > sidebar</div>
            <div className='display' >
                <div className='bookPageCard'>
                    <div className='bookPageCardSide' >
                        <img className='bookPageCardCover' src={bookCover} alt='' />
                    </div>
                    <div className='bookPageCardMain'> 

                    <div className='bookPageCardInformation' >
                        <div className='bookPageTitle'>{bookTitle}</div>
                        <div className='bookPageTitle'>{bookSubTitle}</div>
                        <hr></hr>
                        <div className="synopsis">{synopsis}</div>
                        <div className='Author'><b>{bookAuthor} </b></div>
                        <hr></hr>
                        <div className='bookInfo'><b>Pages:</b> {pageCount}</div>
                        <div className='bookInfo'><b>Language:</b> {language} </div>
                        <div className='bookInfo' ><b>Publication Year:</b> {publishedYear} </div>
                    </div>
                </div>
                    </div>

            </div>
        </div>
    )
}
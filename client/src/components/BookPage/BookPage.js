import { useParams } from "react-router-dom"
import { useEffect, useState } from "react"
import key from "../../key"
import axios from "axios"
import FeaturedBook from "../FeaturedBook/FeaturedBook"


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




    return (
        <div className='mainContainer' >
            <div className='sideBar'  > sidebar</div>
            <div className='display' >
            <FeaturedBook
            book={pageData}
            />
            </div>
        </div>
    )
}
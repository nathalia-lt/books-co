import { useEffect } from "react";
import { useParams } from "react-router-dom";
import BookContainer from "../BookContainer/BookContainer";
import key from "../../key"
import axios from "axios"



export default function SearchPage( {searchResults, setSearchResults} ){
    let params = useParams()
    let searchTerm = params.searchTerm

    let booksUrl = 'https://www.googleapis.com/books/v1/volumes?q='+searchTerm+'&maxResults=30&printType=books&key=' + key


    useEffect(() => {
        axios.get(booksUrl)
        .then(r => {
                setSearchResults(r.data)
            })
    },[searchTerm]) //wherever we put in the squares brackets, useEffect runs again


    if (!searchResults.items) return null



    return(
        <div className="searchPageContainer">
            <div className='bigSearchCard'> 
            <form>
                <input
                className= 'bigSearch' 
                type= 'text'
                />
            </form>
            <div className='filterRow '> Filters: </div>
            </div>
            <BookContainer
            testData={searchResults}
            />

        </div>
    ) 
}
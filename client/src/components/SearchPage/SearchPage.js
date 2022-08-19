import { useEffect, useState } from "react";
import { useParams } from "react-router-dom";
import BookContainer from "../BookContainer/BookContainer";
import key from "../../key"
import axios from "axios"



export default function SearchPage({ searchResults, setSearchResults }) {
    let params = useParams()
    let searchTerm = params.searchTerm
    
    let booksUrl = 'https://www.googleapis.com/books/v1/volumes?q=' + searchTerm + '&maxResults=30&printType=books&key=' + key


//----------------------------------------------------------------------------------------------

    //Filter by author and genre
    
    let [displayAuthor, setDisplayAuthor] = useState(false)
    let [displayGenre, setDisplayGenre] = useState(false)

    //here I am just tagle to open the text space in my filter
function handleToggleAuthorDisplay(){
    setDisplayAuthor(!displayAuthor)
}

function handleToggleGenreDisplay(){
    setDisplayGenre(!displayGenre)
}



    //-------------------------------------------------------------------------------------------
    //making the filter search work

    let [authorSearch, setAuthorSearch] = useState('')
    let [genreSearch, setGenreSearch] = useState('')

    function handleAuthorChange(event){
        setAuthorSearch(event.target.value)
    }

    function handleGenreChange(event){
        setGenreSearch(event.target.value)
    }
//-----------------------------------------------------------------------

    //I want to make my text space appear when I toggle the option. For it I will make a ternary.
//AM I displaying the author? if i am .... I want tthe text space

let displayAuthorSearchText = displayAuthor ? <input className='searchAuthor'  
value ={authorSearch}
onChange={handleAuthorChange}
type='text'
/> : null

let displayGenreSearchText = displayGenre ? <input className='searchGenre'
value={genreSearch}
onChange={handleGenreChange}
type='text'
/> : null







    useEffect(() => {
        axios.get(booksUrl)
            .then(r => {
                setSearchResults(r.data)
            })
    }, [searchTerm]) //wherever we put in the squares brackets, useEffect runs again


    if (!searchResults.items) return null

//------------------------------------------------------------






    return (
        <div className="searchPageContainer">
            <div className='bigSearchCard'>
                <form>
                    <input
                        className='bigSearch'
                        type='text'
                    />
                </form>
                <div className='filterRow '>
                    <h4>Filters:</h4>
                    <input
                        
                        type='radio'
                        checked={displayAuthor}
                        // it is going to read if it is true or false. If it is true is going to be checked
                        onClick={handleToggleAuthorDisplay}
                    />
                    <div className='authorToDisplay'>Author:</div>
                    {displayAuthorSearchText}

                    <input
                        
                        type='radio'
                        onChecked={displayGenre}
                        onClick={handleToggleGenreDisplay}
                    />
                    <div className='genreToDisplay' >Genre:</div>
                    {displayGenreSearchText}
                </div>
            </div>
            <BookContainer
                testData={searchResults}
            />

        </div>
    )
}
import { useEffect, useState } from "react";
import { useNavigate, useParams } from "react-router-dom";
import BookContainer from "../BookContainer/BookContainer";
import key from "../../key"
import axios from "axios"



export default function SearchPage({ searchResults, setSearchResults }) {
    let params = useParams()
    console.log(params)
    let searchTerm = params.searchTerm
    let authorSearchTerm = params.authorSearchTerm //when Your refresh what you typed does not disapper


    let navigate = useNavigate()


    //----------------------------------------------------------------------------------------------
    //going to storage your search value, when you type in the big search bar

    let [bigSearchTerm, setBigSearchTerm] = useState(searchTerm)
    //I put searchTerm inside of the useState because I dont want what I am searching disapper from the search bar to the big search bar

    function handleBigSearchTermChange(event){
        setBigSearchTerm(event.target.value)
    }




    //Filter by author and genre

    let [clickedAuthor, setClickedAuthor] = useState(authorSearchTerm?true:false) // we need to turn a string into a boolean, for it whe need to do a ternary or !!authorSearchTerm
    let [clickedGenre, setClickedGenre] = useState(false)

    //here I am just tagle to open the text space in my filter
    function handleToggleAuthorDisplay() {
        setClickedAuthor(!clickedAuthor)
    }

    function handleToggleGenreDisplay() {
        setClickedGenre(!clickedGenre)
    }



    //-------------------------------------------------------------------------------------------
    //making the filter search work

    let [authorSearch, setAuthorSearch] = useState(authorSearchTerm)
    let [genreSearch, setGenreSearch] = useState('')

    function handleAuthorChange(event) {
        setAuthorSearch(event.target.value)
    }

    function handleGenreChange(event) {
        setGenreSearch(event.target.value)
    }
    //-----------------------------------------------------------------------

    //I want to make my text space appear when I toggle the option. For it I will make a ternary.
    //AM I displaying the author? if i am .... I want tthe text space

    let displayAuthorSearchText = clickedAuthor ? <input className='searchAuthor'
        value={authorSearch}
        onChange={handleAuthorChange}
        type='text'
    /> : null

    let displayGenreSearchText = clickedGenre ? <input className='searchGenre'
        value={genreSearch}
        onChange={handleGenreChange}
        type='text'
    /> : null



    useEffect(() => {
        let authorSearchText =  authorSearchTerm ? '+inauthor:' + authorSearchTerm : '' 
        let booksUrl = 'https://www.googleapis.com/books/v1/volumes?q=' + searchTerm + authorSearchText + '&maxResults=30&printType=books&key=' + key
        axios.get(booksUrl)
            .then(r => {
                setSearchResults(r.data)
            })
    }, [searchTerm, authorSearchTerm]) //wherever we put in the squares brackets, useEffect runs again


    if (!searchResults.items) return null

    //------------------------------------------------------------

    // an empty string will always going to be false (the search bar when there is nothing typed in)

    //Ternary: qual a minha condicao? quando eu clico no author e eu digito na barra de procura, both have to be true
    //in author it is from the api doc (performing search)




    function handleBigSearchSubmit(e) {
        e.preventDefault()
        //IF we open the filter bar for either author or genre and we type somenthing in. We want to add those in our search
        let authorSearchText = clickedAuthor && authorSearch ? '+inauthor:' + authorSearch : '' 
        let genreSearchText = clickedGenre && genreSearch ? '+subject:' + genreSearch : ''

        let booksUrl = 'https://www.googleapis.com/books/v1/volumes?q='+ bigSearchTerm + authorSearchText + genreSearchText +'&maxResults=30&printType=books&key=' + key
        console.log(booksUrl)
        axios.get(booksUrl)
        .then(r => {
            if (r.data.items){
                setSearchResults(r.data)
                let authorSearchParams = clickedAuthor && authorSearch ? '/' + authorSearch : '' 

                navigate('/search/'+ bigSearchTerm + authorSearchParams)
            } else{
            alert('No results found')
        }
        })
    }




    return (
        <div className="searchPageContainer">
            <div className='bigSearchCard'>
                <form onSubmit={handleBigSearchSubmit} >
                    <input
                        className='bigSearch'
                        type='text'
                        value={bigSearchTerm}
                        onChange={handleBigSearchTermChange}
                    />
                </form>
                <div className='filterRow '>
                    <h4>Filters:</h4>
                    <input

                        type='radio'
                        checked={clickedAuthor}
                        // it is going to read if it is true or false. If it is true is going to be checked
                        onClick={handleToggleAuthorDisplay}
                    />
                    <div className='authorToDisplay'>Author:</div>
                    {displayAuthorSearchText}

                    <input

                        type='radio'
                        checked={clickedGenre}
                        onClick={handleToggleGenreDisplay}
                    />
                    <div className='genreToDisplay' >Genre:</div>
                    {displayGenreSearchText}
                </div>
            </div>
            <BookContainer
                books={searchResults}
            />

        </div>
    )
}
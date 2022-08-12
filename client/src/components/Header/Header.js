import { Axios } from "axios"
import React, { useState } from "react"
import key from "../../key"
import axios from "axios"



export default function Header( {setTestData} ) {

    let [searchTerm, setSearchTerm] = useState('')
    
    let booksUrl = 'https://www.googleapis.com/books/v1/volumes?q='+searchTerm+'&printType=books&key=' + key

    function handleSearchChange(event){
        setSearchTerm(event.target.value)
    }

    function handleSearchSubmit(e){
        e.preventDefault()
        axios.get(booksUrl)
        .then(r => setTestData(r.data))
    }


    return (
        <div className='header'>
            <div> Clubs </div>
            <div> Header </div>
            <form onSubmit={handleSearchSubmit} >
                <input className='searchBar'
                type= 'text'
                value={searchTerm}
                onChange={handleSearchChange}
                placeholder= 'Search'

                />
                </form>
        </div>
    )
}
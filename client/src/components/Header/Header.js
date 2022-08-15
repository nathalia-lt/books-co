import { Axios } from "axios"
import React, { useState } from "react"
import key from "../../key"
import axios from "axios"
import { useNavigate } from "react-router-dom";




export default function Header( {setTestData} ) {
    let navigate = useNavigate() //I use useNavigate to send me to a new page

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

    //----------------------------------------
    //I will make a function for when I click on the title I am sent back to the home page

    function handleHomeClick(){
        navigate('/')
    }

    return (
        <div className='header'>
            <div> Clubs </div>
            <div onClick={handleHomeClick} className= 'title'> Header </div>
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
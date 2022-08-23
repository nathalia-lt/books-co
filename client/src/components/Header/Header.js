import { Axios } from "axios"
import React, { useState } from "react"
import key from "../../key"
import axios from "axios"
import { useNavigate } from "react-router-dom";


export default function Header({ setSearchResults, user, setUser }) {
    let navigate = useNavigate() //I use useNavigate to send me to a new page

    let [searchTerm, setSearchTerm] = useState('')

    let booksUrl = 'https://www.googleapis.com/books/v1/volumes?q=' + searchTerm + '&maxResults=30&printType=books&key=' + key

    function handleSearchChange(event) {
        setSearchTerm(event.target.value)
    }

    function handleSearchSubmit(e) {
        e.preventDefault()
        axios.get(booksUrl)
            .then(r => {
                if (r.data.items) {
                    navigate('/search/' + searchTerm)
                }

                else {
                    alert('No results found')
                }
            })
    }

    //----------------------------------------
    //I will make a function for when I click on the title I am sent back to the home page

    function handleHomeClick() {
        navigate('/')
        setClickedProfileMenu(false)
    }

//---------------------------------
//Drop down

let [clickedProfileMenu, setClickedProfileMenu] = useState(false)

function handleClickProfile(){
    setClickedProfileMenu(!clickedProfileMenu)
}

function handleMenuHover(){
    setClickedProfileMenu(true)
}

function handleMouseOut(){
    setTimeout(() => {
        setClickedProfileMenu(false)
    },10*1000) //10 secs. afters 10 secs are up it is going to run wharever it is in the function
}

const handleLogOut = () => {
    axios.delete('/logout')
        .then(r => {
            setClickedProfileMenu(false)
            setUser({})}) 
            alert('You are now logged out')
}

let displayProfileMenu = clickedProfileMenu ? (
    <div className='profile-menu' onMouseOver={handleMenuHover} onMouseOut={handleMouseOut}>
        <div className='menu-option'>🌄 {user.first_name} {user.last_name}</div>
        <div className='menu-option'>{user.username}</div>
        <div className='menu-option option'>Settings</div>
        <div className='menu-option option' onClick={handleLogOut}>Log Out</div>
    </div>
) : null

    return (
        <div className='header'>
            <div className="group" >
                <div>About</div>
                <div> Clubs </div>
                <div onClick={handleHomeClick} className='title'> The Book House </div>
            </div>
            <div className="group end">
                <form onSubmit={handleSearchSubmit} >
                    <input className='searchBar'
                        type='text'
                        value={searchTerm}
                        onChange={handleSearchChange}
                        placeholder='Search'
                    />
                </form>
                {user.username ? <div className='profile' onClick={handleClickProfile}>⬜️ </div> : null}
                    {user.username ? <div className='profile' onClick={handleClickProfile}>▾ </div> : null}
            </div>
            {displayProfileMenu}
        </div>
    )
}
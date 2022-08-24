import { Axios } from "axios"
import React, { useEffect, useState } from "react"
import key from "../../key"
import axios from "axios"
import { useNavigate } from "react-router-dom";


export default function Header({ setSearchResults, user, setUser }) {
    let navigate = useNavigate() //I use useNavigate to send me to a new page

    let [searchTerm, setSearchTerm] = useState('')

    let booksUrl = 'https://www.googleapis.com/books/v1/volumes?q=' + searchTerm + '&maxResults=30&printType=books&key=' + key

    let [hoverOnProfileMenu, setHoverOnProfileMenu] = useState(true)

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

//if you hover over the menu it does not dissaper if you does not it stays.
// set it changes the value
//if I want to check the value I look at none set ex: hoveronprofilemenu

    
    //if I only have one condicional that I am looking for I just need to set the th if and the else will be the opposite
// function handleHoverMenu(){
//     if (hoverOnProfileMenu === true){

//     }else if (!hoverOnProfileMenu){
//         handleMouseOut()
//     }
// }//if I only have one condicional that I am looking for I just need to set the th if and the else will be the opposite


function handleClickProfile(){
    setClickedProfileMenu(!clickedProfileMenu)
    setTimeout(() => {
        //I did an annonymous function here, because I am only use this function here. I dont need to make it outside and take more space.
        if (!hoverOnProfileMenu){
            setClickedProfileMenu(false)
        }
    },5*1000)

}

function handleMenuHover(){
    setClickedProfileMenu(true)
    setHoverOnProfileMenu(true)
}
let [clock,setClock] = useState(new Date())
useEffect(()=>{
    setInterval(() => {
        setClock(new Date())
    },1*1000) 
},[])

function handleMouseOut(){//10 secs. afters 10 secs are up it is going to run wharever it is in the function
    setHoverOnProfileMenu(false)
    setTimeout(() => {
        setClickedProfileMenu(false)
    },5*1000) //10 secs. afters 10 secs are up it is going to run wharever it is in the function
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
                <div onClick={handleHomeClick} className='title'> The Book House </div>
                <div>About</div>
                <div> Clubs </div>
                <div>{clock.toLocaleTimeString()}</div>
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
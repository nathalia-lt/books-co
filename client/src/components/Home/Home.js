import BookContainer from "../BookContainer/BookContainer";

import axios from 'axios'
import { useState } from "react";


export default function Home( {user,setUser, userShelves, setUserShelves} ){

    const handleLogIn = () => {
        axios.post('/login', {
            "username": "demouser",
            "password": "12345"
        })
            .then(r => setUser(r.data))

    }

    const handleLogOut = () => {
        axios.delete('/logout')
            .then(r => setUser({}))

    }

    const handleShowMe = () => {
        axios.get('/me')
            .then(r => console.log(r.data))
    }

    if (!user.username) return (
        <>
            <button onClick={handleLogIn}>Log In</button>
            <button onClick={handleShowMe}>Show Me</button>
        </>
    )
    let currentlyBooks = userShelves[0].books
    return(
        <div>
            <BookContainer
            books={currentlyBooks}
            />
            <button onClick={handleLogOut}>Log Out</button>
        </div>
    )
}
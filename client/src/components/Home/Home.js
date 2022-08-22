import BookContainer from "../BookContainer/BookContainer";

import axios from 'axios'
import { useState } from "react";


export default function Home( {testData,user,setUser} ){

    const handleLogIn = () => {
        axios.post('/login', {
            "username": "test",
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
    return(
        <div>
            <BookContainer
            testData={testData}
            />
            <button onClick={handleLogOut}>Log Out</button>
        </div>
    )
}
import BookContainer from "../BookContainer/BookContainer";

import axios from 'axios'
import { useState } from "react";


export default function Home( {testData} ){

    const handleLogIn = () => {
        axios.post('/login', {
            "username": "test",
            "password": "12345"
        })
            .then(r => setUser(r.data))

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
        </div>
    )
}
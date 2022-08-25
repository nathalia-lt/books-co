
import axios from 'axios'
import { useState } from "react";
import Auth from '../Auth/Auth';
import HomeShelfcontainer from "../HomeShelfContainer/HomeShelfContainer";


export default function Home({ user, setUser, userShelves, setUserShelves }) {

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
        <Auth
        setUser={setUser}
        setUserShelves={setUserShelves}
        />
        </>
    )
    let bookShelvesToDisplay = userShelves.sort((a, b) => a.id - b.id).map(shelf => {
        // you can only use 'useState' or other react hooks (useEffect, etc) directly inside of a React Component (function with a capital first letter) 
        // you can not use 'useState' or other react hooks inside of a function (or .map, etc) made inside of a component 
        // to get around this issue,  I had to create a completely new component so that I can create a variable with state for every shelf passed into this component

        return (
            <HomeShelfcontainer
                shelf={shelf}
            />
        )
    })
    return (
        <div>
            {bookShelvesToDisplay}
        </div>
    )
}
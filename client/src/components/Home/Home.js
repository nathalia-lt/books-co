import axios from 'axios'
import { useState } from 'react';
import Auth from '../Auth/Auth';
import HomeShelfContainer from "../HomeShelfContainer/HomeShelfContainer";

export default function Home({ user, setUser, userShelves, setUserShelves, userBookClubs, setUserBookClubs }) {
    document.title = 'Scholar'
    if (!user.username) return (
        <>
            <Auth
                setUser={setUser}
                setUserShelves={setUserShelves}
                setUserBookClubs={setUserBookClubs}
            />
        </>
    )


    let bookShelvesToDisplay = userShelves.sort((a, b) => a.id - b.id).map((shelf, idx) => {
        // you can only use 'useState' or other react hooks (useEffect, etc) directly inside of a React Component (function with a capital first letter) 
        // you can not use 'useState' or other react hooks inside of a function (or .map, etc) made inside of a component 
        // to get around this issue,  I had to create a completely new component so that I can create a variable with state for every shelf passed into this component


        return (
            <HomeShelfContainer shelf={shelf} type='shelf' userShelves={userShelves} setUserShelves={setUserShelves} idx={idx} />
        )
    })

let bookClubsToDisplay = userBookClubs.sort((a, b) => a.id - b.id).map((club, idx) => {
        return (
            <HomeShelfContainer shelf={club.bookclub} type='club' userShelves={userShelves} setUserShelves={setUserShelves} idx={idx} />
        )
    })

    return (
        <div className="homeContainer">
            <h1>Your Shelves: </h1>
            {bookShelvesToDisplay}
            <h1>Your Book Clubs: </h1>
            {bookClubsToDisplay}
        </div>
    )
}
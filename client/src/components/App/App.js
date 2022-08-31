import React, { useState, useEffect } from 'react'
import key from '../../key'
import axios from 'axios'
import { Route, Routes } from 'react-router-dom'
import Home from '../Home/Home'
import Header from '../Header/Header'
import BookPage from '../BookPage/BookPage'
import SearchPage from '../SearchPage/SearchPage'
import Profile from '../Profile/Profile'
import About from '../About/About'
import BookClub from '../BookClub/BookClub'
import Community from '../Community/Community'

function App() {
  let [user, setUser] = useState({})
  let [userShelves, setUserShelves] = useState([])
  let [userBookClubs, setUserBookClubs] = useState([])
  let [bookClubs, setBookClubs] = useState([])


  //get user info every single time the webpage is load and alsov conecting frontEnd with backEnd
  useEffect(() => {
    let meRequest = axios.get('/me')
    let shelvesRequest = axios.get('/usershelves')
    let userBookClubsReq = axios.get('/userclubusers')
    let bookClubsReq = axios.get('/bookclubs')
    axios.all([meRequest, shelvesRequest, userBookClubsReq, bookClubsReq,])
      .then(axios.spread((res1, res2, res3, res4) => {
        setUser(res1.data)
        setUserShelves(res2.data)
        setUserBookClubs(res3.data)
        setBookClubs(res4.data)
      }))
  }, [])

  let [searchResults, setSearchResults] = useState({})



  return (
    <div>
      <Header
        setSearchResults={setSearchResults}
        user={user}
        setUser={setUser}
        setUserShelves={setUserShelves}
        setUserBookClubs={setUserBookClubs}
      />
      <hr></hr>
      <Routes>
        <Route path='/*' element={
          <Home
            testData={[]}
            user={user}
            setUser={setUser}
            userShelves={userShelves}
            setUserShelves={setUserShelves}
            userBookClubs={userBookClubs}
            setUserBookClubs={setUserBookClubs}
          />
        }
        />
        <Route path='/book/:id' element={
          <BookPage
            userShelves={userShelves}
            setUserShelves={setUserShelves}
            user={user}
            setUser={setUser}
            userBookClubs={userBookClubs}
            setUserBookClubs={setUserBookClubs}
          />
        }
        />
        <Route path='/search/:searchTerm' element={
          <SearchPage
            searchResults={searchResults}
            setSearchResults={setSearchResults}
          />
        }
        />
        <Route path='/search/:searchTerm/:authorSearchTerm' element={ //Here I am adding another / in the adress, than go to bigSearchsubmit and add to navigate
          <SearchPage
            searchResults={searchResults}
            setSearchResults={setSearchResults}
          />
        }
        />
        <Route path='/profile/:username' element={
          <Profile
            user={user}
            setUser={setUser}
          />
        }
        />
        <Route path='/about' element={
          <About
          />
        }
        />
        <Route path='/bookclub/:id' element={
          <BookClub
            user={user}
            setUser={setUser}
            bookClubs={bookClubs}
            setBookClubs={setBookClubs}
            userBookClubs={userBookClubs}
            setUserBookClubs={setUserBookClubs}
          />
        }
        />
        <Route path='/community' element={
          <Community
            user={user}
            setUser={setUser}
            bookClubs={bookClubs}
            setBookClubs={setBookClubs}
            userBookClubs={userBookClubs}
            setUserBookClubs={setUserBookClubs}
          />
        }
        />
      </Routes>
    </div>
  );
}

export default App;

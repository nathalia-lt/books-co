import React, { useState, useEffect } from 'react'
import key from '../../key'
import axios from 'axios'
import { Route, Routes } from 'react-router-dom'
import Home from '../Home/Home'
import Header from '../Header/Header'
import BookPage from '../BookPage/BookPage'
import SearchPage from '../SearchPage/SearchPage'

function App() {
  let [user,setUser] = useState({})


  useEffect(() => {
    let meRequest = axios.get('/me')
    axios.all([meRequest])
      .then(axios.spread((res1) => {
        setUser(res1.data)
      }))
  }, [])

let [searchResults, setSearchResults] = useState({})



  return (
    <div>
      <Header
        setSearchResults={setSearchResults}
      />
      <hr></hr>
      <Routes>
        <Route path='/*' element={
          <Home
            testData={[]}
            user={user}
            setUser={setUser}
          />
        }
        />
        <Route path='/book/:id' element={
          <BookPage
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
      </Routes>
    </div>
  );
}

export default App;

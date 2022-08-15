import React, { useState, useEffect } from 'react'
import key from '../../key'
import axios from 'axios'
import { Route, Routes } from 'react-router-dom'
import Home from '../Home/Home'
import Header from '../Header/Header'
import BookPage from '../BookPage/BookPage'

function App() {

  let booksUrl = 'https://www.googleapis.com/books/v1/volumes?q=thesimplewild&printType=books&key=' + key

  let [testData, setTestData] = useState([])
  useEffect(() => {
    axios.get(booksUrl)
      .then(r => setTestData(r.data))
  }, [])

  return (
    <div>
      <Header
        setTestData={setTestData}
      />
      <hr></hr>
      <Routes>
        <Route path='/*' element={
          <Home
            testData={testData}
          />
        }
        />
        <Route path='/book/:id' element={
          <BookPage
          />
        }
        />
      </Routes>
    </div>
  );
}

export default App;

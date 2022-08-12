


export default function BookContainer({ testData }) {
    if (!testData.items) {
        return null
    }
    let firstBook = testData.items[0]
    //console.log(firstBook)
    //I need book cover, book title and author to display on the browser
    let bookCover = firstBook.volumeInfo.imageLinks.thumbnail
    //console.log(bookCover)

    let bookTitle = firstBook.volumeInfo.title
    //console.log(bookTitle)

    let bookAuthor = firstBook.volumeInfo.authors
    //console.log(bookAuthor)



    return (

        <div className='bookContainer' > 
            <div className='bookCard' >
                <div className='bookCardHalf top'>
                <img className='bookCover' src={bookCover} alt='' />
                    </div>
                <div className='bookCardHalf bottom' >
                <div className='bookTitle'>  {bookTitle} </div>
                <div className='bookAuthor'> by: {bookAuthor} </div>
                </div>
            </div>
        </div>
    )
}
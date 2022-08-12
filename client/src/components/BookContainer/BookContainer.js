import BookCard from "../BookCard/BookCard"



export default function BookContainer({ testData }) {
    if (!testData.items) {
        return null
    }
     let booksToDisplay = testData.items.map(book => {
        return (
            <BookCard
            key= {book.id}
            book={book}
            />
        )
     })
   

    return (

        <div className='bookContainer' > 
        {booksToDisplay}
        </div>
    )
}
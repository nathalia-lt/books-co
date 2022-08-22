import BookCard from "../BookCard/BookCard"



export default function BookContainer({ books }) {
    if (!books.items) {
        return null
    }
     let booksToDisplay = books.items.map(book => {
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
import BookCard from "../BookCard/BookCard"

export default function BookContainer({ books }) {
    if (books.items) {
        let booksToDisplay = books.items.map(book=>{
            return (<BookCard 
                key={book.id}
                book={book}
            />)
        })
        return (
            <div className='bookContainer'>
                {booksToDisplay}
            </div>
        )
    } else if (books.length) {
        let booksToDisplay = books.map(book=>{
            return (<BookCard 
                key={book.id}
                book={book}
            />)
        })
        return (
            <div className='bookContainer'>
                {booksToDisplay}
            </div>
        )
    }
    else {
        return null
    }
}

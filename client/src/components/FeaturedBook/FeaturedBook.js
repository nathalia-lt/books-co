

export default function FeaturedBook( {book}){

    let bookCover = book.volumeInfo.imageLinks ? book.volumeInfo.imageLinks.thumbnail : ''

    let synopsis = book.volumeInfo.description.replace(/<(?:"[^"]"['"]|'[^']'['"]|[^'">])+>/g, '')

    let dateTime = new Date(book.volumeInfo.publishedDate) //new date takes in strings, I need to use new date class
    let publishedYear = dateTime.getFullYear()

    let language = book.volumeInfo.language

    let pageCount = book.volumeInfo.pageCount

    let bookTitle = book.volumeInfo.title

    let bookSubTitle = book.volumeInfo.subtitle

    let bookAuthor = book.volumeInfo.authors





    return(
        <div className='bookPageCard'>
        <div className='bookPageCardSide' >
            <img className='bookPageCardCover' src={bookCover} alt='' />
        </div>
        <div className='bookPageCardMain'>

            <div className='bookPageCardInformation' >
                <div className='bookPageTitle'>{bookTitle}</div>
                <div className='bookPageTitle'>{bookSubTitle}</div>
                <hr></hr>
                <div className="synopsis">{synopsis}</div>
                <div className='Author'><b>{bookAuthor} </b></div>
                <hr></hr>
                <div className='bookInfo'><b>Pages:</b> {pageCount}</div>
                <div className='bookInfo'><b>Language:</b> {language} </div>
                <div className='bookInfo' ><b>Publication Year:</b> {publishedYear} </div>
            </div>
        </div>
    </div>
    )
}
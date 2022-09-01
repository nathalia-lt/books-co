
import javascript from './javascript.png'
import react from './react.png'
import linkedin from './linkedin.png'
import github from './github.png'
import sass from './sass.png'
import ruby from './ruby.png'
import postresql from './postresql.png'


export default function About() {
    document.title = 'About'



    function handleGitHubClick() {
        window.open('https://github.com/nathalia-lt/books-co')
    }

    function handleLinkedinClick() {
        window.open('https://www.linkedin.com/in/nathaliatroina/')
    }

    return (
        <div className='aboutPageContainer'>
            <div className='aboutPage' >
                <div className='aboutInformation'>

                    <h1 className='aboutTitle'>  About </h1>
                    <p className='paragraph'> Books & Co. is a website where the users can find their favorites books.
                        You can search by book, author or genre, save favorites, and join a book club.
                    </p>
                    <h4> Created by:</h4>
                    <div className='createdby'>
                        <li>Nathalia Troina</li>
                        <li>Henry Miller</li>
                    </div>

                    <h4> Made With: </h4>
                    <div className='icons js'>
                        <img src={javascript} alt='' />
                        <img src={react} alt='' />
                        <img src={sass} alt='' />
                        <img src={ruby} alt='' />
                        <img src={postresql} alt='' />
                    </div>
                    <h4> For More Information: </h4>
                    <div className='icons' >
                        <img onClick={handleGitHubClick} src={github} alt='' />
                        <img onClick={handleLinkedinClick} src={linkedin} alt='' />
                    </div>
                </div>
            </div>
        </div>
    )
}

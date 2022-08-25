import { useState } from "react";
import BookContainer from "../BookContainer/BookContainer";
// i want to be able to click the name of each shelf to toggle displaying the books in that shelf 
// I need a variable with state to be able to do this because you need to be able to dynamically update a variable on demand
// you can only use 'useState' or other react hooks (useEffect, etc) directly inside of a React Component (function with a capital first letter) 
// you can not use 'useState' or other react hooks inside of a function (or .map, etc) made inside of a component 
// to get around this issue,  I had to create a completely new component so that I can create a variable with state for every shelf passed into this component


export default function HomeShelfcontainer( {shelf} ) {

    let [clickedShelfName, setClickedShelfName] = useState(false)

    function handleClickShelfName(){
        setClickedShelfName(!clickedShelfName)
    }

    let dropDownTriangle = clickedShelfName ? '▾' : '▴'

    let showBooks = clickedShelfName ?  <div className="homeshelfrow">
    <BookContainer
        books={shelf.books}
    />
</div> : null



    return (
        <div className="homeshelfcontainer">
            <h3  onClick={handleClickShelfName} >{shelf.name}: {dropDownTriangle}</h3>
            {showBooks}
        </div>

    )
}
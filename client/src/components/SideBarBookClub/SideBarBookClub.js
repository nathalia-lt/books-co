import { useState } from "react"



export default function SideBarBookClub( {club} ){

    let [clickedDropDown, setClickedDropDown] = useState(false)

    function handleClickClub(){
        setClickedDropDown(!clickedDropDown)
    }

    let showOptions = clickedDropDown ? <div>  <li>Go to page </li> <li>Add to my list </li> </div> : null

    let dropDownTriangle = clickedDropDown ? '▾' : '▴'


    return(
        <div className="clubCard">
        <div className='clubRow' onClick={handleClickClub} >
            <div className='clubName' > {club.name} </div>
            <div className='dropDown'> {dropDownTriangle} </div>
        </div>
        {showOptions}
    </div>
    )
}
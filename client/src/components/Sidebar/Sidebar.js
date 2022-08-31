import SideBarBookClub from "../SideBarBookClub/SideBarBookClub"

export default function SideBar({ user, setUser, pageData, page, userBookClubs, setUserBookClubs }) {

    if (!user.username) return null
    let bookClubs = userBookClubs ? userBookClubs.map(clubuser => clubuser.bookclub) : []

    let bookClubsToDisplay = bookClubs.length ? bookClubs.sort((a,b)=>a.name.toLowerCase().localeCompare(b.name.toLowerCase())).map(club => {
        return (
            <SideBarBookClub
                club={club}
                setUser={setUser}
                book={pageData}
                page={page}
                userBookClubs={userBookClubs}
                setUserBookClubs={setUserBookClubs}
            />

        )
    }) : null


    return (
        <div className="sidebar">
            <div className="sideBarInfo">
                <h2 className="sideBarBookClubsTitle">{user.first_name}'s Book Clubs:</h2>
                <div className="sideBarBookClubsContainer">
                    {bookClubsToDisplay}
                </div>
            </div>
        </div>
    )
}
import { useNavigate } from "react-router-dom";

export default function BookClubCard({ club }) {
    let navigate = useNavigate()

    function handleClickVisit() {
        navigate('/bookclub/' + club.id)
    }
    let host = club.host ? club.host : {}
    return (
        <div className="bookClubCard">
            <img src={club.image} />
            <h2>{club.name}</h2>
            <div><b>Host:</b> <span>{host.username}</span></div>
            <hr></hr>
                <div className="clubDescription">{club.description}</div>
                <button onClick={handleClickVisit}>Visit</button>
        </div>
    )
}
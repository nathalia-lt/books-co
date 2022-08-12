import BookContainer from "../BookContainer/BookContainer";


export default function Home( {testData} ){
    return(
        <div>
            <BookContainer
            testData={testData}
            />
        </div>
    )
}
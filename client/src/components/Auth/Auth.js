import React, { useState } from 'react';
import axios from 'axios';

export default function Auth({ setUser, setUserShelves, setUserBookClubs }) {

    const [formType, setFormType] = useState(true)
    function onFormClick() {
        setFormType(formType => !formType)
    }

    // Sign Up:
    const [signUpFirstName, setSignUpFirstName] = useState("");
    const [signUpLastName, setSignUpLastName] = useState("");
    const [signUpUsername, setSignUpUsername] = useState("");
    const [signUpPassword, setSignUpPassword] = useState("");
    const [signUpPasswordConfirmation, setSignUpPasswordConfirmation] = useState("");

    // Log In:
    const [username, setUsername] = useState("");
    const [password, setPassword] = useState("");

    function handleSignUpSubmit(e) {
        e.preventDefault();
        const signUpDetails = {
            "first_name": signUpFirstName,
            "last_name": signUpLastName,
            username: signUpUsername,
            password: signUpPassword,
            "password_confirmation": signUpPasswordConfirmation,
        }
        axios.post("/signup", signUpDetails)
            .then(r => {
                setUser(r.data)
                alert('Your account has been created and you are now been logged in!')
                let shelvesReq = axios.get('/usershelves')
                let userBookClubsReq = axios.get('/userclubusers')
                axios.all([shelvesReq, userBookClubsReq])
                    .then(axios.spread((res1, res2) => {
                        setUserShelves(res1.data)
                        setUserBookClubs(res2.data)
                        console.log(res2.data)
                    }))
            })
            .catch(function (error) {
                if (error.response) {
                    let msg = '';
                    error.response.data.errors.map(error => { msg += error + '\n' })
                    alert(msg)
                } else if (error.request) {
                    console.log(error.request);
                } else {
                    console.log('Error', error.message);
                }
            });

    }

    function handleLogInSubmit(e) {
        e.preventDefault();
        const logInDetails = {
            username,
            password
        }

        axios.post("/login", logInDetails)
            .then((r) => {
                setUser(r.data)
                alert('You are now logged in!')
                let shelvesReq = axios.get('/usershelves')
                let userBookClubsReq = axios.get('/userclubusers')
                axios.all([shelvesReq, userBookClubsReq])
                    .then(axios.spread((res1, res2) => {
                        setUserShelves(res1.data)
                        setUserBookClubs(res2.data)
                    }))
            })
            .catch(function (error) {
                if (error.response) {
                    let msg = '';
                    error.response.data.errors.map(error => { msg += error + '\n' })
                    alert(msg)
                } else if (error.request) {
                    console.log(error.request);
                } else {
                    console.log('Error', error.message);
                }
            });
    }

    function handleDemoLogIn(e) {
        e.preventDefault();
        const logInDetails = {
            username: "demouser",
            password: "12345"
        }

        axios.post("/login", logInDetails)
            .then((r) => {
                setUser(r.data)
                let shelvesReq = axios.get('/usershelves')
                let userBookClubsReq = axios.get('/userclubusers')
                axios.all([shelvesReq, userBookClubsReq])
                    .then(axios.spread((res1, res2) => {
                        setUserShelves(res1.data)
                        setUserBookClubs(res2.data)
                    }))
            })
            .catch(function (error) {
                if (error.response) {
                    let msg = '';
                    error.response.data.errors.map(error => { msg += error + '\n' })
                    alert(msg)
                } else if (error.request) {
                    console.log(error.request);
                } else {
                    console.log('Error', error.message);
                }
            });
    }



    return (
        <div className='authContainer'>

            <div className='signin-modal'>
                <div className={formType ? "container" : "container right-panel-active"} id="container">
                    <div className="signin-container">
                        <div className="form-container sign-up-container">
                            <form className='modal-form' action="#">
                                <h1 className='modal-create'>Create Account</h1>
                                <div className='modal-input-fullname'>
                                    <input className='modal-input-name' type="text" placeholder="First Name" value={signUpFirstName} onChange={(e) => { setSignUpFirstName(e.target.value) }} />
                                    <input className='modal-input-name last' type="text" placeholder="Last Name" value={signUpLastName} onChange={(e) => { setSignUpLastName(e.target.value) }} />
                                </div>
                                <input className='modal-input' type="text" placeholder="Username" value={signUpUsername} onChange={(e) => setSignUpUsername(e.target.value)} />
                                <input className='modal-input' type="password" placeholder="Password" value={signUpPassword} onChange={(e) => setSignUpPassword(e.target.value)} />
                                <input className='modal-input-end' type="password" placeholder="Password Confirmation" value={signUpPasswordConfirmation} onChange={(e) => setSignUpPasswordConfirmation(e.target.value)} />
                                <button className='modal-button' onClick={handleSignUpSubmit} >Sign Up</button>
                            </form>
                        </div>
                        <div className="form-container sign-in-container">
                            <form className='modal-form' action="#">
                                <h1 className='modal-signin-title'>Sign in</h1>
                                <input className='modal-input' type="email" placeholder="Username" value={username} onChange={(e) => setUsername(e.target.value)} />
                                <input className='modal-input' type="password" placeholder="Password" value={password} onChange={(e) => setPassword(e.target.value)} />
                                <a className='modal-a' href="#">Forgot your password?</a>
                                <button className='modal-button' onClick={handleLogInSubmit}>Sign In</button>
                                <button className='modal-button demo' onClick={handleDemoLogIn}>Sign In as Demo User</button>
                            </form>
                        </div>
                        <div className="overlay-container">
                            <div className="overlay">
                                <div className="overlay-panel overlay-left">
                                    <h1 className='modal-welcome'>Welcome</h1>
                                    <p className='modal-subtitle'>To find and save your favorite books, please log in.</p>
                                    <button onClick={onFormClick} className=" modal-button ghost" id="signIn">Sign In</button>
                                </div>
                                <div className="overlay-panel overlay-right">
                                    <h1 className='modal-welcome'>Welcome</h1>
                                    <p className='modal-subtitle'>Sign up to join book communities and create unique book shelves.</p>
                                    <button onClick={onFormClick} className="modal-button ghost" id="signUp">Sign Up</button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    )
}
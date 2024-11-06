<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>3D Login Form</title>
    <link rel="stylesheet" href="style.css" type="text/css">
    <style>
        /* Global Styles */
       * {
    padding: 0;
    margin: 0;
    box-sizing: border-box;
    font-family: sans-serif;
    transition: 1s ease;
}

body {
    margin: 0;
    padding: 0;
    overflow: hidden;
    background-color: #f0f0f0;  /* Adjust background color */
}

/* Video Background */
.video-background {
    position: fixed;
    right: 0;
    bottom: 0;
    min-width: 100%;
    min-height: 100%;
    z-index: -1;
}

/* Container and 3D Box */
.content {
    display: flex;
    justify-content: center;
    align-items: center;
    height: 100vh;
    perspective: 1000px;
}

.box {
    position: relative;
    width: 350px;
    height: 500px;
    background: none;
    top: -20px;
    transform-style: preserve-3d;
}

.box div {
    width: 350px;
    height: 500px;
    position: absolute;
    background-image: radial-gradient(#fff, #ffbef8);
    box-shadow: 0 0 5px #ff44f8, 0 0 30px #ff44f8, inset 0 0 5px #ff44f8, inset 0 0 30px #ff44f8;
    border: 3px solid #ff7dfa;
}

.box div:nth-child(5) {
    height: 350px;
    box-shadow: 0 0 10px #81007c, 0 0 30px #81007c;
}

/* 3D Transformations */
.a { transform: rotateY(0deg) translateZ(175px); }
.b { transform: rotateY(90deg) translateZ(175px); }
.c { transform: rotateY(180deg) translateZ(175px); }
.d { transform: rotateY(270deg) translateZ(175px); }
.e { transform: rotateX(-90deg) translateZ(325px); }

/* Labels */
.a label {
    position: relative;
    width: 200px;
    left: 65px;
    top: 170px;
    color: white;
    font-size: 20px;
    height: 50px;
    line-height: 50px;
    margin: 20px 0;
    text-align: center;
    display: block;
    background-image: linear-gradient(45deg, #8000ff, #ff00c4);
    border-radius: 25px;
    box-shadow: 0 0 5px #ff44f8, 0 0 30px #ff44f8;
    cursor: pointer;
}

/* Buttons */
#sup, #btn {
    background-image: linear-gradient(45deg, #ff00c4, #8000ff);
    color: white;
    cursor: pointer;
}

#btn:focus {
    width: calc(100% - 80px);
    left: 40px;
  
}

/* Titles */
.title {
    width: 100%;
    text-align: center;
    line-height: 30px;
    font-size: 30px;
    font-weight: bold;
    color: #8d006c;
    text-shadow: 0 0 20px #ff00c4;
    position: absolute;
  
   
}

/* Form Inputs */
.frm input {
    position: relative;
    width: calc(100% - 80px);
    left: 40px;
    display: block;
    text-align: center;
    line-height: 40px;
    top: 60px;
    background: none;
    outline: none;
    border: none;
    border-radius: 25px;
    box-shadow: 0 0 5px #ff44f8, 0 0 30px #ff44f8;
    margin: 20px 0;
    font-size: 16px;
}

.frm input:focus {
    width: calc(100% - 40px);
    left: 20px;
    background: #ffcbf9;
    box-shadow: 0 0 5px #000, 0 0 30px #c900b2;
}

/* Bottom Link */
#btm {
    position: absolute;
    bottom: 20px;
    font-size: 20px;
    color: #720058;
    text-align: center;
    width: 100%;
    cursor: pointer;
    margin-right:50px;
}

/* 3D Box Rotation */
#chk1:checked ~ .content .box {
    transform: rotateY(-180deg);
}

#chk2:checked ~ .content .box {
    transform: rotateY(-90deg);
}
.c{
margin-right:50px;
}
       
        
    </style>
</head>
<body>
    <video autoplay muted loop class="video-background">
        <source src="your-video-file.mp4" type="video/mp4">
        Your browser does not support the video tag.
    </video>
    <input type="radio" id="chk1" name="a1" style="display: none;">
    <input type="radio" id="chk2" name="a1" style="display: none;">
    <div class="content">
        <div class="box">
            <div class="a">
                <label for="chk1">Login</label>
                <label for="chk2" id="sup">Sign up</label>
            </div>
            <div class="b">
                <form action="signupServlet" method="POST" class="frm">
                    <h6 class="title">SIGN-UP FORM</h6>
                    <label for="fullName"></label>
                    <input type="text" id="fullName" name="fullName" placeholder="Enter Full Name" required>
                    <label for="username"></label>
                    <input type="text" id="username" name="username" placeholder="Enter Username" required>
                    <label for="email"></label>
                    <input type="email" id="email" name="email" placeholder="Enter Email Address" required>
                    <label for="password"></label>
                    <input type="password" id="password" name="password" placeholder="Enter Password" required>
                    <label for="confirmPassword"></label>
                    <input type="password" id="confirmPassword" name="confirmPassword" placeholder="Confirm Password" required>
                    <input type="submit" value="Sign up" id="btn">
                    <label for="chk1" id="btm">Login here</label>
                </form>
            </div>
            <div class="c">
    <form action="Homes.jsp" method="POST" class="frm">
        <h6 class="title">LOGIN FORM</h6>
        <label for="loginUsername"></label>
        <input type="text" id="loginUsername" name="loginUsername" placeholder="Enter your username or email" required>
        
        <label for="loginPassword"></label>
        <input type="password" id="loginPassword" name="loginPassword" placeholder="Enter your password" required>
        <br></br><br></br><br></br><br></br>
        <h6 class="title">
        <button type="submit">Login</button>
        </h6>
        
        
    </form>
</div>

            <div class="d"></div>
            <div class="e"></div>
        </div>
    </div>
</body>
</html>
    
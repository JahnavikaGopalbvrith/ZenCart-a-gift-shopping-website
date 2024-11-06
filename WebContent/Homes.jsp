<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css" integrity="sha512-DTOQO9RWCH3ppGqcWaEA1BIZOC6xxalwEsw9c2QQeAIftl+Vegovlnee1c9QX4TctnWMn13TZye+giMm8e2LwA==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <title>Home Page</title>
</head>
<style>
    body {
        font-family: 'Arial', sans-serif;
        margin: 0;
        padding: 0;
        background-color: #f8f8f8;
    }
    .header {
        display: flex;
        align-items: center;
        justify-content: space-between;
        padding: 10px 20px;
        background-color: #fff;
        box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
    }
    .header .search-bar {
        flex-grow: 1;
        margin: 0 10px;
        position: relative;
        max-width: 170px;
    }
    .header .search-bar input {
        width: 100%;
        padding: 10px 40px 10px 20px;
        border: 1px solid #ddd;
        border-radius: 25px;
        box-shadow: inset 0 1px 2px rgba(0, 0, 0, 0.1);
    }
    .header .search-bar .search-icon {
        position: absolute;
        right: 10px;
        top: 50%;
        transform: translateY(-35%);
        cursor: pointer;
    }
    .header .delivery-location {
        margin-left: 20px;
    }
    .header .delivery-location button,
    .header .user-info button {
        background: none;
        border: none;
        cursor: pointer;
        color: #555;
        font-size: 14px;
    }
    .header .user-info {
        display: flex;
        align-items: center;
        gap: 15px;
    }
    .header .user-info button span {
        background: #e86b8a;
        color: #fff;
        border-radius: 50%;
        padding: 5px 10px;
        margin-left: 5px;
    }
    .header .user-info img {
        height: 30px;
        width: 30px;
        border-radius:50%;
    }
    .nav {
            display: flex;
            justify-content: space-around;
            padding: 10px;
            background-color: #e86b8a;
            color: #fff;
            position: relative;
        }
        .nav a {
            text-decoration: none;
            color: #fff;
            font-weight: bold;
            transition: color 0.3s ease;
        }
        .nav a:hover {
            color:purple;
        }
        .dropdown {
            position: relative;
            display: inline-block;
        }
        .dropdown-content {
            display: none;
            position: absolute;
            background-color: #fff;
            box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
            z-index: 1;
            width: 800px; /* Adjust width as needed */
            left: 0;
            right: 0;
            margin: auto;
            color: #000;
            padding: 20px;
        }
        .dropdown-content .dropdown-column {
            float: left;
            width: 25%; /* Adjust column width as needed */
            padding: 10px;
            box-sizing: border-box;
        }
        .dropdown-content .dropdown-column h3 {
            margin-top: 0;
            font-size: 16px;
            font-weight: bold;
            color: #e86b8a;
        }
        .dropdown-content .dropdown-column a {
            color: #555;
            text-decoration: none;
            display: block;
            padding: 5px 0;
            transition: color 0.3s ease;
        }
        .dropdown-content .dropdown-column a:hover {
            color: #ff3366;
        }
        .dropdown:hover .dropdown-content {
            display: block;
        }
        .nav .delivery-gifts {
            position: relative;
            display: flex;
            align-items: center;
        }
        .nav .delivery-gifts .vehicle {
            height: 20px;
            animation: moveVehicle 5s linear infinite;
            margin-left: 5px;
        }
        .vehicle {
            height: 30px;
        }
        .breadcrumbs {
            padding: 10px 20px;
            font-size: 14px;
            background-color: #fff;
            border-bottom: 1px solid #ddd;
        }
        .content {
            padding: 20px;
            background-color: #fff;
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
            margin: 20px;
            border-radius: 8px;
        }
        .content h1 {
            font-size: 24px;
            margin-bottom: 10px;
            color: #333;
        }
        .content h1 span {
            color: #ff3366;
        }
        .filter-bar {
            display: flex;
            justify-content: space-between;
            align-items: center;
            margin-top: 10px;
        }
        .filter-bar input,
        .filter-bar select {
            padding: 8px 12px;
            border: 1px solid #ddd;
            border-radius: 4px;
            transition: border-color 0.3s ease;
        }
        .filter-bar input:focus,
        .filter-bar select:focus {
            border-color: #ff3366;
        }
        .filter-bar .delivery-date label,
        .filter-bar .filter-price label,
        .filter-bar .sort-by label {
            margin-right: 10px;
            font-weight: bold;
            color:#555;
}

body {
        margin: 0;
        font-family: Arial, sans-serif;
        background-color: #f7e0ef;
    }

    a {
        text-decoration: none;
        color: black;
    }

    .slider {
        height: 400px;
        width: 1350px;
        box-shadow: 0px 5px 8px rgba(0, 0, 0, .3);
        animation: animate 20s infinite;
    }

    @keyframes animate {
        20% {
            background: url(https://assets.winni.in/sf-img/live/visuals/home/desktop/2024/6/1719379829712.jpg);
            background-size: cover;
            background-position: center;
        }
        40% {
            background: url(https://assets.winni.in/sf-img/live/visuals/home/desktop/2024/6/1719213604046.jpg);
            width: 1375px;
            height: 400px;
            background-position: center;
        }
        60% {
            background: url(https://assets.winni.in/sf-img/live/visuals/home/desktop/2024/4/1712552211535.jpg);
            width: 1375px;
            height: 400px;
            background-position: center;
        }
        80% {
            background: url(https://assets.winni.in/sf-img/live/visuals/home/desktop/2024/5/1715681603912.jpg);
            width: 1375px;
            height: 400px;
        }
        100% {
            background: url(https://assets.winni.in/sf-img/live/visuals/home/desktop/2024/5/1715681603912.jpg);
            width: 1375px;
            height: 400px;
            background-position: center;
        }
    }

    .image-container {
        display: flex;
        justify-content: center;
        align-items: center;
        gap: 20px;
    }

    .image-wrapper {
        width: 200px;
        height: 200px;
        perspective: 1000px;
    }

    .image {
        position: relative;
        width: 100%;
        height: 100%;
        transition: transform 0.5s;
        transform-style: preserve-3d;
    }

    .image .side {
        position: absolute;
        width: 100%;
        height: 100%;
        backface-visibility: hidden;
    }

    .image .front {
        transform: rotateY(0deg);
    }

    .image .back {
        transform: rotateY(180deg);
    }

    .image-wrapper:hover .image {
        transform: rotateY(180deg);
    }

    .label {
        text-align: center;
    }

    .ad {
        padding-left: 200px;
        display: flex;
        padding-right: 150px;
        align-items: center;
        
    }

    .countdown-container {
        text-align: center;
        padding: 80px;
        border-radius: 20px;
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        padding-block-end: 12px;
        padding-block-start: 12px;
        padding-left: 180px;
        padding-right: 180px;
        padding-top: 50px;
    }

    .countdown {
        font-size: 2em;
        margin-bottom: 10px;
        color: orange;
    }

    .message {
        font-size: 40px;
        color: rgb(126, 68, 224);
        text-align: center;
        text-transform: capitalize;
        font-style: oblique;
    }

    footer {
        margin-top: 20px;
    }

    .foot_panel {
        text-align: center;
    }

    .footer_logo, .footer_logoo {
        display: flex;
        justify-content: center;
        gap: 10px;
    }

    .footer_logo1, .footer_logoo1 {
        width: 100px;
    }

    .footer1 {
        display: flex;
        justify-content: center;
        gap: 20px;
        margin-top: 10px;
    }
    *{
    margin:0;
    border:border-box;
    font-family: Arial, Helvetica, sans-serif;
}
body{
    background-color:#f7e0ef;

}
.navbar{
    height:100px;
    background-color:#fddcf2;
    padding: 0px 100px;
    color:white;
    display:flex;
    align-items: center;
}
.nav-logo{
    height:50px;
    width: 250px;
}
.navbar1{
    height:40px;
    background-color: #a8a8a8;
    display:flex;
    align-items:center;
    font-display: left ;
    padding-top: 10px;
}
.logo1{
    background-image: url("https://assets.winni.in/groot/2023/11/20/desktop/scooter-animation-fifth.gif");
    background-color: #a8a8a8;
    display:flex;
    align-items: right;

}

.border:hover{
    border:1px solid white;
}


body{
    margin: 0;
    padding: 0;
    background:#f7e0ef;
}
.center{
    position: absolute;
    top: 50%;
    left: 50%;
    transform: translate(-50%, -50%);
  }



.image .front {
    transform: rotateY(0deg);
}

.image .back {
    transform: rotateY(180deg);
}

.image-wrapper:hover .image {
    transform: rotateY(180deg);
}
.label{
    text-align: center;
}


.ad{
    padding-left:400px;
    display: flex;
    padding-right: 20px;
    align-items: center;
 

}
a {
    text-decoration: none;
    color: black;
}

.header-main {
    display: flex;
    align-items: center;
    justify-content: space-between;
    padding: 10px 20px;
    background-color: #f8f8f8;
}

.head1 {
    text-align: right;
    padding: 5px 20px;
    background-color: #f1f1f1;
    font-size: 14px;
}

.nav_search {
    display: flex;
    align-items: center;
    position: relative;
    flex-grow: 1;
    max-width: 400px;
}

.search_input {
    width: 100%;
    padding: 5px 40px 5px 10px;
    box-sizing: border-box;
}

.search_icon {
    position: right;
    right: 10px;
    cursor: pointer;
    color: #555;
    
}

.nav_address {
    display: flex;
    align-items: center;
    padding: 5px;
    background-color: #ddd;
    cursor: pointer;
    margin: 0 20px;
}

.add_icon {
    display: flex;
    align-items: center;
}

.add_icon i {
    margin-right: 5px;
}

.header-icons {
    display: flex;
    align-items: center;
    gap: 50px;
}

.header-icons a {
    cursor: pointer;
    color: black;
}

/* Modal styles */
.modal {
    display: none; 
    position: fixed; 
    z-index: 1; 
    left: 0;
    top: 0;
    width: 100%; 
    height: 100%; 
    overflow: auto; 
    background-color: rgb(0,0,0); 
    background-color: rgba(0,0,0,0.4); 
    padding-top: 60px;
}

.modal-content {
    background-color: #fefefe;
    margin: 5% auto;
    padding: 20px;
    border: 1px solid #888;
    width: 80%; 
    max-width: 300px;
}

.close {
    color: #aaa;
    float: right;
    font-size: 28px;
    font-weight: bold;
}

.close:hover,
.close:focus {
    color: black;
    text-decoration: none;
    cursor: pointer;
}

.form-group {
    margin-bottom: 15px;
}

.form-group label {
    display: block;
    margin-bottom: 5px;
}

.form-group input {
    width: 100%;
    padding: 8px;
    box-sizing: border-box;
}

.form-group button {
    width: 100%;
    padding: 10px;
    background-color: #4CAF50;
    border: none;
    color: white;
    cursor: pointer;
}

.form-group button:hover {
    background-color: #45a049;
}

.switch-modal {
    text-align: center;
    margin-top: 10px;
}

.switch-modal a {
    color: #007BFF;
    cursor: pointer;
}
nav {
    background-color:#9d9dda;
    padding: 10px 0;
}

.nav-buttons {
    list-style: none;
    display: flex;
    justify-content: center;
    margin: 0;
    padding: 0;
}

.nav-buttons li {
    margin: 0 10px;
}

.nav-buttons button {
    background: none;
    border: none;
    color: white;
    font-size: 12px;
    cursor: pointer;
    padding: 5px 5px;
}

.nav-buttons button:hover {
    text-decoration:underline;
}
/* Add your popup styles here */
.dropdown {
    position: relative;
    display: inline-block;
}

.dropdown-content {
    display: none;
    position: absolute;
    background-color: #fff;
    box-shadow: 0px 80px 160px 70px rgba(0,0,0,0.2);
    z-index: 1;
    width: 1000px; /* Updated width */
    left: 0; /* Align to the left side */
    padding: 20px; /* Add padding to avoid the content touching the edges */
    box-sizing: border-box;
    display: flex; /* Use flexbox for layout */
    flex-wrap: wrap; /* Wrap columns if necessary */
}

.dropdown-content .dropdown-column {
    flex: 1; /* Equally distribute space */
    min-width: 200px; /* Minimum width for columns */
    padding: 0 10px; /* Padding between columns */
}

.dropdown-content a {
    color: black;
    padding: 8px 0;
    text-decoration: none;
    display: block;
}

.dropdown-content a:hover {
    background-color: #ddd;
}

/* Show the dropdown menu on hover */
.dropdown:hover .dropdown-content {
    display: flex;
}

/* Highlight the ANNIVERSARY link with pink color on hover */
.dropdown:hover > a {
    color: rgb(219, 20, 169);
}
.dropdown-content {
    display: none;
    position: absolute;
    background-color: #fff;
    box-shadow: 0px 80px 160px 70px rgba(0,0,0,0.2);
    z-index: 1;
    width: 1000px; /* Updated width */
    left: 50%; /* Center alignment */
    transform: translateX(-45%); /* Adjust to center */
    padding: 20px; /* Add padding to avoid the content touching the edges */
    box-sizing:border-box;
}


.feedback-section {
    text-align: center;
    margin-top: 20px;
    
}

.feedback-section p {
    font-size: 18px;
    margin-bottom: 10px;
}

.feedback-section button {
    background-color: #4CAF50;
    color: white;
    padding: 10px 20px;
    border: none;
    border-radius: 4px;
    cursor: pointer;
    margin:010px;
}
.profile-dropdown {
        position: relative;
        display: inline-block;
    }
    .profile-dropdown-content {
        display: none;
        position: absolute;
        background-color: #fff;
        box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
        z-index: 1;
        right: 0;
        padding: 10px;
        border-radius: 4px;
        width: 200px; /* Adjust width as needed */
    }
    .profile-dropdown-content h2 {
        margin: 0;
        padding: 10px 0;
        font-size: 16px;
        color: #333;
    }
    .profile-dropdown-content p {
        margin: 0;
        padding: 5px 0 10px;
        font-size: 14px;
        color: #777;
    }
    .profile-dropdown-content a {
        color: #555;
        text-decoration: none;
        display: block;
        padding: 5px 0;
        transition: color 0.3s ease;
    }
    .profile-dropdown-content a:hover {
        color: #ff3366;
    }
    .profile-dropdown:hover .profile-dropdown-content {
        display: block;
    }
    .profile-dropdown-content .signup-login {
        color: #ff3366;
        font-weight: bold;
        text-decoration: none;
        display: block;
        padding: 5px 0 15px;
    }  
</style>
<body>
    <header>
    <div class="header">
    <h3>ZENC<i class="fa-solid fa-cart-shopping"></i>RT</h3>
      
        <div class="search-bar">
            <input type="text" placeholder="Search for gifts">
            <div class="search-icon"><i class="fa-solid fa-magnifying-glass"></i></div>
        </div>
        <div class="delivery-location">
            
        </div>
        <div class="user-info">
       
            <div class="profile-dropdown">
                <img src="https://st2.depositphotos.com/2668729/6278/v/600/depositphotos_62783141-stock-illustration-male-avatar-icon-on-white.jpg" alt="Profile">
                <div class="profile-dropdown-content">
                    <h2>Welcome</h2>
                    <p>To access account and manage orders</p>
                    <a href="sign.jsp" class="signup-login">Signup/Login</a>
                    <a href="#">My Winni</a>
                    <a href="#">My Orders</a>
                    <a href="#">My Address Book</a>
                    <a href="#">My Wallet</a>
                    <a href="#">My Reminder</a>
                </div>
            </div>
            <button><span>0</span><i class="fa-solid fa-heart"></i></button>
            <button><span>0</span> <i class="fa-solid fa-cart-shopping"></i></button>
        </div>
    </div>
    <div class="nav">
        <a href="#" class="express">EXPRESS</a>
        <a href="#">CAKES</a>
        <a href="#">FLOWERS</a>
        <a href="#">PLANTS</a>
        <a href="#">GIFTS</a>
        <div class="dropdown">
            <a href="#" class="dropbtn">PERSONALIZED GIFTS</a>
            <div class="dropdown-content">
                <div class="dropdown-column">
                    <h3>Personalized Gifts</h3>
                    <a href="va.jsp">Mugs</a>
                    <a href="Cushions.html">Cushions</a>
                    <a href="Bottles.html">Water Bottles</a>
                    <a href="Keychains.html">Key Chains</a>
                    <a href="clocks.html">Clocks</a>
                    <a href="Chocolates.html">Chocolates</a>
                    <a href="shirts.html">T-Shirts</a>
                </div>
                <div class="dropdown-column">
                    <h3>Special Gifts</h3>
                    <a href="photo.html">Photo Frames</a>
                    <a href="Led.html">LED Frames</a>
                    <a href="photo.html">Photo To Art</a>
                </div>
                <div class="dropdown-column">
                    <h3>By Recipients</h3>
                    <a href="forher.html">For Her</a>
                    <a href="forhim.html">For Him</a>
                    <a href="forhusband.html">For Husband</a>
                    <a href="forwife.html">For Wife</a>
                </div>
                <div class="dropdown-column">
                    <h3>By Occasions</h3>
                    <a href="#">Birthday Gifts</a>
                    <a href="#">Anniversary</a>
                    <a href="Wedding.html">Wedding Gifts</a>
                    <a href="#">Love & Romance</a>
                </div>
            </div>
        </div>
        <a href="#">CHOCOLATES</a>
        <a href="#">COMBOS</a>
        <a href="#">BIRTHDAY</a>
        <a href="#">ANNIVERSARY</a>
        <a href="#">OCCASIONS</a>

        <div class="delivery-gifts">
            <img src="https://assets.winni.in/groot/2023/11/20/desktop/scooter-animation-fifth.gif" alt="Vehicle" class="vehicle">
        </div>
    </div>
   
    <body>
        <div class="slider"></div>
        <div class="image-container">
            <div class="image-wrapper">
                <div class="image"><br></br><br></br>
                    <div class="side front">
                        <img src="https://assets.winni.in/groot/2023/12/18/desktop/cake.jpg" alt="Example Image 1">
                    </div>
                    <div class="side back">
                        <img src="https://assets.winni.in/groot/2023/12/18/desktop/cake.jpg" alt="Example Image 1 Back">
                    </div>
                </div><br></br><br></br>
                <h3>
                <div class="label">Cake</div>
                </h3>
            </div>
        
        
            <div class="image-wrapper">
                <div class="image"><br></br><br></br>
                    <div class="side front">
                        <img src="https://assets.winni.in/groot/2023/12/18/desktop/flowers.jpg" alt="Example Image 4">
                    </div>
                    <div class="side back">
                        <img src="https://assets.winni.in/groot/2023/12/18/desktop/flowers.jpg" alt="Example Image 4 Back">
                    </div>
                </div><br></br><br></br>
                <h3>
                <div class="label">Flowers</div>
                </h3>
            </div>
        
            <div class="image-wrapper">
                <div class="image"><br></br><br></br>
                    <div class="side front">
                        <img src="https://assets.winni.in/groot/2023/12/18/desktop/gifts.jpg" alt="Example Image 5">
                    </div>
                    <div class="side back">
                        <img src="https://assets.winni.in/groot/2023/12/18/desktop/gifts.jpg" alt="Example Image 5 Back">
                    </div>
                </div><br></br><br></br>
                <h3>
                <div class="label">Gifts</div>
            </h3>
            </div>
        
            <div class="image-wrapper">
                <div class="image"><br></br><br></br>
                    <div class="side front">
                        <img src="https://assets.winni.in/groot/2023/12/18/desktop/personalised.jpg" alt="Example Image 6">
                    </div>
                    <div class="side back">
                        <img src="https://assets.winni.in/groot/2023/12/18/desktop/personalised.jpg" alt="Example Image 6 Back">
                    </div>
                </div><br></br><br></br>
                <h3>
                <div class="label">Personalised</div>
                </h3>
            </div>
        
            <div class="image-wrapper">
                <div class="image"><br></br><br></br>
                    <div class="side front">
                        <img src="https://assets.winni.in/groot/2023/12/18/desktop/plants.jpg" alt="Example Image 7">
                    </div>
                    <div class="side back">
                        <img src="https://assets.winni.in/groot/2023/12/18/desktop/plants.jpg" alt="Example Image 7 Back">
                    </div>
                </div><br></br><br></br>
                <h3>
                <div class="label">Plants</div>
                </h3>
            </div>
            <div class="image-wrapper">
                <div class="image"><br></br><br></br>
                    <div class="side front">
                        <img src="https://assets.winni.in/groot/2024/01/22/desktop/desktop-crystal-gift.jpg" alt="Example Image 7">
                    </div>
                    <div class="side back">
                        <img src="https://assets.winni.in/groot/2024/01/22/desktop/desktop-crystal-gift.jpg" alt="Example Image 7 Back">
                    </div>
                </div><br></br><br></br>
                <h3>
                <div class="label">Crystal Gifts</div>
                </h3>
            </div>
        </div><br></br><br></br><br></br><br></br><br></br>
        <div class="ad">
        <img src="https://i.pinimg.com/originals/40/23/d2/4023d2ec4746d8a5b77f111c63d5749e.gif" alt="ad"><br></br>
        
        </div>
    <br></br><br></br><br></br>
    <div class="countdown-container">
        <div class="countdown" id="countdown"></div>
        <div class="message">hours left for today's delivery. Explore now!</div>
    </div>
    
    <script>
    function updateCountdown() {
        const now = new Date();
        const endOfDay = new Date();
        endOfDay.setHours(23, 59, 59, 999);

        const timeLeft = endOfDay - now;

        if (timeLeft > 0) {
            const hours = Math.floor(timeLeft / (1000 * 60 * 60));
            const minutes = Math.floor((timeLeft % (1000 * 60 * 60)) / (1000 * 60));
            const seconds = Math.floor((timeLeft % (1000 * 60)) / 1000);

            document.getElementById('countdown').textContent = 
                `${hours}h ${minutes}m ${seconds}s`;
        } else {
            document.getElementById('countdown').textContent = "Time's up!";
        }
    }

    setInterval(updateCountdown, 1000);
    updateCountdown(); // initial call to set the countdown immediately
    </script>
        
    
        <footer>
            <div class="foot_panel">
                <div class="footer_logo">
                    <img src="amazonminitv1.jpg" alt="" class="footer_logo1">
                    <img src="tagline.png" alt="" class="footer_logo1">
                    <img src="playstore.png" alt="" class="footer_logo1">
                </div>
                <div class="footer_logoo">
                    <img src="scan.png" alt="" class="footer_logoo1">
                    <img src="appstore.png" alt="" class="footer_logo1">
                </div>
                <center>
                    <div class="footer1">
                        <a href="#" class="foot-link"> About Us </a>
                        <a href="#" class="foot-link"> SiteMap </a>
                        <a href="#" class="foot-link"> Contact Us </a>
                        <a href="#" class="foot-link"> Our Blog </a>
                        <a href="#" class="foot-link"> Support </a>
                        <a href="#" class="foot-link"> Terms & Conditions </a>
                        <a href="#" class="foot-link"> Privacy Policy </a>
                        <a href="#" class="foot-link"> Disclaimer </a>
                        <a href="#" class="foot-link"> FAQ </a>
                        <a href="#" class="foot-link"> Coupons </a>
                    </div>
                </center>
            </div>
        </footer>
    </header>

</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="newpack.Product" %>
<%@ page import="java.util.List" %>
<%@ page import="newpack.MysqlCon" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Personalized Mug</title>
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
.header .logo img {
    height: 50px;
}
.header .search-bar {
    flex-grow: 1;
    margin: 0 10px;
    position: relative;
    max-width: 300px;
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
    transform: translateY(-50%);
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

:root {
--primary: #18253c;
/* --primary: #fff; */
--secondary: #e497bd;
--bg: #d1b7c6;
/* --bg: #f5f5f5; */
}

* {
margin: 0;
padding: 0;
box-sizing: border-box;
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
    :root {
            --primary: #18253c;
            --secondary: #e86b8a;
            --bg: #fff;
        }

        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            background-color: var(--bg);
            overflow-x: hidden;
            font-family: sans-serif; /* Add appropriate font */
        }

        .slider {
            background-color: var(--bg);
            padding: 1rem;
            margin: 7rem auto;
            display: flex;
            font: normal 1rem sans-serif;
        }

        .card {
            position: relative;
            min-width: 17rem;
            height: 23rem;
            background-color: var(--primary);
            color: #fff;
            border-radius: 1rem;
            border: 0.1rem solid transparent;
            box-shadow: 0 0.2rem 0.6rem rgba(0, 0, 0, 0.3);
            transition: 0.5s ease-in-out;
        }

        @media screen and (max-width: 500px) {
            .card {
                min-width: 21rem;
            }
        }

        .card:not(:first-child) {
            margin-left: 2rem;
        }

        .card:first-child {
            margin-left: 0.4rem;
        }

        .card:hover {
            border: 0.1rem solid var(--secondary);
            transform: scale(1.05);
        }

        .card-content {
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            overflow: hidden;
            border-radius: inherit;
            display: flex;
            flex-direction: column;
            justify-content: space-around;
            align-items: center;
        }

        .card-content::before, .card-content::after {
            position: absolute;
            content: "";
            background-color: var(--secondary);
            border-radius: 50%;
            transition: 0.5s ease-in-out;
        }

        .card-content::before {
            top: -6%;
            right: -6%;
            width: 9rem;
            height: 9rem;
        }

        .card-content::after {
            bottom: -6%;
            left: -6%;
            width: 5rem;
            height: 5rem;
        }

        .card-content:hover::before {
            transform: scale(1.8);
        }

        .card-content:hover::after {
            transform: scale(0);
        }

        .card-img, .card-title {
            transform: translateY(4rem);
            transition: 0.5s ease-in-out;
        }

        .card-img {
            width: auto;
            height: 9.5rem;
        }

        .card-title {
            font-size: 1rem;
            text-transform: capitalize;
            transition-delay: 0.1s;
        }

        .star {
            font-size: 1.4rem;
            color: gold;
        }

        .card-price {
            font-weight: bolder;
            font-size: 1.5rem;
        }

        .btn {
            display: inline-block;
            padding: 0.5rem 1rem;
            background-color: unset;
            border: none;
            outline: none;
            border-radius: 2rem;
            color: #fff;
            cursor: pointer;
            margin-right: 0.3rem;
        }

        .btn:last-child {
            margin-right: 0;
        }

        .btn-success {
            background-color: var(--secondary);
        }

        .btn-wishlist {
            border: 0.1rem solid var(--secondary);
        }

        .card:hover .card-img, .card:hover .card-title, .card:hover .star, .card:hover .card-price, .card:hover .btn {
            transform: translateY(0);
        }

        .arrow {
            position: absolute;
            top: 50%;
            transform: translateY(-50%);
            width: 3rem;
            height: 3rem;
            background-color: #fff;
            color: #000;
            border-radius: 50%;
            outline: 0.5rem solid transparent;
            font-weight: 800;
            font-size: 1.5rem;
            text-align: center;
            line-height: 3rem;
            user-select: none;
            cursor: pointer;
            transition: 0.5s ease-in-out;
            z-index: 200;
        }

        .arrow:active {
            background-color: #ddd;
        }

        .left {
            left: 1rem;
        }

        .right {
            right: 1rem;
        }

        .wishlist {
            position: absolute;
            right: 1rem;
            bottom: 1rem;
            width: 4rem;
            height: 4rem;
            background-color: #fff;
            border-radius: 50%;
            outline: 0.5rem solid transparent;
            text-align: center;
            line-height: 4rem;
            cursor: pointer;
            box-shadow: 0 0.2rem 0.6rem rgba(0, 0, 0, 0.3);
            transition: 0.5s ease-in-out;
        }

        .wishlist.active {
            width: 8rem;
            border-radius: 0.8rem;
        }

        .wishlist.active > span {
            margin-left: -4rem;
        }

        .wishlist:hover {
            outline: 0.5rem solid rgba(255, 255, 255, 0.9);
        }

        .wishlist::before {
            position: absolute;
            content: attr(data-wishlist-count);
            top: -0.5rem;
            right: -0.5rem;
            width: 2rem;
            height: 2rem;
            color: #fff;
            background-color: #f00;
            font-family: sans-serif;
            border-radius: 50%;
            text-align: center;
            line-height: 2rem;
        }

        .wishlist-icon {
            font-size: 2rem;
            transition: 0.5s ease-in-out;
        }

        .flying-img {
            position: absolute;
            animation: fly_to_wishlist 1s ease-in-out;
        }

        @keyframes fly_to_wishlist {
            0% {
                left: 0;
                top: 0;
            }
            45%, 50% {
                left: var(--left);
                top: 60px;
                transform: scale(0.2);
            }
            80%, 90% {
                left: var(--left);
                top: var(--top);
                transform: scale(0.2);
            }
            100% {
                left: calc(var(--left) + 40px);
                top: var(--top);
                transform: scale(0.2);
               } 
    
    	.container {
            width: 80%;
            margin: 0 auto;
            text-align: left;
            padding: 20px 0;
        }
        .footer-top {
            display: flex;
            justify-content: space-between;
            align-items: center;
            border-bottom: 1px solid #ddd;
            padding-bottom: 20px;
        }
        .footer-top div {
            text-align: center;
            flex: 1;
        }
        .footer-top div img {
            width: 50px;
            display: block;
            margin: 0 auto 10px;
        }
        .footer-links {
            display: flex;
            justify-content: space-between;
            padding: 20px 0;
        }
        .footer-links div {
            flex: 1;
            margin: 0 10px;
        }
        .footer-links div strong {
            display: block;
            margin-bottom: 10px;
        }
        .footer-links div a {
            display: block;
            color: #007bff;
            text-decoration: none;
            margin-bottom: 5px;
        }
        .footer-bottom {
            text-align: center;
            padding: 20px 0;
            border-top: 1px solid #ddd;
        }
        .footer-bottom img {
            width: 100px;
            margin: 0 10px;
        }
        .footer-bottom .social-icons img {
            width: 25px;
            margin: 0 5px;
        }

        body {
            font-family: Arial, sans-serif;
            background-color: #f9f9f9;
            margin: 0;
            padding: 0;
        }
        .footer-section {
            background-color: #e6e6e6;
            padding: 20px 0;
        }
        .footer-icons {
            display: flex;
            justify-content: space-around;
            align-items: center;
            border-bottom: 1px solid #ddd;
            padding-bottom: 10px;
        }
        .footer-icons div {
            text-align: center;
            flex: 1;
        }
        .footer-icons div img {
            width: 30px;
            display: block;
            margin: 0 auto 5px;
        }
        .footer-company-info {
            text-align: center;
            padding: 10px 20px;
            font-size: 14px;
        }

    </style>
    <body>
    <header>
        <div class="header">
            <div class="logo">
                <img src="logo.png" alt="">
            </div>
            <div class="search-bar">
                <input type="text" placeholder="Search for gifts">
                <div class="search-icon">🔍</div>
            </div>
            <div class="delivery-location">
                <button>Delivery Location</button>
            </div>
            <div class="user-info">
                
                <div class="profile-dropdown">
                    <img src="https://st2.depositphotos.com/2668729/6278/v/600/depositphotos_62783141-stock-illustration-male-avatar-icon-on-white.jpg" alt="Profile">
                    <div class="profile-dropdown-content">
                        <h2>Welcome</h2>
                        <p>To access account and manage orders</p>
                        <a href="#" class="signup-login">Signup/Login</a>
                        <a href="#">My Winni</a>
                        <a href="#">My Orders</a>
                        <a href="#">My Address Book</a>
                        <a href="#">My Wallet</a>
                        <a href="#">My Reminder</a>
                    </div>
                </div>
                <button><span>0</span> ❤</button>
                <button><span>0</span> 🛒</button>
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
                        <a href="#">Mugs</a>
                        <a href="#">Cushions</a>
                        <a href="#">Water Bottles</a>
                        <a href="#">Key Chains</a>
                        <a href="#">Clocks</a>
                        <a href="#">Chocolates</a>
                        <a href="#">Engraved Gifts</a>
                        <a href="#">T-Shirts</a>
                        <a href="#">Stationary Gifts</a>
                        <a href="#">Personalized Accessories</a>
                    </div>
                    <div class="dropdown-column">
                        <h3>Special Gifts</h3>
                        <a href="#">New Arrival</a>
                        <a href="#">Photo Frames</a>
                        <a href="#">LED Frames</a>
                        <a href="#">Photo To Art</a>
                        <a href="#">Caricatures</a>
                        <a href="#">Personalised Combos</a>
                    </div>
                    <div class="dropdown-column">
                        <h3>By Recipients</h3>
                        <a href="#">For Her</a>
                        <a href="#">For Him</a>
                        <a href="#">For Husband</a>
                        <a href="#">For Wife</a>
                        <a href="#">For Kids</a>
                        <a href="#">For Couples</a>
                    </div>
                    <div class="dropdown-column">
                        <h3>By Occasions</h3>
                        <a href="#">Birthday Gifts</a>
                        <a href="#">Anniversary</a>
                        <a href="#">Wedding Gifts</a>
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
    
       
        <div class="content">
            
            <div class="filter-bar">
                <div class="delivery-date">
                    <label for="delivery-date">Delivery Date:</label>
                    <input type="date" id="delivery-date">
                </div>
                <div class="filter-price">
                    <label for="filter-price">Filter by Price:</label>
                    <select id="filter-price">
                        <option value="all">All Products</option>
                        <option value="low">499 and Below</option>
                        <option value="high">500-999</option>
                        <option value="high">1000-1499</option>
                        <option value="high">1500-2499</option>
                        <option value="high">2500 and Above</option>
    
    
                    </select>
                </div>
                <div class="sort-by">
                    <label for="sort-by">Sort by:</label>
                    <select id="sort-by">
                        <option value="popularity">Popularity</option>
                        <option value="rating">Price - Low to High</option>
                        <option value="newest">Price - High to Low</option>
                        <option value="newest">Bestseller</option>
                        <option value="newest">Premium</option>
                        <option value="newest">Trending</option>
    
                    </select>
                </div>
    </div>
</header>
<body>
	<h1 style="text-align: center;">Personalized Mugs</h1>
       <div class="slider">
        <% 
            MysqlCon mysqlCon = new MysqlCon();
            List<Product> listProducts = mysqlCon.getProducts();
            if (!listProducts.isEmpty()) {
                for (Product product : listProducts) { 
        %>
        <div class="card">
        	<div class="card-content">
                    <a href="menu.html"> <!-- Replace with appropriate links or actions -->
                        <img src="<%= product.getImageUrl() %>" alt="Product-Image" class="card-img">
                    </a>
                    <figcaption><%= product.getCaption() %></figcaption>
                    <div class="card-price">
                     	<i class="fas fa-indian-rupee-sign"></i> <%= product.getPrice() %>
                    </div>
                    <div class="rating">★ <%= product.getRating() %></div>
                    <button class="btn btn-sucess add-to-cart">Add to Cart</button>
                    <button class="btn btn-wishlist add-to-wishlist">Add to Wishlist</button>
            </div>
         </div>
		 <% 
                }
            } else { 
        %>
                <p>No products available</p>
        <%
        	}
        %>
    <span class="arrow left">&#129120;</span>
    <span class="arrow right">&#129122;</span>

    <div class="wishlist" data-wishlist-count="0">
        <span class="wishlist-icon">&#10084;</span>
    </div>
    <div class="container">
        <div class="footer-top">
            <div>
                <img src="https://encrypted-tbn3.gstatic.com/images?q=tbn:ANd9GcTggK9jbqs_duwa94HvuEmPXXD7bUgJdJvbFojOLyl4FKBKN2KE" alt="Cities Icon">
                <strong>700+ Cities</strong>
                <span>Happily Delivering</span>
            </div>
            <div>
                <img src="winnilogo.jpg" alt="Secure Payments Icon">
                <strong>100% Secure Payments</strong>
                <span>All Major Credit & Debit Cards Accepted</span>
            </div>
            <div>
                <img src="https://encrypted-tbn2.gstatic.com/images?q=tbn:ANd9GcToF59xpFT5IFJWur9k4UhG58XolOP-DELQgGl7JEjk0OM09rXQ" alt="Customers Icon">
                <strong>20,000,000</strong>
                <span>Customers Across The World</span>
            </div>
        </div>
        <div class="footer-links">
            <div>
                <strong>Our Company</strong>
                <a href="#">About Us</a>
                <a href="#">Careers</a>
                <a href="#">Contact Us</a>
                <a href="#">Affiliate Program</a>
                <a href="#">In News</a>
            </div>
            <div>
                <strong>Quick Links</strong>
                <a href="#">Wishes</a>
                <a href="#">Sitemap</a>
                <a href="#">Customer Reviews</a>
                <a href="#">Blog - Celebrate Relations</a>
                <a href="#">Corporate Order</a>
                <a href="#">Franchise Enquiry</a>
            </div>
            <div>
                <strong>Policy & Security</strong>
                <a href="#">FAQ</a>
                <a href="#">Refund Policy</a>
                <a href="#">Privacy Policy</a>
                <a href="#">Bug Bounty</a>
                <a href="#">Data Security</a>
                <a href="#">Cancellation Policy</a>
                <a href="#">Terms And Conditions</a>
                <a href="#">Payments And Security</a>
            </div>
        </div>
        <div class="footer-bottom">
            <div>
                <strong>Connect with Us</strong>
                <br>
                <br>
                <div class="social-icons">
                    <a href="#"><img src="https://encrypted-tbn2.gstatic.com/images?q=tbn:ANd9GcSqSus_ZW1VInrsk_ahD1ANdvOhp1YYjvcuBxWdPElJ-1do47y8" alt="Facebook"></a>
                    <a href="#"><img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSE_enuwPDqhjD1CdTDbbC4CeQBgvnYEYKsHPB_LkGZ1wSnoq8j" alt="Instagram"></a>
                    <a href="#"><img src="https://encrypted-tbn2.gstatic.com/images?q=tbn:ANd9GcQSFOwAY163jUQStUDspVAei99hl1GV9x3_48nmBRzz88RLwss3" alt="YouTube"></a>
                    <a href="#"><img src="https://encrypted-tbn3.gstatic.com/images?q=tbn:ANd9GcTNcWVbFybgtt9_VsKCwUzvZ2c7dZV5wTo5fldtjfxt4v4mhgto" alt="LinkedIn"></a>
                    <a href="#"><img src="https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcQWSATu0gcp6u4UYpULc-hTZiSM7xFOlvS1ok-xhb9IauYOuQD4" alt="Twitter"></a>
                    <a href="#"><img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRrWtrIVEX0YkYa5OX-FoODmcUIHh3-CHlyUzJK46ZHKVA5Ld-I" alt="WhatsApp"></a>
                </div>
            </div>
            <div>
                <span>© 2013 - 2024 Winni.in. All Rights Reserved</span>
            </div>
            <div>
                <br>

                <strong>Experience Winni on mobile</strong>
                <a href="#"><img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSBGpw3_0cNPwILkaN_QKq6sqZEjsxm002XuwLfgI_h-kOi2Suf" alt="Google Play"></a>
                <a href="#"><img src="https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcRA4BZ6Lq8mLh9O1D6oEF2Q0trwVI3cTFSPSm0lidMqruBGhm7-" alt="App Store"></a>
            </div>
        </div>
    </div>


    <div class="footer-section">
        <div class="footer-icons">
            <div>
                <img src="https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcT8VorOszUJBLJ8j6ivjstNnKu4NqWkqBouOOgTp2Wfp6D-YrFY" alt="Help Center">
                <strong>Help Center</strong>
            </div>
            <div>
                <img src="https://encrypted-tbn2.gstatic.com/images?q=tbn:ANd9GcQ3kUDaNPDTQlXsDh7IihAx_3LDiWxqidBR6hBzqOXA3DbgaqbP" alt="Vendor Tie-Ups">
                <strong>Vendor Tie-Ups</strong>
            </div>
            <div>
                <img src="data:image/png;base64,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" alt="Corporate Order">
                <strong>Corporate Order</strong>
            </div>
            <div>
                <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRh8bYiDI5QbJZ0g6mKClnE5N6Zk_nk7UCXvz61Z3T0mRiTHTob" alt="Franchise Enquiry">
                <strong>Franchise Enquiry</strong>
            </div>
            <div>
                <img src="https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcSR-c-g5LxiGJpE5xe4816WpwZOHG8zzGdOHMrAqJh0WqIbTq3Q" alt="Winni In News">
                <strong>Winni In News</strong>
            </div>
        </div>
        <div class="footer-company-info">
            Company Name: Dhawala Online Solutions Private Limited | CIN: U51109KA2012PTC065653 | Regd. Office Address: 3rd Floor, PLOT. NO # 128/P2, EPIP Industrial Area Whitefield, Sonnenahalli Village, Bangalore – 560066 | Contact no. +91 – 7829463510 | E-mail: info@winni.in
        </div>
    </div>
</footer>
<script>
        document.addEventListener('DOMContentLoaded', () => {
            const cards = document.querySelectorAll('.card');
            const rightArrow = document.querySelector('.arrow.right');
            const leftArrow = document.querySelector('.arrow.left');
            const wishlist = document.querySelector('.wishlist');
            const wishlistButtons = document.querySelectorAll('.add-to-wishlist');

            let left = 0;
            let cardSize = 25.4;
            let totalCardSize = cards.length * cardSize - cardSize * 4;

            if (window.matchMedia('(max-width: 768px)').matches) {
                cardSize = 52;
                totalCardSize = cards.length * cardSize - cardSize * 2;
            }

            leftArrow.style.opacity = '0';

            leftArrow.addEventListener('click', () => {
                left = Math.max(left - cardSize, 0);
                moveCards(left);
                checkArrowVisibility(left);
            });

            rightArrow.addEventListener('click', () => {
                left = Math.min(left + cardSize, totalCardSize);
                moveCards(left);
                checkArrowVisibility(left);
            });

            function moveCards(left) {
                cards.forEach(card => {
                    card.style.left = -left + '%';
                });
            }

            function checkArrowVisibility(pos) {
                leftArrow.style.opacity = pos === 0 ? '0' : '1';
                rightArrow.style.opacity = pos >= totalCardSize ? '0' : '1';
            }

            // Fly to Wishlist Effect
            wishlistButtons.forEach(wishlistBtn => {
                wishlistBtn.addEventListener('click', (e) => {
                    wishlist.classList.add('active');

                    let wishlistCount = Number(wishlist.getAttribute('data-wishlist-count')) || 0;
                    wishlist.setAttribute('data-wishlist-count', wishlistCount + 1);

                    let targetParent = e.target.closest('.card');
                    targetParent.style.zIndex = '100';

                    let img = targetParent.querySelector('img');
                    let flyingImg = img.cloneNode();
                    flyingImg.classList.add('flying-img');

                    targetParent.appendChild(flyingImg);

                    const flyingImgPos = flyingImg.getBoundingClientRect();
                    const wishlistPos = wishlist.getBoundingClientRect();

                    let data = {
                        left: wishlistPos.left - (wishlistPos.width / 2 + flyingImgPos.left + flyingImgPos.width / 2),
                        top: wishlistPos.bottom - flyingImgPos.bottom + 30
                    };

                    flyingImg.style.cssText = `
                        --left: ${data.left}px;
                        --top: ${data.top}px;
                    `;

                    setTimeout(() => {
                        targetParent.style.zIndex = '';
                        targetParent.removeChild(flyingImg);
                        wishlist.classList.remove('active');
                    }, 1000);
                });
            });
        });
    </script>
    </body>
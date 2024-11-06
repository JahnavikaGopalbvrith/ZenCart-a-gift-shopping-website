<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
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
        width: 250px;
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
        border-radius: 50%;
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
        color: purple;
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
        align-items: first baseline;
    }
    .content {
        padding: 20px;
        background-color: #fff;
        height: max-content;
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
        color: #555;
    }
    .wishlist-icon {
        font-size: 24px;
        cursor: pointer;
        color: #e86b8a;
        transition: color 0.3s;
    }
    .wishlist-icon:hover {
        color: #ff3366;
    }
</style>
</head>
<body>

    <header>
        <div class="header">
            <div class="logo">
                <img src="logo.jpg" alt="Winni Logo">
            </div>
            <div class="search-bar">
                <input type="text" placeholder="Search for gifts">
                <div class="search-icon">🔍</div>
            </div>
            <div class="delivery-location">
                <button>Delivery Location</button>
            </div>
            <div class="user-info">
                <button>Help</button>
                <button>Currency - INR</button>
                <button>Corporate Gifts</button>
                <button>Track Order</button>
                <div class="profile-dropdown">
                    <img src="profile.jpg" alt="Profile">
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
                <button id="wishlist-button">
                    <span>0</span> <span class="wishlist-icon">&#10084;</span> <!-- Heart icon -->
                </button>
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
                <img src="vehicle.gif" alt="Vehicle" class="vehicle">
            </div>
        </div>
        <div class="breadcrumbs">
            <a href="#">Home</a> &gt; <a href="#">Personalized Gifts</a> &gt; Clocks
        </div>
        <div class="content">
            <h1>Explore our <span>Personalised Clocks</span></h1>
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
        </div>
    </header>

    <script>
        document.addEventListener('DOMContentLoaded', function () {
            const wishlistButton = document.getElementById('wishlist-button');
            const wishlistCountSpan = wishlistButton.querySelector('span');

            wishlistButton.addEventListener('click', function () {
                let currentCount = parseInt(wishlistCountSpan.textContent);
                currentCount += 1;
                wishlistCountSpan.textContent = currentCount;
            });
        });
    </script>
</body>
</html>

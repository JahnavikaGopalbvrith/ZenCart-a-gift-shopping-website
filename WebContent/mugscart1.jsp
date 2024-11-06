<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css" integrity="sha512-DTOQO9RWCH3ppGqcWaEA1BIZOC6xxalwEsw9c2QQeAIftl+Vegovlnee1c9QX4TctnWMn13TZye+giMm8e2LwA==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <title>Anniversary Personalized Mug</title>
    <style>
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
            box-shadow: 0px 8px 16px 0px rgba(0, 0, 0, 0.2);
            z-index: 1;
            width: 800px;
            left: 0;
            right: 0;
            margin: auto;
            color: #000;
            padding: 20px;
        }
        .dropdown-content .dropdown-column {
            float: left;
            width: 25%;
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
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f9f9f9;
        }
        .profile-dropdown {
            position: relative;
            display: inline-block;
        }
        .profile-dropdown-content {
            display: none;
            position: absolute;
            background-color: #fff;
            box-shadow: 0px 8px 16px 0px rgba(0, 0, 0, 0.2);
            z-index: 1;
            right: 0;
            padding: 10px;
            border-radius: 4px;
            width: 200px;
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
        .product-container {
            display: flex;
            justify-content: space-around;
            margin: 20px;
            padding: 20px;
            background-color: #fff;
            border-radius: 5px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }
        .product-image img {
            max-width: 300px;
            border-radius: 5px;
        }
        .product-details {
            max-width: 400px;
        }
        .product-details h2 {
            margin: 0 0 10px;
        }
        .rating {
            color: #e4007f;
        }
        .price {
            font-size: 24px;
            color: #333;
            margin: 10px 0;
        }
        .upload-photo {
            margin: 20px 0;
        }
        .upload-photo label {
            display: block;
            margin-bottom: 5px;
        }
        .check-delivery {
            display: flex;
            align-items: center;
            margin: 20px 0;
        }
        .check-delivery input {
            flex-grow: 1;
            padding: 5px;
            margin-right: 5px;
        }
        .check-delivery button {
            padding: 6px 10px;
        }
        .add-to-cart {
            background-color: #00b500;
            color: #fff;
            padding: 10px 20px;
            border: none;
            cursor: pointer;
            border-radius: 5px;
        }
        .add-to-cart:hover {
            background-color: #009e00;
        }
        .offers, .upgrades {
            margin-top: 20px;
        }
        .upgrades img {
            width: 100px;
            height: auto;
            margin-right: 10px;
            border-radius: 5px;
        }
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
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
            padding: 0 10px;
        }
        .footer-links h3 {
            margin-top: 0;
            color: #333;
        }
        .footer-links ul {
            list-style-type: none;
            padding: 0;
        }
        .footer-links ul li {
            margin: 10px 0;
        }
        .footer-links ul li a {
            color: #555;
            text-decoration: none;
        }
        .footer-links ul li a:hover {
            text-decoration: underline;
        }
        .footer-bottom {
            text-align: center;
            padding: 10px 0;
            border-top: 1px solid #ddd;
        }
        .footer-bottom a {
            color: #333;
            text-decoration: none;
        }
        .footer-bottom a:hover {
            text-decoration: underline;
        }
        .cart-count {
            margin-right: 10px;
        }
    </style>
</head>
<body>
    <div class="header">
        <div class="logo">
             <h3>ZENC<i class="fa-solid fa-cart-shopping"></i>RT</h3>
        </div>
        <div class="search-bar">
            <input type="text" placeholder="Search for a product">
            <i class="fa fa-search search-icon"></i>
        </div>
        <div class="delivery-location">
            <button>Deliver to <span>New York</span></button>
        </div>
        <div class="user-info">
            <button class="wishlist"><i class="fa fa-heart"></i> <span>Wishlist</span></button>
            <button class="cart">
                <span class="cart-count" id="cart-count">0</span>
                <i class="fa fa-shopping-cart"></i> <span>Cart</span>
            </button>
            <div class="profile-dropdown">
                <img src="images/profile.jpg" alt="Profile Image">
                <div class="profile-dropdown-content">
                    <h2>Hello, User</h2>
                    <p>user@example.com</p>
                    <a href="profile.jsp">My Profile</a>
                    <a href="orders.jsp">My Orders</a>
                    <a href="logout.jsp">Logout</a>
                    <a href="signup.jsp" class="signup-login">Sign Up/Login</a>
                </div>
            </div>
        </div>
    </div>
    <div class="nav">
        <a href="homepage.jsp">Home</a>
        <a href="aboutus.jsp">About Us</a>
        <a href="services.jsp">Services</a>
        <div class="dropdown">
            <a href="products.jsp">Products</a>
            <div class="dropdown-content">
                <div class="dropdown-column">
                    <h3>Category 1</h3>
                    <a href="#">Subcategory 1</a>
                    <a href="#">Subcategory 2</a>
                    <a href="#">Subcategory 3</a>
                </div>
                <div class="dropdown-column">
                    <h3>Category 2</h3>
                    <a href="#">Subcategory 4</a>
                    <a href="#">Subcategory 5</a>
                    <a href="#">Subcategory 6</a>
                </div>
                <div class="dropdown-column">
                    <h3>Category 3</h3>
                    <a href="#">Subcategory 7</a>
                    <a href="#">Subcategory 8</a>
                    <a href="#">Subcategory 9</a>
                </div>
                <div class="dropdown-column">
                    <h3>Category 4</h3>
                    <a href="#">Subcategory 10</a>
                    <a href="#">Subcategory 11</a>
                    <a href="#">Subcategory 12</a>
                </div>
            </div>
        </div>
        <a href="contacts.jsp">Contact Us</a>
    </div>
    <div class="container">
        <div class="product-container">
            <div class="product-image">
                <img src="https://assets.winni.in/product/primary/2022/6/61356.jpeg?dpr=1&w=400" alt="Anniversary Personalized Mug">
            </div>
            <div class="product-details">
                <h2>Anniversary Personalized Mug</h2>
                <div class="rating">
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star-half-alt"></i>
                    (4.5)
                </div>
                <p class="price">$14.99</p>
                <div class="upload-photo">
                    <label for="upload">Upload Your Photo:</label>
                    <input type="file" id="upload">
                </div>
                <div class="check-delivery">
                    <input type="text" placeholder="Enter delivery pin code">
                    <button>Check</button>
                </div>
                <button class="add-to-cart" id="add-to-cart">ADD TO CART</button>
                <div class="offers">
                    <h3>Offers:</h3>
                    <ul>
                        <li>Get 10% off on your first purchase</li>
                        <li>Buy 2 get 1 free</li>
                        <li>Free delivery on orders over $50</li>
                    </ul>
                </div>
                <div class="upgrades">
                    <h3>Upgrade Your Purchase:</h3>
                    <img src="images/keychain.jpg" alt="Keychain">
                    <img src="images/tshirt.jpg" alt="T-shirt">
                </div>
            </div>
        </div>
    </div>
    <footer>
        <div class="container">
            <div class="footer-top">
                <div>
                    <img src="images/icon1.png" alt="Icon 1">
                    <p>Free Shipping</p>
                </div>
                <div>
                    <img src="images/icon2.png" alt="Icon 2">
                    <p>24/7 Support</p>
                </div>
                <div>
                    <img src="images/icon3.png" alt="Icon 3">
                    <p>Money Back Guarantee</p>
                </div>
            </div>
            <div class="footer-links">
                <div>
                    <h3>About Us</h3>
                    <ul>
                        <li><a href="#">Our Story</a></li>
                        <li><a href="#">Mission & Values</a></li>
                        <li><a href="#">Careers</a></li>
                    </ul>
                </div>
                <div>
                    <h3>Customer Service</h3>
                    <ul>
                        <li><a href="#">Contact Us</a></li>
                        <li><a href="#">FAQs</a></li>
                        <li><a href="#">Shipping & Returns</a></li>
                    </ul>
                </div>
                <div>
                    <h3>Follow Us</h3>
                    <ul>
                        <li><a href="#">Facebook</a></li>
                        <li><a href="#">Twitter</a></li>
                        <li><a href="#">Instagram</a></li>
                    </ul>
                </div>
            </div>
            <div class="footer-bottom">
                <p>&copy; 2024 Personalized Mug Shop. All Rights Reserved. <a href="privacypolicy.jsp">Privacy Policy</a> | <a href="terms.jsp">Terms & Conditions</a></p>
            </div>
        </div>
    </footer>
    <script>
        document.addEventListener("DOMContentLoaded", function() {
            let cartCount = localStorage.getItem('cartCount') ? parseInt(localStorage.getItem('cartCount')) : 0;
            const addToCartButton = document.getElementById("add-to-cart");
            const cartCountElement = document.getElementById("cart-count");

            cartCountElement.textContent = cartCount;

            addToCartButton.addEventListener("click", function() {
                cartCount++;
                localStorage.setItem('cartCount', cartCount);
                cartCountElement.textContent = cartCount;
                window.location.href = "cart.html"; // Redirect to cart1.jsp
            });
        });
    </script>
</body>
</html>

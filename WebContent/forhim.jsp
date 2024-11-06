<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="newpack.forhim" %>
<%@ page import="java.util.List" %>
<%@ page import="newpack.forhimsql" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css" integrity="sha512-DTOQO9RWCH3ppGqcWaEA1BIZOC6xxalwEsw9c2QQeAIftl+Vegovlnee1c9QX4TctnWMn13TZye+giMm8e2LwA==" crossorigin="anonymous" referrerpolicy="no-referrer" />
<title>MUGS</title>
</head>
<style>body {
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
    margin-right:70px;
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
    margin-left: 70px;
}
.header .delivery-location button,
.header .user-info button {
    background: none;
    border: none;
    cursor: pointer;
    color: #555;
    font-size: 14px;
    margin-right:40px;
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
    margin-left: 60px;
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
    .filter-bar .delivery-date label
     {
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
        }</style>
<body>

<header>
        <div class="header">
            <div class="logo">
                   <h3>ZENC<i class="fa-solid fa-cart-shopping"></i>RT</h3>
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
                    <img src="https://st2.depositphotos.com/2668729/6278/v/600/depositphotos_62783141-stock-illustration-male-avatar-icon-on-white.jpg" alt="Profile">Account
                    <div class="profile-dropdown-content">
                        <h2>Welcome</h2>
                        <p>To access account and manage orders</p>
                        <a href="#" class="signup-login">Signup/Login</a>
                        <a href="#">My App</a>
                        <a href="#">My Orders</a>
                        <a href="#">My Address Book</a>
                        <a href="#">My Wallet</a>
                        <a href="#">My Reminder</a>
                    </div>
                </div>
                
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
    <h1 style="text-align: center;">Personalized Mugs</h1>
    
    <div class="filter-bar" style="display: flex; justify-content: center;">
        <div class="delivery-date">
            <label for="delivery-date">Delivery Date:</label>
            <input type="date" id="delivery-date">
        </div>
    </div>
</div>
        
</header>
<body>
	
       <div class="slider">
        <% 
            forhimsql sqlForhim = new forhimsql();
            List<forhim> listForhim = sqlForhim.getForhimProducts();
            
            if (!listForhim.isEmpty()) {
                for (forhim product : listForhim) { 
        %>
        <div class="card">
            <div class="card-content">
                <a href="menu.html"> <!-- Replace with appropriate links or actions -->
                    <img src="<%= product.getImageUrl() %>" alt="Product Image" class="card-img">
                </a>
                <figcaption><%= product.getCaption() %></figcaption>
                <div class="card-price">
                    <i class="fas fa-indian-rupee-sign"></i> <%= product.getPrice() %>
                </div>
                <div class="rating">★ <%= product.getRating() %></div>
                <button class="btn btn-success add-to-cart" onclick="location.href='mugscart1.jsp'">Buy Now</button>
                <button class="btn btn-wishlist add-to-wishlist">Add to Wishlist</button>
            </div>
        </div>
        <% 
                }
            } else { 
        %>
        <p>No products available for him</p>
        <% } %>
    </div>
    <span class="arrow left">&#129120;</span>
    <span class="arrow right">&#129122;</span>

    <div class="wishlist" data-wishlist-count="0">
        <span class="wishlist-icon">&#10084;</span>
    </div>
    
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
</html>
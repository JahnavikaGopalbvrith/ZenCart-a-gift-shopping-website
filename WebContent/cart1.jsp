<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>My Cart</title>
    <style>
        /* Add your styles here */
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
        }
        .container {
            width: 80%;
            margin: 0 auto;
            padding: 20px 0;
            text-align: center;
        }
        .cart-item {
            display: flex;
            justify-content: space-between;
            align-items: center;
            border-bottom: 1px solid #ccc;
            padding: 20px 0;
        }
        .cart-item img {
            width: 100px;
        }
        .cart-item-details {
            flex: 1;
            padding-left: 20px;
        }
        .cart-item-quantity {
            display: flex;
            align-items: center;
        }
        .cart-item-quantity button {
            width: 30px;
            height: 30px;
            font-size: 20px;
        }
        .cart-item-quantity span {
            margin: 0 10px;
            font-size: 16px;
        }
        .cart-item-total {
            font-size: 16px;
        }
        .cart-total {
            font-size: 20px;
            padding-top: 20px;
            text-align: right;
        }
        .proceed-button {
            margin-top: 20px;
            padding: 10px 20px;
            font-size: 18px;
            background-color: #28a745;
            color: white;
            border: none;
            cursor: pointer;
        }
        .proceed-button:hover {
            background-color: #218838;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>My Cart</h1>
        <div id="cart-items"></div>
        <div class="cart-total">
            Total: <span id="cart-total">0</span>
        </div>
        <a href="address1.jsp">
        <button class="proceed-button" id="proceed-button">PROCEED</button>
        </a>
        
    </div>
    <script>
        document.addEventListener("DOMContentLoaded", function() {
            let cartCount = localStorage.getItem('cartCount') ? parseInt(localStorage.getItem('cartCount')) : 0;
            const cartItemsContainer = document.getElementById("cart-items");
            const cartTotalElement = document.getElementById("cart-total");
            const proceedButton = document.getElementById("proceed-button");

            if (cartCount === 0) {
                cartItemsContainer.innerHTML = '<p>Your cart is empty.</p>';
                proceedButton.style.display = 'none';
                return;
            }

            let cartTotal = 0;

            function renderCartItem() {
                cartItemsContainer.innerHTML = '';
                const price = 449;
                const itemTotal = price * cartCount;
                cartTotal = itemTotal;
                const cartItem = `
                    <div class="cart-item">
                        <img src="https://assets.winni.in/product/primary/2024/4/94747.jpeg?dpr=1&w=400" alt="Anniversary Personalised Mug">
                        <div class="cart-item-details">
                            <h2>Couple Valentine Day Mug</h2>
                        </div>
                        <div class="cart-item-quantity">
                            <button id="decrement">-</button>
                            <span id="item-count">${cartCount}</span>
                            <button id="increment">+</button>
                        </div>
                        <div class="cart-item-total">
                            ₹${itemTotal}
                        </div>
                    </div>
                `;
                cartItemsContainer.innerHTML = cartItem;
                cartTotalElement.textContent = cartTotal;

                document.getElementById("increment").addEventListener("click", function() {
                    cartCount++;
                    localStorage.setItem('cartCount', cartCount);
                    renderCartItem();
                });

                document.getElementById("decrement").addEventListener("click", function() {
                    if (cartCount > 1) {
                        cartCount--;
                        localStorage.setItem('cartCount', cartCount);
                        renderCartItem();
                    } else {
                        localStorage.setItem('cartCount', 0);
                        cartItemsContainer.innerHTML = '<p>Your cart is empty.</p>';
                        cartTotalElement.textContent = 0;
                        proceedButton.style.display = 'none';
                    }
                });
            }

            renderCartItem();
        });
    </script>
</body>
</html>

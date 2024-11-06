<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="newpack.Product" %>
<%@ page import="java.util.List" %>
<%@ page import="newpack.MysqlCon" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Personalized Mugs</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css" integrity="sha512-DTOQO9RWCH3ppGqcWaEA1BIZOC6xxalwEsw9c2QQeAIftl+Vegovlnee1c9QX4TctnWMn13TZye+giMm8e2LwA==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <style>
        body {
            font-family: Arial, sans-serif;
        }

        .mug-container {
            display: flex;
            justify-content: center;
            margin: 20px 0;
        }

        .image-container {
            text-align: center;
            transition: transform 0.3s ease-in-out, background-color 0.3s ease-in-out;
            margin: 10px;
            padding: 10px;
            border-radius: 10px;
        }

        .image-container:hover {
            transform: scale(1.05);
            background-color: #faf4f4ec; /* Add a light grey background color on hover */
        }

        .image-container img {
            transition: transform 0.3s ease-in-out;
            border-radius: 10px;
        }

        .image-container:hover img {
            transform: scale(1.1);
        }

        .details {
            display: flex;
            justify-content: space-between;
            margin-top: 10px;
        }

        figcaption {
            margin-top: 10px;
            font-size: 18px;
            font-weight: bold;
        }

        .price i {
            margin-right: 5px;
        }

        .rating {
            color: #f7f6f1;
            background: #49a316 0% 0% no-repeat padding-box;
            padding: 0px 7px 0px 7px;
            border-radius: 4px;
            line-height: 19px;
            margin-top: 5px;
        }

        /* Feedback section and form styling */
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
            margin: 0 10px;
        }

        .feedback-section button:hover {
            background-color: #45a049;
        }

        .feedback-form {
            display: none;
            margin-top: 20px;
            text-align: center;
        }

        .feedback-form h2 {
            margin-bottom: 10px;
        }

        .feedback-form textarea {
            width: 80%;
            max-width: 400px;
            height: 100px;
            resize: vertical;
        }
    </style>
</head>
<body>
    <h1 style="text-align: center;">Personalized Mugs</h1>

    <div class="mug-container">
        <% 
            MysqlCon mysqlCon = new MysqlCon();
            List<Product> listProducts = mysqlCon.getProducts();
            if (!listProducts.isEmpty()) {
                for (Product product : listProducts) { 
        %>
                <div class="image-container">
                    <a href="menu.html"> <!-- Replace with appropriate links or actions -->
                        <img src="<%= product.getImageUrl() %>" width="280" height="280">
                    </a>
                    <figcaption><%= product.getCaption() %></figcaption>
                    <div class="details">
                        <span class="price"><i class="fas fa-indian-rupee-sign"></i> <%= product.getPrice() %></span>
                        <span class="rating">★ <%= product.getRating() %></span>
                    </div>
                </div>
        <% 
                }
            } else { 
        %>
                <p>No products available</p>
        <% } %>
    </div>

    <div class="feedback-section">
        <p>Did you find what you were looking for?</p>
        <button id="yesButton">Yes</button>
        <button id="noButton">No</button>
    </div>

    <div id="feedbackForm" class="feedback-form">
        <h2>Feedback Form</h2>
        <form action="/submit-feedback" method="post">
            <label for="feedback">Your feedback is highly valuable for us</label><br>
            <textarea id="feedback" name="feedback" rows="4" cols="50"></textarea><br>
            <input type="submit" value="Submit">
        </form>
    </div>

    <script>
        document.getElementById('yesButton').addEventListener('click', function() {
            document.getElementById('feedbackForm').style.display = 'none';
        });

        document.getElementById('noButton').addEventListener('click', function() {
            document.getElementById('feedbackForm').style.display = 'block';
        });
    </script>
</body>
</html>

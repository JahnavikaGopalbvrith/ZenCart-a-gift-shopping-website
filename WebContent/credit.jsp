<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Credit Card Payment</title>
    <style>
        body {
            font-family: Arial, sans-serif;
        }
        .container {
            max-width: 400px;
            margin: 0 auto;
            padding: 20px;
            border: 1px solid #ccc;
            border-radius: 5px;
        }
        label {
            display: block;
            margin-bottom: 5px;
        }
        input[type="text"], input[type="number"], select {
            width: 100%;
            padding: 8px;
            margin-bottom: 10px;
            border: 1px solid #ccc;
            border-radius: 4px;
            box-sizing: border-box;
        }
        input[type="submit"] {
            background-color: #4CAF50;
            color: white;
            padding: 10px 20px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
        }
        input[type="submit"]:hover {
            background-color: #45a049;
        }
    </style>
</head>
<body>
    <div class="container">
        <h2>Credit Card Payment</h2>
        <form action="lastpage.jsp" method="post"> <!-- Update action attribute here -->
            <label for="card_number">Card Number</label>
            <input type="text" id="card_number" name="card_number" placeholder="Enter card number" required>
            
            <label for="card_holder_name">Cardholder Name</label>
            <input type="text" id="card_holder_name" name="card_holder_name" placeholder="Enter cardholder name" required>
            
            <label for="expiry_date">Expiry Date</label>
            <input type="text" id="expiry_date" name="expiry_date" placeholder="MM/YYYY" pattern="\d{2}/\d{4}" required>
            
            <label for="cvv">CVV</label>
            <input type="number" id="cvv" name="cvv" placeholder="Enter CVV" min="100" max="999" required>
           
            <input type="submit" value="Pay Now">
   
        </form>
    </div>
</body>
</html>

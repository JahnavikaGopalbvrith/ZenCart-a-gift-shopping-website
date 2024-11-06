<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Winni Delivery Address</title>
    
</head>
<style>
    /* styles.css */
body {
    font-family: Arial, sans-serif;
    margin: 0;
    padding: 0;
    background-color: #f4f4f4;
}

.container {
    width: 50%;
    margin: 0 auto;
    background-color: #fff;
    padding: 20px;
    box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
}

.header {
    text-align: center;
}

.logo {
    width: 100px;
}

.location-btn {
    display: block;
    width: 100%;
    padding: 10px;
    background-color: #e91e63;
    color: #fff;
    border: none;
    cursor: pointer;
    margin-bottom: 20px;
}

.location-btn:hover {
    background-color: #d81b60;
}

.address-form {
    display: grid;
    gap: 10px;
}

.address-form label {
    font-weight: bold;
}

.address-form input, 
.address-form select {
    width: 100%;
    padding: 8px;
    border: 1px solid #ccc;
    border-radius: 4px;
}

.mobile-group {
    display: flex;
    align-items: center;
}

.mobile-group span {
    padding: 8px;
    background-color: #f1f1f1;
    border: 1px solid #ccc;
    border-radius: 4px 0 0 4px;
}

.mobile-group input {
    flex: 1;
    border-radius: 0 4px 4px 0;
}

.address-type {
    display: flex;
    justify-content: space-between;
}

.address-btn {
    flex: 1;
    padding: 10px;
    margin: 0 5px;
    border: none;
    cursor: pointer;
    background-color: #e91e63;
    color: #fff;
}

.address-btn:hover {
    background-color: #d81b60;
}

.submit-btn {
    padding: 10px;
    background-color: #4CAF50;
    color: #fff;
    border: none;
    cursor: pointer;
}

.submit-btn:hover {
    background-color: #45a049;
}

.order-summary {
    margin-top: 20px;
}

.order-summary h2 {
    font-size: 1.2em;
    border-bottom: 1px solid #ccc;
    padding-bottom: 10px;
}

.order-summary ul {
    list-style-type: none;
    padding: 0;
}

.order-summary li {
    padding: 5px 0;
}

.order-summary h3 {
    font-size: 1.4em;
    color: #e91e63;
    text-align: right;
    margin-top: 10px;
}
.label{
    padding-top: 5px;
    padding-bottom: 5px;
}
</style>
<body>
    <div class="container">
        <div class="header">
            <h1>Add Delivery Address</h1>
        </div>
        <form id="address-form" class="address-form">
            <label for="country">Select Country</label>
            <select id="country" name="country" required>
                <option value="India">India</option>
                <!-- Add other countries as needed -->
            </select>
            
            <label for="name"></label>
<input type="text" id="name" name="name" placeholder="Recipient Name" required>

<label for="address"></label>
<input type="text" id="address" name="address" placeholder="Recipient Address" required>

<label for="landmark"></label>
<input type="text" id="landmark" name="landmark" placeholder="Landmark (optional)">

<label for="pincode"></label>
<input type="text" id="pincode" name="pincode" pattern="\d{6}" title="Pin Code should be 6 digits" placeholder="Pin Code" required>

<label for="city"></label>
<input type="text" id="city" name="city" placeholder="City" required>

<label for="mobile"></label>
<div class="mobile-group">
    <span>+91</span>
    <input type="tel" id="mobile" name="mobile" pattern="\d{10}" title="Mobile number should be 10 digits" placeholder="Recipient Mobile Number" required>
</div>

<label for="alternate-mobile"></label>
<div class="mobile-group">
    <span>+91</span>
    <input type="tel" id="alternate-mobile" name="alternate-mobile" pattern="\d{10}" title="Mobile number should be 10 digits" placeholder="Alternate Mobile Number(optional)">

</div>
            <div class="address-type">
                <button type="button" class="address-btn">Home</button>
                <button type="button" class="address-btn">Office</button>
                <button type="button" class="address-btn">Other</button>
            </div>
            <button type="submit" class="submit-btn" id="submitbutton">Submit</button>
            
        </form>
    </div>

    <script>
        document.getElementById('address-form').addEventListener('submit', function(event) {
            var isValid = true;
            var errorMessages = [];

            var name = document.getElementById('name').value;
            var address = document.getElementById('address').value;
            var pincode = document.getElementById('pincode').value;
            var city = document.getElementById('city').value;
            var mobile = document.getElementById('mobile').value;

            if (name.trim() === '') {
                isValid = false;
                errorMessages.push('Recipient Name is required.');
            }
            if (address.trim() === '') {
                isValid = false;
                errorMessages.push('Recipient Address is required.');
            }
            if (!/^\d{6}$/.test(pincode)) {
                isValid = false;
                errorMessages.push('Pin Code should be 6 digits.');
            }
            if (city.trim() === '') {
                isValid = false;
                errorMessages.push('City is required.');
            }
            if (!/^\d{10}$/.test(mobile)) {
                isValid = false;
                errorMessages.push('Mobile number should be 10 digits.');
            }

            if (!isValid) {
                alert(errorMessages.join('\n'));
                event.preventDefault();
            } else {
                // Redirect to another page after successful validation
                window.location.href = 'C:\Users\NEHASRII\Desktop\winniproject\personlize.html'; // Replace with the actual URL of the next page
            }
        });
        document.getElementById('submitbutton').addEventListener('click', function() {
    window.location.href = 'pers.jsp'; // Redirect to cart.html
});
    </script>
</body>
</html>
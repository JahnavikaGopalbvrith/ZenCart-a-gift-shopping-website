<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Personalize Your Gift</title>
    
</head>
<style>
    body {
    font-family: Arial, sans-serif;
    background-color: #f4f4f4;
    margin: 0;
    padding: 0;
}

.container {
    max-width: 600px;
    margin: 50px auto;
    padding: 20px;
    background-color: #ffffff;
    border-radius: 10px;
    box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
}

.personalize-gift {
    text-align: center;
}

.personalize-gift h2 {
    color: #333;
    margin-bottom: 20px;
}

.form-group {
    margin-bottom: 15px;
    text-align: left;
}

.form-group label {
    display: block;
    margin-bottom: 5px;
    font-weight: bold;
    color: #555;
}

.form-group input[type="text"],
.form-group input[type="tel"],
.form-group input[type="datetime-local"],
.form-group textarea {
    width: 100%;
    padding: 10px;
    margin: 5px 0 10px 0;
    border: 1px solid #ccc;
    border-radius: 5px;
    font-size: 16px;
}

.occasion-buttons {
    display: flex;
    justify-content: space-around;
}

.occasion-btn {
    padding: 10px 20px;
    margin: 5px;
    border: none;
    background-color: #007bff;
    color: #ffffff;
    border-radius: 5px;
    cursor: pointer;
    transition: background-color 0.3s;
}

.occasion-btn:hover {
    background-color: #0056b3;
}

.address {
    font-size: 14px;
    color: #333;
    margin: 5px 0;
}

.checkbox-group {
    display: flex;
    align-items: center;
    margin-top: 10px;
}

.checkbox-group input {
    margin-right: 10px;
}

.price-details {
    text-align: left;
}

.price-details h3 {
    margin-bottom: 10px;
    color: #333;
}

.price-details p {
    margin: 5px 0;
    color: #555;
}

.btn {
    width: 100%;
    padding: 15px;
    background-color: #28a745;
    border: none;
    color: #ffffff;
    border-radius: 5px;
    font-size: 16px;
    cursor: pointer;
    transition: background-color 0.3s;
}

.btn-primary {
    background-color: #007bff;
}

.btn:hover {
    background-color: #218838;
}

.btn-primary:hover {
    background-color: #0056b3;
}

.btn:disabled {
    background-color: #6c757d;
    cursor: not-allowed;
}

</style>
<body>
    <div class="container">
        <div class="personalize-gift">
            <h2>Personalize Your Gift</h2>
            <form id="giftForm">
                <div class="form-group">
                    <label for="deliveryDateTime">Delivery Date and Time</label>
                    <input type="datetime-local" id="deliveryDateTime" name="deliveryDateTime">
                </div>
                <div class="form-group">
                    <label>Occasion</label>
                    <div class="occasion-buttons">
                        <button type="button" id="birthday" class="occasion-btn">Birthday</button>
                        <button type="button" id="anniversary" class="occasion-btn">Anniversary</button>
                        <button type="button" id="other" class="occasion-btn">Other</button>
                    </div>
                </div>
                <div class="form-group">
                    <label for="personalMessage">Personal Message</label>
                    <textarea id="personalMessage" name="personalMessage" rows="4"></textarea>
                </div>
                <div class="form-group">
                    <label>Sender Information</label>
                    <input type="text" id="senderName" name="senderName" placeholder="Name" value="Adapala nehasrii">
                    <input type="tel" id="senderPhone" name="senderPhone" placeholder="Phone Number" value="+91 7569636827">
                    <div class="checkbox-group">
                        <input type="checkbox" id="keepSurprise" name="keepSurprise">
                        <label for="keepSurprise">Keep Surprise (Hide Sender Information from Recipient)</label>
                    </div>
                </div>
                <div class="form-group">
                    <label>Address</label>
                    <p class="address">Adapala Nehasrii</p>
                    <p class="address">bvrith hyderabad college of engineering for women</p>
                    <p class="address">ragavendra residency</p>
                    <p class="address">Hyderabad - 500090 Mobile: 7569636827</p>
                    <button type="button" id="changeAddress">Change Address</button>
                </div>
                <div class="form-group price-details">
                    <h3>Price Details (1 Items)</h3>
                    <p>MRP Total: ₹ 1,465</p>
                    <p>MRP Discount: - ₹ 366</p>
                    <p>Delivery Charge: FREE</p>
                    <p>Convenience Charge: ₹ 10</p>
                    <p>Total Amount: ₹ 1,109</p>
                </div>
                <div class="form-group">
                    <input type="checkbox" id="agreeTerms" name="agreeTerms">
                    <label for="agreeTerms">I agree with the terms and conditions</label>
                </div>
                <button type="button" id="continuePayment" class="btn">Continue To Payment</button>
            </form>
        </div>
    </div>
    <script >
        document.addEventListener('DOMContentLoaded', () => {
    const occasionButtons = document.querySelectorAll('.occasion-btn');
    let selectedOccasion = null;

    occasionButtons.forEach(button => {
        button.addEventListener('click', () => {
            occasionButtons.forEach(btn => btn.classList.remove('active'));
            button.classList.add('active');
            selectedOccasion = button.id;
        });
    });

    document.getElementById('changeAddress').addEventListener('click', () => {
        const addressFields = document.querySelectorAll('.address');
        addressFields.forEach(field => field.textContent = '');

        const newAddressField = document.createElement('input');
        newAddressField.type = 'text';
        newAddressField.id = 'newAddress';
        newAddressField.placeholder = 'Enter new address';
        newAddressField.classList.add('form-control');
        
        const addressContainer = document.querySelector('.form-group.address');
        addressContainer.appendChild(newAddressField);
    });

    document.getElementById('continuePayment').addEventListener('click', () => {
        const deliveryDateTime = document.getElementById('deliveryDateTime').value;
        const personalMessage = document.getElementById('personalMessage').value.trim();
        const senderName = document.getElementById('senderName').value.trim();
        const senderPhone = document.getElementById('senderPhone').value.trim();
        const agreeTerms = document.getElementById('agreeTerms').checked;
        const newAddress = document.getElementById('newAddress') ? document.getElementById('newAddress').value.trim() : null;

        if (!deliveryDateTime || !selectedOccasion || !personalMessage || !senderName || !senderPhone || (newAddress !== null && !newAddress)) {
            alert('Please fill all the required fields.');
            return;
        }

        if (!agreeTerms) {
            alert('You must agree with the terms and conditions');
            return;
        }

        // Proceed with payment logic here
        alert('Proceeding to payment...');
    });
});document.getElementById('continuePayment').addEventListener('click', function() {
    window.location.href = 'payment.jsp'; // Redirect to cart.html
});


    </script>
</body>
</html>
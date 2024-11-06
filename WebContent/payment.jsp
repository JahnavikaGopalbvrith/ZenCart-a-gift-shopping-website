<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Payments</title>
  <style>
    table {
      border-collapse: collapse;
      width: 50%;
      margin: 0 auto;
      padding: 20px;
    }
    th, td {
      padding: 10px;
      text-align: center;
      border-bottom: 1px solid #ddd;
    }
    th {
      background-color: #4a43b8;
    }
    input[type="radio"] {
      margin-right: 5px;
    }
    .center {
      text-align: center;
    }
    .proceed-btn {
      background-color: #4CAF50;
      color: white;
      padding: 10px 20px;
      border: none;
      border-radius: 5px;
      text-align: center;
      display: inline-block;
      margin-top: 20px;
    }
  </style>
</head>
<body>
  <h1>Select Payment Method</h1>
  
  <form id="paymentForm">
    <table>
      <tr>
        <th>Payment Method</th>
      </tr>
      <tr>
        <td>
          <input type="radio" id="net_banking" name="payment_method" data-action="credit.jsp" value="net_banking">
          <label for="net_banking">Net Banking</label>
        </td>
      </tr>
      <tr>
        <td>
          <input type="radio" id="Debit_card" name="payment_method" data-action="debit.jsp" value="Debit_card">
          <label for="Debit_card">Debit Card</label>
        </td>
      </tr>
      <tr>
        <td>
          <input type="radio" id="cash_on_delivery" name="payment_method" data-action="lastpage.jsp" value="cash_on_delivery">
          <label for="cash_on_delivery">Cash on Delivery</label>
        </td>
      </tr>
      <tr>
        <td>
          <input type="radio" id="Pay_Later" name="payment_method" data-action="lastpage.jsp" value="Pay_Later">
          <label for="Pay_Later">Pay Later</label>
        </td>
      </tr>
    </table>
    <div class="center">
      <button type="submit" class="proceed-btn">Proceed to Payment</button>
    </div>
  </form>

  <script>
    document.getElementById("paymentForm").addEventListener("submit", function(event) {
      const paymentMethod = document.querySelector('input[name="payment_method"]:checked');
      if (!paymentMethod) {
        event.preventDefault(); // Prevent form submission if no payment method is selected
        return;
      }

      const action = paymentMethod.getAttribute('data-action');
      if (action) {
        // Redirect to the specified action URL
        event.preventDefault(); // Prevent default form submission
        window.location.href = action;
      }
    });
  </script>
</body>
</html>

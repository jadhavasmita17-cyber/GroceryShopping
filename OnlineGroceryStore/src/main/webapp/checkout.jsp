<%@ page import="java.util.*, com.grocery.model.Product" %>
<%@ page import="jakarta.servlet.http.HttpSession" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Checkout - Grocery Store</title>
<style>
    body {
        font-family: 'Arial', sans-serif;
        background: #f0f4f7;
        display: flex;
        justify-content: center;
        align-items: center;
        min-height: 100vh;
        margin: 0;
    }
    .container {
        background: #fff;
        padding: 30px 40px;
        border-radius: 15px;
        box-shadow: 0 10px 25px rgba(0,0,0,0.2);
        width: 600px;
        text-align: center;
    }
    h2 {
        color: #2ecc71;
        margin-bottom: 20px;
    }
    table {
        width: 100%;
        border-collapse: collapse;
        margin-bottom: 20px;
    }
    th, td {
        border: 1px solid #ddd;
        padding: 12px;
        text-align: center;
    }
    th {
        background-color: #2ecc71;
        color: white;
    }
    .total {
        font-size: 18px;
        font-weight: bold;
        margin-top: 15px;
        margin-bottom: 20px;
    }
    a.button {
        display: inline-block;
        margin: 5px;
        padding: 10px 20px;
        background: #27ae60;
        color: white;
        border-radius: 5px;
        text-decoration: none;
        transition: 0.3s;
    }
    a.button:hover {
        background: #219150;
    }
</style>
</head>
<body>

<div class="container">
<h2>🛒 Checkout</h2>

<%
    // Use a single session variable
    HttpSession session1 = request.getSession(false);
    List<Product> cart = null;
    if (session1 != null) {
        cart = (List<Product>) session1.getAttribute("cart");
    }

    if (cart == null || cart.isEmpty()) {
%>
    <p>Your cart is empty. <a href="products" class="button">Go Shopping</a></p>
<%
    } else {
%>

<table>
    <tr>
        <th>Product</th>
        <th>Price</th>
    </tr>
<%
        double total = 0;
        for (Product p : cart) {
            total += p.getPrice();
%>
    <tr>
        <td><%= p.getName() %></td>
        <td>&#8377;<%= p.getPrice() %></td>
    </tr>
<%
        }
%>
    <tr>
        <th>Total</th>
        <th>&#8377;<%= total %></th>
    </tr>
</table>

<p class="total">Total Payable: &#8377;<%= total %></p>

<a href="products" class="button">← Continue Shopping</a>
<a href="confirmOrder" class="button">Confirm Order →</a>


<%
    } // end else
%>

</div>
</body>
</html>

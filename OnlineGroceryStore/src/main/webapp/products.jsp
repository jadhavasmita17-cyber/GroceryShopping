<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*, com.grocery.model.Product" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Products - Online Grocery Store</title>
<style>
    body {
        font-family: Arial, sans-serif;
        background-color: #f7f7f7;
        margin: 0;
        padding: 0;
    }
    header {
        background-color: #2ecc71;
        color: white;
        padding: 15px;
        display: flex;
        justify-content: space-between;
        align-items: center;
    }
    header h1 { margin: 0; }
    header a {
        color: white;
        text-decoration: none;
        font-weight: bold;
        margin-left: 15px;
    }
    .container {
        width: 90%;
        margin: 30px auto;
        display: grid;
        grid-template-columns: repeat(auto-fit, minmax(250px, 1fr));
        gap: 20px;
    }
    .card {
        background: white;
        padding: 20px;
        border-radius: 10px;
        box-shadow: 0 4px 8px rgba(0,0,0,0.1);
        text-align: center;
        transition: 0.3s;
    }
    .card:hover { transform: scale(1.03); }
    button {
        background-color: #27ae60;
        color: white;
        border: none;
        padding: 10px 20px;
        border-radius: 5px;
        cursor: pointer;
    }
    button:hover { background-color: #219150; }
</style>
</head>
<body>

<header>
    <h1>Online Grocery Store</h1>
    <div>
        <a href="viewcart">🛒 View Cart</a>
        <a href="logout">Logout</a>
    </div>
</header>

<div class="container">
    <%
        // Dummy product list if DB not used
        List<Product> products = new ArrayList<>();
        products.add(new Product(1, "Apples", 120.0));
        products.add(new Product(2, "Bananas", 50.0));
        products.add(new Product(3, "Tomatoes", 80.0));
        products.add(new Product(4, "Potatoes", 60.0));

        for(Product p : products) {
    %>
        <div class="card">
            <h3><%= p.getName() %></h3>
            <p>Price: ₹<%= p.getPrice() %></p>
            <form action="addtocart" method="post">
                <input type="hidden" name="productId" value="<%= p.getId() %>">
                <input type="hidden" name="productName" value="<%= p.getName() %>">
                <input type="hidden" name="price" value="<%= p.getPrice() %>">
                <button type="submit">Add to Cart</button>
            </form>
        </div>
    <% } %>
</div>

</body>
</html>

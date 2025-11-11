<%@ page import="java.util.*, com.grocery.model.Product" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>My Cart</title>
<style>
    body { font-family: Arial; padding: 20px; background: #f7f7f7; }
    h2 { color: #2ecc71; }
    table { width: 100%; border-collapse: collapse; margin-top: 20px; }
    th, td { border: 1px solid #ddd; padding: 10px; text-align: center; }
    th { background-color: #2ecc71; color: white; }
    a, button { text-decoration: none; cursor: pointer; }
    button {
        padding: 5px 10px; border-radius: 5px; background: #e74c3c; color: white; border: none;
    }
    button:hover { background: #c0392b; }
    .actions { margin-top: 20px; }
    .actions a {
        padding: 10px 20px; background: #27ae60; color: white; border-radius: 5px; margin-right: 10px;
    }
    .actions a:hover { background: #219150; }
</style>
</head>
<body>

<h2>My Shopping Cart</h2>

<%
List<Product> cart = (List<Product>) request.getAttribute("cart");
if (cart == null || cart.isEmpty()) {
%>
    <p>Your cart is empty. <a href="products">Go Shopping</a></p>
<%
} else {
%>
<table>
    <tr><th>Product</th><th>Price</th><th>Action</th></tr>
<%
    double total = 0;
    for(Product p : cart) {
        total += p.getPrice();
%>
    <tr>
        <td><%= p.getName() %></td>
        <td>&#8377;<%= p.getPrice() %></td>
        <td>
            <form action="removefromcart" method="post" style="display:inline;">
                <input type="hidden" name="productId" value="<%= p.getId() %>">
                <button type="submit">Remove</button>
            </form>
        </td>
    </tr>
<%
    }
%>
    <tr>
        <th>Total</th>
        <th>&#8377;<%= total %></th>
        <th></th>
    </tr>
</table>

<div class="actions">
    <a href="products">← Continue Shopping</a>
    <a href="checkout.jsp">Proceed to Checkout →</a>
</div>

<%
}
%>

</body>
</html>

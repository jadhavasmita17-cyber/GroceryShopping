<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Logged Out</title>
    <style>
        body {
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            font-family: Arial, sans-serif;
            background: #f0f0f0;
        }
        .container {
            text-align: center;
            background: white;
            padding: 40px;
            border-radius: 15px;
            box-shadow: 0 5px 15px rgba(0,0,0,0.2);
        }
        a {
            display: inline-block;
            margin-top: 20px;
            padding: 10px 20px;
            background: #f093fb;
            color: white;
            border-radius: 8px;
            text-decoration: none;
        }
        a:hover {
            background: #f5576c;
        }
    </style>
</head>
<body>
    <div class="container">
        <h2>You have been logged out successfully!</h2>
        <a href="login.jsp">Login Again</a>
    </div>
</body>
</html>

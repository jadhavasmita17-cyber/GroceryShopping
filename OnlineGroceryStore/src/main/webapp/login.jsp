<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>Login</title>
  <style>
    body {
      min-height: 100vh;
      display: flex;
      justify-content: center;
      align-items: center;
      background: url("images/bg.jpg") no-repeat center center/cover;
      background-attachment: fixed;
      font-family: "Poppins", sans-serif;
    }

    .container {
      background: rgba(255, 255, 255, 0.95);
      width: 420px;
      padding: 40px 35px;
      border-radius: 20px;
      box-shadow: 0 10px 30px rgba(0, 0, 0, 0.2);
      text-align: center;
    }

    .container h1 {
      font-size: 28px;
      margin-bottom: 25px;
      color: #333;
    }

    label {
      display: block;
      text-align: left;
      font-size: 14px;
      font-weight: 600;
      color: #555;
      margin-bottom: 6px;
    }

    input[type="email"],
    input[type="password"] {
      width: 100%;
      padding: 12px;
      border-radius: 8px;
      border: 1px solid #ccc;
      margin-bottom: 16px;
      transition: 0.3s;
    }

    input[type="email"]:focus,
    input[type="password"]:focus {
      border-color: #f093fb;
      box-shadow: 0 0 6px rgba(240, 147, 251, 0.4);
    }

    input[type="submit"] {
      width: 100%;
      background: linear-gradient(90deg, #f093fb 0%, #f5576c 100%);
      color: #fff;
      border: none;
      padding: 12px;
      border-radius: 10px;
      font-size: 16px;
      cursor: pointer;
      transition: 0.3s;
    }

    input[type="submit"]:hover {
      background: linear-gradient(90deg, #f5576c 0%, #f093fb 100%);
      transform: translateY(-2px);
    }

    p {
      margin-top: 18px;
      font-size: 14px;
    }

    a {
      color: #f5576c;
      text-decoration: none;
      font-weight: 600;
    }

    a:hover {
      text-decoration: underline;
    }
  </style>
</head>

<body>
  <div class="container">
    <h1>Login</h1>

    <form action="LoginServlet" method="post">
  <div>
    <label for="email">Email:</label>
    <input type="email" name="email" id="email" required>
  </div>
  
  <div>
    <label for="password">Password:</label>
    <input type="password" name="password" id="password" required>
  </div>
  
  <div>
    <input type="submit" value="Login">
  </div>
</form>
    
    

    <p>Don't have an account? <a href="register.jsp">Create one</a></p>
  </div>
</body>
</html>

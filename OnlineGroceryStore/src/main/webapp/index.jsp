
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>Welcome to Grocery Store</title>
  <style>
    /* --- Internal CSS --- */
    body {
      margin: 0;
      padding: 0;
      font-family: "Poppins", sans-serif;
      min-height: 100vh;
      display: flex;
      justify-content: center;
      align-items: center;
      background: url("images/bg.jpg") no-repeat center center/cover;
      background-attachment: fixed;
    }

    .welcome-container {
      background: rgba(255, 255, 255, 0.92);
      text-align: center;
      padding: 50px 40px;
      border-radius: 20px;
      box-shadow: 0 10px 30px rgba(0, 0, 0, 0.3);
      width: 450px;
      animation: fadeIn 1s ease-in-out;
    }

    .welcome-container h1 {
      font-size: 30px;
      color: #333;
      margin-bottom: 20px;
    }

    .welcome-container p {
      font-size: 16px;
      color: #666;
      margin-bottom: 30px;
    }

    .btn {
      display: inline-block;
      background: linear-gradient(90deg, #f093fb 0%, #f5576c 100%);
      color: white;
      text-decoration: none;
      padding: 12px 25px;
      margin: 10px;
      border-radius: 10px;
      font-size: 16px;
      transition: 0.3s ease;
    }

    .btn:hover {
      background: linear-gradient(90deg, #f5576c 0%, #f093fb 100%);
      transform: translateY(-2px);
    }

    @keyframes fadeIn {
      from { opacity: 0; transform: translateY(30px); }
      to { opacity: 1; transform: translateY(0); }
    }
  </style>
</head>

<body>
  <div class="welcome-container">
    <h1>Welcome to Grocery Store</h1>
    <p>Your one-stop shop for fresh and organic groceries.</p>

    <a href="register.jsp" class="btn">Create Account</a>
    <a href="login.jsp" class="btn">Login</a>
  </div>
</body>
</html>

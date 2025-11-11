<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>Your Cart</title>
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
      width: 480px;
      padding: 40px 35px;
      border-radius: 20px;
      box-shadow: 0 10px 30px rgba(0, 0, 0, 0.2);
      text-align: center;
    }

    .container h1 {
      font-size: 28px;
      margin-bottom: 20px;
      color: #333;
    }

    table {
      width: 100%;
      border-collapse: collapse;
      margin-bottom: 20px;
    }

    th, td {
      padding: 12px;
      border-bottom: 1px solid #ddd;
      color: #444;
    }

    button {
      background: linear-gradient(90deg, #f093fb 0%, #f5576c 100%);
      border: none;
      color: white;
      padding: 10px 20px;
      border-radius: 8px;
      cursor: pointer;
      transition: 0.3s;
    }

    button:hover {
      background: linear-gradient(90deg, #f5576c 0%, #f093fb 100%);
      transform: translateY(-2px);
    }
  </style>
</head>

<body>
  <div class="container">
    <h1>Your Cart</h1>
    <table>
      <tr><th>Product</th><th>Qty</th><th>Price</th></tr>
      <tr><td>Apple</td><td>1 kg</td><td>₹120</td></tr>
    </table>
    <button>Proceed to Checkout</button>
  </div>
</body>
</html>

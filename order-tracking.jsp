<%@ page import="com.order.ordermanagement.model.Order" %>
<!DOCTYPE html>
<html>
<head>
    <title>Order Tracking</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            background: url('https://images.unsplash.com/photo-1465101046530-73398c7f28ca?auto=format&fit=crop&w=1500&q=80') no-repeat center center fixed;
            background-size: cover;
        }
        .container {
            background: rgba(255,255,255,0.97);
            border-radius: 16px;
            box-shadow: 0 8px 32px 0 rgba(31,38,135,0.37);
            margin-top: 60px;
            padding: 40px 30px;
        }
        h2 {
            font-weight: bold;
            color: #2d3436;
        }
        .btn-primary, .btn-secondary {
            margin-top: 10px;
        }
    </style>
</head>
<body>
<div class="container py-5">
    <h2 class="mb-4">Track Your Order</h2>
    <form method="get" action="order-tracking.jsp">
        <div class="mb-3">
            <label for="orderId" class="form-label">Order ID</label>
            <input type="text" class="form-control" id="orderId" name="orderId" required>
        </div>
        <button type="submit" class="btn btn-primary">Track</button>
    </form>
    <% if (request.getParameter("orderId") != null) {
        String orderId = request.getParameter("orderId");
        Order o = Order.getOrderById(orderId);
        if (o != null) { %>
    <div class="alert alert-success mt-4">
        <strong>Status:</strong> <%= o.getStatus() %><br>
        <strong>Book:</strong> <%= o.getBookTitle() %><br>
        <strong>Date:</strong> <%= o.getDate() %>
    </div>
    <% } else { %>
    <div class="alert alert-danger mt-4">Order not found.</div>
    <% }
    } %>
    <a href="OrderServlet" class="btn btn-secondary mt-3">Back to Orders</a>
</div>
</body>
</html>
<%@ page import="com.order.ordermanagement.model.Order" %>
<!DOCTYPE html>
<html>
<head>
    <title>Order Details</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            background: url('https://images.unsplash.com/photo-1519681393784-d120267933ba?auto=format&fit=crop&w=1500&q=80') no-repeat center center fixed;
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
        .list-group-item {
            font-size: 1.1rem;
        }
        .btn-secondary {
            margin-top: 20px;
        }
    </style>
</head>
<body>
<div class="container py-5">
    <h2 class="mb-4">Order Details</h2>
    <% Order o = (Order)request.getAttribute("order");
        if (o != null) { %>
    <ul class="list-group">
        <li class="list-group-item"><strong>Order ID:</strong> <%= o.getOrderId() %></li>
        <li class="list-group-item"><strong>User Email:</strong> <%= o.getUserEmail() %></li>
        <li class="list-group-item"><strong>Book:</strong> <%= o.getBookTitle() %></li>
        <li class="list-group-item"><strong>Status:</strong> <%= o.getStatus() %></li>
        <li class="list-group-item"><strong>Date:</strong> <%= o.getDate() %></li>
    </ul>
    <% } else { %>
    <div class="alert alert-danger">Order not found.</div>
    <% } %>
    <a href="OrderServlet" class="btn btn-secondary mt-3">Back to Orders</a>
</div>
</body>
</html>
<%@ page import="com.order.ordermanagement.model.Order" %>
<%@ page import="java.util.List" %>
<!DOCTYPE html>
<html>
<head>
    <title>Order List</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            background: url('https://images.unsplash.com/photo-1463320898484-cdee8141c787?auto=format&fit=crop&w=1500&q=80') no-repeat center center fixed;
            background-size: cover;
        }
        .container {
            background: rgba(255,255,255,0.96);
            border-radius: 16px;
            box-shadow: 0 8px 32px 0 rgba(31,38,135,0.37);
            margin-top: 40px;
            padding: 40px 30px;
        }
        h2 {
            font-weight: bold;
            color: #2d3436;
        }
        .btn-info, .btn-success, .btn-warning {
            margin-bottom: 10px;
        }
        th, td {
            vertical-align: middle !important;
        }
    </style>
</head>
<body>
<div class="container py-5">
    <h2 class="mb-4">Your Orders</h2>
    <a href="order-tracking.jsp" class="btn btn-info mb-3">Track Order</a>
    <table class="table table-bordered">
        <thead class="table-dark"><tr><th>Order ID</th><th>Book</th><th>Status</th><th>Date</th><th>Details</th></tr></thead>
        <tbody>
        <% List<Order> orders = (List<Order>)request.getAttribute("orders");
            if (orders != null) for (Order o : orders) { %>
        <tr>
            <td><%= o.getOrderId() %></td>
            <td><%= o.getBookTitle() %></td>
            <td><%= o.getStatus() %></td>
            <td><%= o.getDate() %></td>
            <td><a href="OrderServlet?action=details&orderId=<%=o.getOrderId()%>" class="btn btn-sm btn-primary">View</a></td>
        </tr>
        <% } %>
        </tbody>
    </table>
    <h4 class="mt-5">Place a New Order</h4>
    <form method="post" action="OrderServlet">
        <input type="hidden" name="action" value="add">
        <div class="mb-3">
            <label for="userEmail" class="form-label">Your Email</label>
            <input type="email" class="form-control" id="userEmail" name="userEmail" required>
        </div>
        <div class="mb-3">
            <label for="bookTitle" class="form-label">Book Title</label>
            <input type="text" class="form-control" id="bookTitle" name="bookTitle" required>
        </div>
        <button type="submit" class="btn btn-success">Place Order</button>
    </form>
    <a href="OrderServlet?action=admin" class="btn btn-warning">Admin Panel</a>
</div>
</body>
</html>
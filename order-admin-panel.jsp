<%@ page import="com.order.ordermanagement.model.Order" %>
<%@ page import="java.util.List" %>
<!DOCTYPE html>
<html>
<head>
    <title>Admin Order Panel</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            background: url('https://images.unsplash.com/photo-1512820790803-83ca734da794?auto=format&fit=crop&w=1500&q=80') no-repeat center center fixed;
            background-size: cover;
        }
        .container {
            background: rgba(255,255,255,0.95);
            border-radius: 16px;
            box-shadow: 0 8px 32px 0 rgba(31,38,135,0.37);
            margin-top: 40px;
            padding: 40px 30px;
        }
        h2 {
            font-weight: bold;
            color: #2d3436;
        }
        .btn-success, .btn-danger {
            min-width: 80px;
        }
        .btn-secondary {
            margin-top: 20px;
        }
        th, td {
            vertical-align: middle !important;
        }
    </style>
</head>
<body>
<div class="container py-5">
    <h2 class="mb-4">Admin - Manage Orders</h2>
    <table class="table table-bordered">
        <thead class="table-dark"><tr><th>Order ID</th><th>User</th><th>Book</th><th>Status</th><th>Date</th><th>Update</th><th>Delete</th></tr></thead>
        <tbody>
        <% List<Order> orders = (List<Order>)request.getAttribute("orders");
            if (orders != null) for (Order o : orders) { %>
        <tr>
            <form method="post" action="OrderServlet">
                <input type="hidden" name="action" value="updateStatus">
                <input type="hidden" name="orderId" value="<%= o.getOrderId() %>">
                <td><%= o.getOrderId() %></td>
                <td><%= o.getUserEmail() %></td>
                <td><%= o.getBookTitle() %></td>
                <td>
                    <select name="status" class="form-select">
                        <option <%= o.getStatus().equals("Processing") ? "selected" : "" %>>Processing</option>
                        <option <%= o.getStatus().equals("Shipped") ? "selected" : "" %>>Shipped</option>
                        <option <%= o.getStatus().equals("Delivered") ? "selected" : "" %>>Delivered</option>
                        <option <%= o.getStatus().equals("Cancelled") ? "selected" : "" %>>Cancelled</option>
                    </select>
                </td>
                <td><%= o.getDate() %></td>
                <td><button type="submit" class="btn btn-success btn-sm">Update</button></td>
            </form>
            <form method="post" action="OrderServlet" style="display:inline;">
                <input type="hidden" name="action" value="delete">
                <input type="hidden" name="orderId" value="<%= o.getOrderId() %>">
                <td><button type="submit" class="btn btn-danger btn-sm">Delete</button></td>
            </form>
        </tr>
        <% } %>
        </tbody>
    </table>
    <a href="OrderServlet" class="btn btn-secondary">Back to Orders</a>
</div>
</body>
</html>
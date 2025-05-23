<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add Admin - Bookstore Management</title>
    <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background: linear-gradient(to right, #f5f7fa, #c3cfe2);
            margin: 0;
            padding: 0;
        }

        .container {
            max-width: 500px;
            margin: 60px auto;
            padding: 30px;
            background-color: #ffffff;
            border-radius: 12px;
            box-shadow: 0 8px 20px rgba(0, 0, 0, 0.1);
        }

        h1 {
            text-align: center;
            color: #34495e;
            font-size: 28px;
            margin-bottom: 25px;
        }

        label {
            font-weight: 600;
            margin-bottom: 8px;
            display: block;
            color: #2c3e50;
        }

        input[type="text"],
        input[type="email"],
        input[type="password"],
        select {
            width: 100%;
            padding: 12px;
            margin-bottom: 20px;
            border: 1px solid #ccc;
            border-radius: 6px;
            font-size: 15px;
            transition: border-color 0.3s ease;
        }

        input[type="text"]:focus,
        input[type="email"]:focus,
        input[type="password"]:focus,
        select:focus {
            border-color: #2980b9;
            outline: none;
        }

        input[type="submit"] {
            background-color: #2ecc71;
            color: #fff;
            border: none;
            padding: 14px;
            font-size: 16px;
            border-radius: 6px;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }

        input[type="submit"]:hover {
            background-color: #27ae60;
        }

        .back-link {
            text-align: center;
            display: block;
            margin-top: 20px;
            color: #2980b9;
            text-decoration: none;
            font-weight: 600;
        }

        .back-link:hover {
            text-decoration: underline;
        }

        .header {
            background-color: #34495e;
            padding: 20px 0;
            text-align: center;
            color: white;
            font-size: 20px;
            letter-spacing: 1px;
        }
    </style>
</head>
<body>
<%@ include file="components/navbar.jsp" %>

<div class="container">
    <h1>Add New Admin</h1>
    <form action="add-admin" method="post">
        <label for="name">Full Name</label>
        <input type="text" name="name" id="name" placeholder="Enter full name" required>

        <label for="email">Email Address</label>
        <input type="email" name="email" id="email" placeholder="Enter email" required>

        <label for="role">User Role</label>
        <select name="role" id="role">
            <option value="admin">Admin</option>
            <option value="manager">Manager</option>
        </select>

        <label for="password">Password</label>
        <input type="password" name="password" id="password" placeholder="Enter password" required>

        <input type="submit" value="Add Admin">
    </form>

    <a class="back-link" href="admin-management">← Back to Admin List</a>
</div>
</body>
</html>
package com.order.ordermanagement.servelet;

import com.order.ordermanagement.model.Order;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;
import java.io.FileWriter;
import java.io.IOException;
import java.util.List;

@WebServlet("/OrderServlet")
public class OrderServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        if (action == null) action = "list";

        switch (action) {
            case "track":
                request.getRequestDispatcher("order-tracking.jsp").forward(request, response);
                break;
            case "admin":
                List<Order> allOrders = Order.getAllOrders();
                request.setAttribute("orders", allOrders);
                request.getRequestDispatcher("order-admin-panel.jsp").forward(request, response);
                break;
            case "details":
                String orderId = request.getParameter("orderId");
                Order order = Order.getOrderById(orderId);
                request.setAttribute("order", order);
                request.getRequestDispatcher("order-details.jsp").forward(request, response);
                break;
            default:
                List<Order> orders = Order.getAllOrders();
                request.setAttribute("orders", orders);
                request.getRequestDispatcher("order-list.jsp").forward(request, response);
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");

        if ("add".equals(action)) {
            String userEmail = request.getParameter("userEmail");
            String bookTitle = request.getParameter("bookTitle");
            String orderId = "ORD" + System.currentTimeMillis();
            String date = java.time.LocalDate.now().toString();
            String status = "Processing";

            // Save to order.txt
            String orderData = String.format(
                    "Order ID: %s%nCustomer: %s%nDate: %s%nItems:%n- Book: %s%nStatus: Pending%n%n",
                    orderId, userEmail, date, bookTitle
            );
            String filePath = getServletContext().getRealPath("/") + "order.txt";
            try (FileWriter fw = new FileWriter(filePath, true)) {
                fw.write(orderData);
            } catch (IOException e) {
                e.printStackTrace();
            }

            // Save to database/model
            Order.saveOrder(new Order(orderId, userEmail, bookTitle, status, date));
            response.sendRedirect("OrderServlet");

        } else if ("updateStatus".equals(action)) {
            String orderId = request.getParameter("orderId");
            String status = request.getParameter("status");
            Order.updateOrderStatus(orderId, status);
            response.sendRedirect("OrderServlet?action=admin");

        } else if ("delete".equals(action)) {
            String orderId = request.getParameter("orderId");
            Order.deleteOrder(orderId);
            response.sendRedirect("OrderServlet?action=admin");
        }
    }
}

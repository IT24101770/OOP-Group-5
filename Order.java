package com.order.ordermanagement.model;

import java.io.*;
import java.util.*;

public class Order {
    private String orderId;
    private String userEmail;
    private String bookTitle;
    private String status;
    private String date;

    public Order(String orderId, String userEmail, String bookTitle, String status, String date) {
        this.orderId = orderId;
        this.userEmail = userEmail;
        this.bookTitle = bookTitle;
        this.status = status;
        this.date = date;
    }

    public String getOrderId() { return orderId; }
    public String getUserEmail() { return userEmail; }
    public String getBookTitle() { return bookTitle; }
    public String getStatus() { return status; }
    public String getDate() { return date; }
    public void setStatus(String status) { this.status = status; }

    public static List<Order> getAllOrders() {
        List<Order> orders = new ArrayList<>();
        try (BufferedReader br = new BufferedReader(new FileReader("orders.txt"))) {
            String line;
            while ((line = br.readLine()) != null) {
                String[] parts = line.split(",");
                if (parts.length == 5) {
                    orders.add(new Order(parts[0], parts[1], parts[2], parts[3], parts[4]));
                }
            }
        } catch (IOException e) { e.printStackTrace(); }
        return orders;
    }

    public static void saveOrder(Order order) {
        try (PrintWriter out = new PrintWriter(new BufferedWriter(new FileWriter("orders.txt", true)))) {
            out.println(order.orderId + "," + order.userEmail + "," + order.bookTitle + "," + order.status + "," + order.date);
        } catch (IOException e) { e.printStackTrace(); }
    }

    public static void updateOrderStatus(String orderId, String newStatus) {
        List<Order> orders = getAllOrders();
        try (PrintWriter out = new PrintWriter(new BufferedWriter(new FileWriter("orders.txt")))) {
            for (Order o : orders) {
                if (o.orderId.equals(orderId)) o.setStatus(newStatus);
                out.println(o.orderId + "," + o.userEmail + "," + o.bookTitle + "," + o.status + "," + o.date);
            }
        } catch (IOException e) { e.printStackTrace(); }
    }

    public static void deleteOrder(String orderId) {
        List<Order> orders = getAllOrders();
        try (PrintWriter out = new PrintWriter(new BufferedWriter(new FileWriter("orders.txt")))) {
            for (Order o : orders) {
                if (!o.orderId.equals(orderId)) {
                    out.println(o.orderId + "," + o.userEmail + "," + o.bookTitle + "," + o.status + "," + o.date);
                }
            }
        } catch (IOException e) { e.printStackTrace(); }
    }

    public static Order getOrderById(String orderId) {
        for (Order o : getAllOrders()) {
            if (o.orderId.equals(orderId)) return o;
        }
        return null;
    }
}
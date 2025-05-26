package com.example.servelet;

import com.example.model.Payment;
import com.example.util.FileUtil;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;

import java.io.IOException;

@WebServlet("/payment")
public class PaymentServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        // Retrieve form parameters
        String cardName = request.getParameter("cardname");
        String cardNumber = request.getParameter("cardnumber");
        String month = request.getParameter("month");
        String year = request.getParameter("year");
        String cvc = request.getParameter("cvc");
        String email = request.getParameter("email");
        String contactNumber = request.getParameter("conNumber");

        // Create Payment object
        Payment payment = new Payment(cardName, cardNumber, month, year, cvc, email, contactNumber);

        // Save payment details (optional for logs — avoid saving sensitive info in real apps)
        FileUtil.savePayment(payment);

        // Redirect to confirmation page (you can create this JSP)
        response.sendRedirect("payment_success.jsp");
    }
}

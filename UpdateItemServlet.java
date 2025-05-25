package com.example.servelet;

import com.example.model.UpdatedItem;
import com.example.util.FileUtil;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

@WebServlet("/updateItem")
public class UpdateItemServlet extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Get updated item values from the form
        String productId = request.getParameter("pid");
        String productName = request.getParameter("pname");
        String productType = request.getParameter("ptype");
        String quantity = request.getParameter("quantity");
        String price = request.getParameter("price");
        String description = request.getParameter("des");

        // Create an UpdatedItem object with the new data
        UpdatedItem updatedItem = new UpdatedItem(productId, productName, productType, quantity, price, description);

        // Call the update method in FileUtil
        FileUtil.updateAddItem(updatedItem);

        // Redirect to a confirmation page or back to items list
        response.sendRedirect("admin.jsp"); // Adjust path as needed
    }
}

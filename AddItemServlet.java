package com.example.servelet;

import com.example.model.AddItem;
import com.example.util.FileUtil;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;

import java.io.IOException;

@WebServlet("/addItemServlet")
public class AddItemServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        // Get form data
        String productId = request.getParameter("pid");
        String productName = request.getParameter("pname");
        String productType = request.getParameter("ptype");
        String quantity = request.getParameter("quantity");
        String price = request.getParameter("price");
        String description = request.getParameter("des");

        // Create item object
        AddItem item = new AddItem(productId, productName, productType, quantity, price, description);

        // Save to file
        FileUtil.saveAddItem(item);  // You need this method in FileUtil.java

        // Redirect or show confirmation
        response.sendRedirect("admin.jsp");
    }

}

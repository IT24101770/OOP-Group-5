package com.example.servelet;

import com.example.model.User;
import com.example.util.FileUtil;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

@WebServlet("/login")
public class LoginServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String username = request.getParameter("uname");
        String password = request.getParameter("pwd");
        System.out.println(username);
        System.out.println(password);
        User result = FileUtil.loginUser(username, password);
        if (result != null) {

            if (result.getRole().equals("admin")) {
                response.sendRedirect("admin-index.jsp");
            } else if (result.getRole().equals("user")) {
                response.sendRedirect("all_books.jsp");
            }else {
                response.sendRedirect("login_reg.jsp");
            }
        }else {
            response.sendRedirect("login_reg.jsp");
        }




    }
}

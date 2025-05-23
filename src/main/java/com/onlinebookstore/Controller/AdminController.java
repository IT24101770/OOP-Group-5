package com.onlinebookstore.Controller;

import com.onlinebookstore.Model.Admin;
import com.onlinebookstore.Service.AdminService;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.IOException;
import java.util.List;

@WebServlet(name = "AdminController", value = {
        "/admin-management",      // Main admin management page
        "/add-admin",             // Add new admin
        "/edit-admin",            // Edit admin form
        "/update-admin",          // Update admin action
        "/delete-admin",          // Delete admin action
        "/view-admin"            // View single admin
})
public class AdminController extends HttpServlet {
    private final AdminService adminService = new AdminService();

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String action = request.getServletPath();

        try {
            switch (action) {
                case "/add-admin":
                    showAddForm(request, response);
                    break;
                case "/edit-admin":
                    showEditForm(request, response);
                    break;
                case "/delete-admin":
                    showDeleteForm(request, response);
                    break;
                case "/view-admin":
                    viewAdmin(request, response);
                    break;
                default:
                    listAdmins(request, response);
                    break;
            }
        } catch (Exception ex) {
            throw new ServletException(ex);
        }
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String action = request.getServletPath();

        try {
            switch (action) {
                case "/add-admin":
                    addAdmin(request, response);
                    break;
                case "/update-admin":
                    updateAdmin(request, response);
                    break;
                case "/delete-admin":
                    deleteAdmin(request, response);
                    break;
                default:
                    listAdmins(request, response);
                    break;
            }
        } catch (Exception ex) {
            throw new ServletException(ex);
        }
    }

    private void listAdmins(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        List<Admin> admins = adminService.getAllAdmins();
        request.setAttribute("admins", admins);
        RequestDispatcher dispatcher = request.getRequestDispatcher("adminManagement.jsp");
        dispatcher.forward(request, response);
    }

    private void showAddForm(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        RequestDispatcher dispatcher = request.getRequestDispatcher("addAdmin.jsp");
        dispatcher.forward(request, response);
    }

    private void showEditForm(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        int id = Integer.parseInt(request.getParameter("id"));
        Admin existingAdmin = adminService.getAdminById(id);
        request.setAttribute("admin", existingAdmin);
        RequestDispatcher dispatcher = request.getRequestDispatcher("updateAdmin.jsp");
        dispatcher.forward(request, response);
    }

    private void showDeleteForm(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        int id = Integer.parseInt(request.getParameter("id"));
        Admin adminToDelete = adminService.getAdminById(id);
        request.setAttribute("admin", adminToDelete);
        RequestDispatcher dispatcher = request.getRequestDispatcher("deleteAdmin.jsp");
        dispatcher.forward(request, response);
    }

    private void viewAdmin(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        int id = Integer.parseInt(request.getParameter("id"));
        Admin admin = adminService.getAdminById(id);
        request.setAttribute("admin", admin);
        RequestDispatcher dispatcher = request.getRequestDispatcher("viewAdmin.jsp");
        dispatcher.forward(request, response);
    }

    private void addAdmin(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        String role = request.getParameter("role");

        // Generate new ID (simple approach - get max ID + 1)
        int newId = adminService.getAllAdmins().stream()
                .mapToInt(Admin::getId)
                .max()
                .orElse(0) + 1;

        Admin newAdmin = new Admin(newId, name, email, password, role);
        adminService.addAdmin(newAdmin);
        response.sendRedirect("admin-management");
    }

    private void updateAdmin(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        int id = Integer.parseInt(request.getParameter("id"));
        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        String role = request.getParameter("role");

        Admin updatedAdmin = new Admin(id, name, email, password, role);
        adminService.updateAdmin(updatedAdmin);
        response.sendRedirect("admin-management");
    }

    private void deleteAdmin(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        int id = Integer.parseInt(request.getParameter("id"));
        adminService.deleteAdmin(id);
        response.sendRedirect("admin-management");
    }
}
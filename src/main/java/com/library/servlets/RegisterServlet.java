package com.library.servlets;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.library.dao.UserDAO;
import com.library.entities.User;

@WebServlet("/RegisterServlet")
public class RegisterServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        String role = request.getParameter("role");

        // Check if user already exists (you can enhance this part)
        UserDAO usersDAO = new UserDAO();
        User existingUser = usersDAO.getUserByEmail(email);
        if (existingUser != null) {
            // If user exists, show error message
            request.setAttribute("error", "User with this email already exists.");
            request.getRequestDispatcher("register.jsp").forward(request, response);
            return;
        }

        // Create a new User object and set properties
        User user = new User();
        user.setName(name);
        user.setEmailId(email);
        user.setPassword(password); // No hashing here as per your request
        user.setRole(role);

        // Save the user
        usersDAO.saveUser(user);

        // Redirect to login page after successful registration
        response.sendRedirect("login.jsp");
    }
}

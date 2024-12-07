package com.library.servlets;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/someServlet")
public class SomeServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            // Some code that may throw an exception
            // For example:
            int result = 10 / 0; // This will throw an ArithmeticException
        } catch (Exception e) {
            // Log the error if necessary (optional)
            e.printStackTrace();

            // Set the error message to be displayed in the error.jsp
            request.setAttribute("errorMessage", "An unexpected error occurred: " + e.getMessage());

            // Forward the request to the error.jsp page
            request.getRequestDispatcher("error.jsp").forward(request, response);
        }
    }
}

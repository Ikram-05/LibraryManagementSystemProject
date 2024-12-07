package com.library.servlets;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.library.dao.BookDAO;
import com.library.entities.Book;
@WebServlet("/student")
public class StudentServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // Check if the user is logged in
        if (request.getSession(false) == null || request.getSession().getAttribute("user") == null) {
            response.sendRedirect("login.jsp");
            return;
        }

        BookDAO booksDAO = new BookDAO();
        List<Book> books = booksDAO.getAllBooks(); // Retrieve all books
        request.setAttribute("books", books); // Set the books list in request scope
        request.getRequestDispatcher("student.jsp").forward(request, response); // Forward to student.jsp
    }
}

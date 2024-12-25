package com.library.servlets;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.library.dao.BookDAO;
import com.library.entities.Book;
@WebServlet("/adminServlet")
public class AdminServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // Check if the user is logged in
        HttpSession session = request.getSession(false);
        if (session == null || session.getAttribute("user") == null) {
            response.sendRedirect("login.jsp");
            return;
        }

        // Retrieve all books from the database
        BookDAO booksDAO = new BookDAO();
        List<Book> books = booksDAO.getAllBooks();

        // Set books list as a request attribute
        request.setAttribute("books", books);

        // Forward to admin.jsp
        request.getRequestDispatcher("admin.jsp").forward(request, response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String action = request.getParameter("action");

        if ("addBook".equals(action)) {
            // Gather data from the form
            String title = request.getParameter("title");
            String author = request.getParameter("author");
            String publisher = request.getParameter("publisher");
            String availability = request.getParameter("availability");

            // Create a new Book object
            Book book = new Book();
            book.setTitle(title);
            book.setAuthor(author);
            book.setPublisher(publisher);
            book.setAvailability(availability);

            // Save the book to the database
            BookDAO booksDAO = new BookDAO();
            booksDAO.saveBook(book);

            // Redirect back to the admin page to see the updated book list
            response.sendRedirect("admin");
        }
    }
}

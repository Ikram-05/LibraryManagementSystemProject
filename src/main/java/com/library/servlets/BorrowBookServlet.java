package com.library.servlets;

import java.io.IOException;
import java.time.LocalDate;
import java.time.ZoneId;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.library.dao.BookDAO;
import com.library.dao.TransactionDAO;
import com.library.entities.Book;
import com.library.entities.Transaction;
import com.library.entities.User;

@WebServlet("/borrow")
public class BorrowBookServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            // Parse bookId from the request
            int bookId = Integer.parseInt(request.getParameter("bookId"));

            // Get the user from session
            HttpSession session = request.getSession();
            User user = (User) session.getAttribute("user");

            if (user == null) {
                response.sendRedirect("login.jsp");
                return;
            }

            // Access DAOs
            BookDAO booksDAO = new BookDAO();
            TransactionDAO transactionsDAO = new TransactionDAO();

            // Fetch the book by ID
            Book book = booksDAO.getBookById(bookId);

            if (book == null || !"Yes".equalsIgnoreCase(book.getAvailability())) {
                request.setAttribute("error", "The selected book is not available for borrowing.");
                request.getRequestDispatcher("student.jsp").forward(request, response);
                return;
            }

            // Update book availability
            book.setAvailability("No");
            booksDAO.updateBook(book);

            // Convert LocalDate to Date
            LocalDate localDate = LocalDate.now();
            Date issueDate = Date.from(localDate.atStartOfDay(ZoneId.systemDefault()).toInstant());

            // Create a new transaction
            Transaction transaction = new Transaction();
            transaction.setUser(user); // Associate user object
            transaction.setBook(book); // Associate book object
            transaction.setIssueDate(issueDate); // Use java.util.Date for issueDate
            transaction.setFine(0.0); // Initialize fine to 0

            // Save the transaction
            transactionsDAO.saveTransaction(transaction);

            // Redirect back to the student dashboard
            response.sendRedirect("student"); // Redirect to student dashboard
        } catch (NumberFormatException e) {
            request.setAttribute("error", "Invalid book ID.");
            request.getRequestDispatcher("student.jsp").forward(request, response);
        } catch (Exception e) {
            request.setAttribute("error", "An unexpected error occurred: " + e.getMessage());
            request.getRequestDispatcher("student.jsp").forward(request, response);
        }
    }
}

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

import com.library.dao.BookDAO;
import com.library.dao.TransactionDAO;
import com.library.entities.Book;
import com.library.entities.Transaction;

@WebServlet("/returnBook")
public class ReturnBookServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            // Get transactionId from request
            int transactionId = Integer.parseInt(request.getParameter("transactionId"));

            // Access DAOs
            TransactionDAO transactionsDAO = new TransactionDAO();
            BookDAO booksDAO = new BookDAO();

            // Fetch the transaction by ID
            Transaction transaction = transactionsDAO.getTransactionById(transactionId);

            if (transaction == null) {
                request.setAttribute("error", "Transaction not found.");
                request.getRequestDispatcher("student.jsp").forward(request, response);
                return;
            }

            // Get issue date and convert it to LocalDate
            Date issueDate = transaction.getIssueDate();
            LocalDate issueLocalDate = issueDate.toInstant().atZone(ZoneId.systemDefault()).toLocalDate();

            // Get the current return date (LocalDate)
            LocalDate returnLocalDate = LocalDate.now();

            // Convert returnLocalDate to java.util.Date
            Date returnDate = Date.from(returnLocalDate.atStartOfDay(ZoneId.systemDefault()).toInstant());

            // Calculate overdue fine if the return date is later than the issue date + 14 days
            long overdueDays = 0;
            if (returnLocalDate.isAfter(issueLocalDate.plusDays(14))) {
                overdueDays = issueLocalDate.until(returnLocalDate, java.time.temporal.ChronoUnit.DAYS);
            }

            // Calculate fine (e.g., 10 units per day overdue)
            double fine = (double) (overdueDays * 10); // Adjust fine per your logic

            // Set the return date and fine
            transaction.setReturnDate(returnDate);
            transaction.setFine(fine);

            // Update the transaction in the database
            transactionsDAO.updateTransaction(transaction);

            // Update book availability to "Yes" (returning the book)
            Book book = transaction.getBook();
            book.setAvailability("Yes");
            booksDAO.updateBook(book);

            // Forward to a return confirmation page with the details
            request.setAttribute("transaction", transaction);
            request.getRequestDispatcher("returnConfirmation.jsp").forward(request, response);

        } catch (NumberFormatException e) {
            request.setAttribute("error", "Invalid transaction ID.");
            request.getRequestDispatcher("student.jsp").forward(request, response);
        } catch (Exception e) {
            request.setAttribute("error", "An unexpected error occurred: " + e.getMessage());
            request.getRequestDispatcher("student.jsp").forward(request, response);
        }
    }
}

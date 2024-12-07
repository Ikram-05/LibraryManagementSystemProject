package com.library.servlets;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.library.dao.TransactionDAO;
import com.library.entities.Transaction;

@WebServlet("/transactions")
public class TransactionServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        TransactionDAO transactionsDAO = new TransactionDAO();
        List<Transaction> transactions = transactionsDAO.getAllTransactions();
        request.setAttribute("transactions", transactions);  // Set transactions attribute
        request.getRequestDispatcher("transactions.jsp").forward(request, response);  // Forward to JSP
    }
}

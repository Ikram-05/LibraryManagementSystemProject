<!DOCTYPE html>
<html>
<head>
    <title>Manage Transactions</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            text-align: center;
            background-color: #f4f4f9;
        }
        table {
            width: 90%;
            margin: 20px auto;
            border-collapse: collapse;
        }
        table, th, td {
            border: 1px solid #ccc;
        }
        th, td {
            padding: 10px;
            text-align: center;
        }
    </style>
</head>
<body>
    <h1>Manage Transactions</h1>
    <table>
        <tr>
            <th>Transaction ID</th>
            <th>User ID</th>
            <th>Book ID</th>
            <th>Issue Date</th>
            <th>Return Date</th>
            <th>Fine</th>
        </tr>
        <!-- Loop through transactions and display each one dynamically -->
        <c:forEach var="transaction" items="${transactions}">
            <tr>
                <td>${transaction.transactionId}</td>
                <td>${transaction.user.userId}</td>
                <td>${transaction.book.bookId}</td>
                <td>${transaction.issueDate}</td>
                <td>${transaction.returnDate != null ? transaction.returnDate : 'Not Returned'}</td>
                <td>${transaction.fine}</td>
            </tr>
        </c:forEach>
    </table>
    <a href="admin.jsp">Back to Dashboard</a>
</body>
</html>

<!DOCTYPE html>
<html>
<head>
    <title>Return Book</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            text-align: center;
            background-color: #f4f4f9;
        }
        p {
            margin: 20px;
            font-size: 18px;
        }
    </style>
</head>
<body>
    <h1>Book Return Confirmation</h1>
    <p>Your book has been successfully returned!</p>
    <p><strong>Book Title:</strong> ${transaction.book.title}</p>
    <p><strong>Author:</strong> ${transaction.book.author}</p>
    <p><strong>Fine (if applicable):</strong> ${transaction.fine} units</p>
    <a href="student.jsp">Back to Dashboard</a>
</body>
</html>

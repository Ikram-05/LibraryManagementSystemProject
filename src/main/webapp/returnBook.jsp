<!DOCTYPE html>
<html>
<head>
    <title>Return Book</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f9;
            margin: 0;
            padding: 0;
        }
        .container {
            width: 80%;
            margin: 20px auto;
            padding: 20px;
            background-color: white;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }
        h1 {
            text-align: center;
            color: #0078D4;
        }
        p {
            font-size: 18px;
            text-align: center;
        }
        .back-link {
            display: block;
            text-align: center;
            margin-top: 20px;
            text-decoration: none;
            background-color: #0078D4;
            color: white;
            padding: 10px 20px;
            border-radius: 5px;
        }
        .back-link:hover {
            background-color: #005A9E;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Book Return Confirmation</h1>
        <p>Your book has been successfully returned!</p>
        <p><strong>Book Title:</strong> ${transaction.book.title}</p>
        <p><strong>Author:</strong> ${transaction.book.author}</p>
        <p><strong>Fine (if applicable):</strong> ${transaction.fine} units</p>
        <a href="student.jsp" class="back-link">Back to Dashboard</a>
    </div>
</body>
</html>

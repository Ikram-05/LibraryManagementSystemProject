<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>View Books</title>
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
        .book-table {
            width: 100%;
            margin-top: 20px;
            border-collapse: collapse;
        }
        .book-table th, .book-table td {
            padding: 10px;
            border: 1px solid #ddd;
            text-align: center;
        }
        .book-table th {
            background-color: #0078D4;
            color: white;
        }
        .book-table td {
            background-color: #f9f9f9;
        }
        .no-books {
            text-align: center;
            font-size: 1.2rem;
            color: #888;
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
        @media (max-width: 768px) {
            .container {
                width: 90%;
            }
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Available Books</h1>
        
        <c:if test="${empty books}">
            <p class="no-books">No books available</p>
        </c:if>
        
        <table class="book-table">
            <thead>
                <tr>
                    <th>Title</th>
                    <th>Author</th>
                    <th>Publisher</th>
                    <th>Availability</th>
                    <th>Action</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach var="book" items="${books}">
                    <tr>
                        <td>${book.title}</td>
                        <td>${book.author}</td>
                        <td>${book.publisher}</td>
                        <td>${book.availability}</td>
                        <td>
                            <a href="borrowBook.jsp?bookId=${book.bookId}" class="borrow-link">Borrow</a>
                        </td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>

        <a href="student.jsp" class="back-link">Back to Dashboard</a>
    </div>
</body>
</html>
    
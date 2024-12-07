<!DOCTYPE html>
<html>
<head>
    <title>Student Dashboard</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            text-align: center;
            background-color: #f4f4f9;
        }
        a {
            display: block;
            margin: 20px;
            padding: 10px 20px;
            background-color: #0078D4;
            color: white;
            text-decoration: none;
            border-radius: 5px;
            width: 200px;
            margin-left: auto;
            margin-right: auto;
        }
        a:hover {
            background-color: #005A9E;
        }
        table {
            width: 80%;
            margin: 20px auto;
            border-collapse: collapse;
        }
        table, th, td {
            border: 1px solid #ddd;
        }
        th, td {
            padding: 10px;
            text-align: center;
        }
    </style>
</head>
<body>
    <h1>Student Dashboard</h1>
    <a href="viewBooks.jsp">View Books</a>
    <a href="borrowConfirmation.jsp">Borrow Books</a>
    <a href="returnConfirmation.jsp">Return Books</a>
    <a href="LogoutServlet">Logout</a>

    <!-- Display Available Books -->
    <h2>Available Books</h2>
    <c:if test="${empty books}">
        <p>No books available</p>
    </c:if>
    <table>
        <thead>
            <tr>
                <th>Title</th>
                <th>Author</th>
                <th>Publisher</th>
                <th>Availability</th>
            </tr>
        </thead>
        <tbody>
            <c:forEach var="book" items="${books}">
                <tr>
                    <td>${book.title}</td>
                    <td>${book.author}</td>
                    <td>${book.publisher}</td>
                    <td>${book.availability}</td>
                </tr>
            </c:forEach>
        </tbody>
    </table>
</body>
</html>

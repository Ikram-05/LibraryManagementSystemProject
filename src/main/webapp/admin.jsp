<!DOCTYPE html>
<html>
<head>
    <title>Admin Dashboard</title>
    <style>
        /* Your CSS styling here... */
    </style>
</head>
<body>
    <h1>Admin Dashboard</h1>
    <a href="books.jsp">Manage Books</a>
    <a href="transactions.jsp">View Transactions</a>
    <a href="LogoutServlet">Logout</a>

    <!-- Display Books -->
    <h2>All Books</h2>
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

    <!-- Add New Book Form -->
    <div class="add-book-form">
        <h3>Add New Book</h3>
        <form action="admin" method="post">
            <input type="hidden" name="action" value="addBook">
            <input type="text" name="title" placeholder="Book Title" required>
            <input type="text" name="author" placeholder="Author" required>
            <input type="text" name="publisher" placeholder="Publisher" required>
            <select name="availability" required>
                <option value="Yes">Available</option>
                <option value="No">Not Available</option>
            </select>
            <button type="submit">Add Book</button>
        </form>
    </div>
</body>
</html>

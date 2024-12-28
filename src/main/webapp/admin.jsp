<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin Dashboard</title>
    <style>
        :root {
            --primary-color: #0078D4;
            --hover-color: #005A9E;
            --background-color: #f4f4f9;
            --font-family: Arial, sans-serif;
            --spacing-unit: 10px;
            --font-size-base: 16px;
            --border-radius: 5px;
        }

        body {
            font-family: var(--font-family);
            background-color: var(--background-color);
            margin: 0;
            padding: 0;
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: flex-start;
            min-height: 100vh;
        }

        h1 {
            color: var(--primary-color);
            font-size: 2rem;
            margin-bottom: var(--spacing-unit * 3);
        }

        a {
            display: inline-block;
            margin: var(--spacing-unit);
            padding: var(--spacing-unit) var(--spacing-unit * 2);
            background-color: var(--primary-color);
            color: white;
            text-decoration: none;
            border-radius: var(--border-radius);
            font-size: 1rem;
            transition: background-color 0.3s ease;
            width: 200px;
            text-align: center;
        }

        a:hover {
            background-color: var(--hover-color);
        }

        table {
            width: 80%;
            margin: var(--spacing-unit * 3) auto;
            border-collapse: collapse;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            border-radius: var(--border-radius);
            background-color: white;
        }

        table th,
        table td {
            padding: var(--spacing-unit * 2);
            text-align: center;
            border: 1px solid #ddd;
        }

        table th {
            background-color: var(--primary-color);
            color: white;
        }

        table td {
            background-color: #f9f9f9;
        }

        .add-book-form {
            margin-top: var(--spacing-unit * 4);
            padding: var(--spacing-unit * 3);
            background-color: white;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            width: 80%;
            max-width: 600px;
            border-radius: var(--border-radius);
        }

        .add-book-form h3 {
            font-size: 1.5rem;
            color: var(--primary-color);
            margin-bottom: var(--spacing-unit * 2);
        }

        .add-book-form input,
        .add-book-form select,
        .add-book-form button {
            width: 100%;
            padding: var(--spacing-unit);
            margin-bottom: var(--spacing-unit * 2);
            border-radius: var(--border-radius);
            border: 1px solid #ddd;
            font-size: 1rem;
        }

        .add-book-form button {
            background-color: var(--primary-color);
            color: white;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }

        .add-book-form button:hover {
            background-color: var(--hover-color);
        }

        /* Responsive Design */
        @media (max-width: 768px) {
            h1 {
                font-size: 1.5rem;
            }

            a {
                width: 100%;
                padding: var(--spacing-unit) var(--spacing-unit * 1.5);
                font-size: 0.9rem;
            }

            table {
                width: 95%;
            }

            table th,
            table td {
                padding: var(--spacing-unit);
            }

            .add-book-form {
                width: 95%;
                margin-top: var(--spacing-unit * 2);
            }
        }
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

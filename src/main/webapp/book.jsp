<!DOCTYPE html>
<html>
<head>
    <title>Manage Books</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            text-align: center;
            background-color: #f4f4f9;
        }
        table {
            width: 80%;
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
        .actions {
            display: flex;
            justify-content: center;
            gap: 10px;
        }
        .actions button {
            padding: 5px 10px;
            border: none;
            background-color: #0078D4;
            color: white;
            border-radius: 4px;
            cursor: pointer;
        }
        .actions button:hover {
            background-color: #005A9E;
        }
    </style>
</head>
<body>
    <h1>Manage Books</h1>
    <table>
        <tr>
            <th>Book ID</th>
            <th>Title</th>
            <th>Author</th>
            <th>Publisher</th>
            <th>Availability</th>
            <th>Actions</th>
        </tr>
        <!-- Loop here to display books -->
        <tr>
            <td>1</td>
            <td>Book Title</td>
            <td>Author Name</td>
            <td>Publisher Name</td>
            <td>Yes</td>
            <td class="actions">
                <button>Edit</button>
                <button>Delete</button>
            </td>
        </tr>
    </table>
    <a href="admin.jsp">Back to Dashboard</a>
</body>
</html>

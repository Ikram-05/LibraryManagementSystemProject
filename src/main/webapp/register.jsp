<!DOCTYPE html>
<html>
<head>
    <title>Register</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f9;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }
        .register-form {
            background: white;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
        }
        .register-form h2 {
            margin-bottom: 20px;
        }
        input[type="text"], input[type="password"], select {
            width: 100%;
            padding: 10px;
            margin: 10px 0;
            border: 1px solid #ccc;
            border-radius: 4px;
        }
        button {
            padding: 10px 20px;
            background-color: #0078D4;
            color: white;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }
        button:hover {
            background-color: #005A9E;
        }
    </style>
</head>
<body>
    <form class="register-form" action="RegisterServlet" method="post">
        <h2>Register</h2>
        <input type="text" name="name" placeholder="Name" required>
        <input type="text" name="email" placeholder="Email" required>
        <input type="password" name="password" placeholder="Password" required>
        <select name="role">
            <option value="Student">Student</option>
            <option value="Admin">Admin</option>
        </select>
        <button type="submit">Register</button>

        <c:if test="${not empty error}">
            <div style="color: red; margin-top: 10px;">
                ${error}
            </div>
        </c:if>
    </form>
</body>
</html>

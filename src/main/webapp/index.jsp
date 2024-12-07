<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Library Management System</title>
    <style>
        :root {
            --primary-color: #0078D4;
            --hover-color: #005A9E;
            --background-color: #f4f4f9;
            --font-family: Arial, sans-serif;
        }
        body {
            font-family: var(--font-family);
            text-align: center;
            background-color: var(--background-color);
        }
        .container {
            margin-top: 100px;
        }
        .btn {
            display: inline-block;
            margin: 20px;
            padding: 10px 20px;
            background-color: var(--primary-color);
            color: white;
            text-decoration: none;
            border-radius: 5px;
        }
        .btn:hover {
            background-color: var(--hover-color);
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Welcome to the Library Management System</h1>
        <a href="login.jsp" class="btn" title="Login to the library system">Login</a>
        <a href="register.jsp" class="btn" title="Register as a new user">Register</a>
    </div>
</body>
</html>

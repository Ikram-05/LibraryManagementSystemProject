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
            --font-size-base: 16px;
            --spacing-unit: 10px;
        }

        body {
            font-family: var(--font-family);
            background-color: var(--background-color);
            color: #333;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }

        .container {
            text-align: center;
            padding: 20px;
            background-color: white;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            border-radius: 8px;
            width: 80%;
            max-width: 600px;
        }

        h1 {
            font-size: 2rem;
            margin-bottom: var(--spacing-unit * 2);
            color: var(--primary-color);
        }

        .btn {
            display: inline-block;
            margin: var(--spacing-unit);
            padding: var(--spacing-unit) var(--spacing-unit * 2);
            background-color: var(--primary-color);
            color: white;
            text-decoration: none;
            border-radius: 5px;
            font-size: 1rem;
            transition: background-color 0.3s ease;
        }

        .btn:hover {
            background-color: var(--hover-color);
        }

        .btn:focus {
            outline: 2px solid var(--primary-color);
            outline-offset: 4px;
        }

        /* Responsive Design */
        @media (max-width: 768px) {
            h1 {
                font-size: 1.5rem;
            }

            .btn {
                padding: var(--spacing-unit) var(--spacing-unit * 1.5);
                font-size: 0.9rem;
            }
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

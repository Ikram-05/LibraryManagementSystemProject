<!DOCTYPE html>
<html>
<head>
    <title>Error</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            text-align: center;
            background-color: #f4f4f9;
        }
        .error {
            color: red;
            margin: 20px;
            font-size: 18px;
        }
    </style>
</head>
<body>
    <h1>Error</h1>
    <!-- Display the error message passed from the servlet -->
    <p class="error">${errorMessage}</p>
    <!-- Optionally, add a link to navigate back to the homepage -->
    <a href="index.jsp">Go to Home</a>
</body>
</html>

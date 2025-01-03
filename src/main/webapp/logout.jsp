<!DOCTYPE html>
<html>
<head>
    <title>Logout</title>
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
        <h1>You have been logged out successfully!</h1>
        <a href="index.jsp" class="back-link">Click here to login again</a>
    </div>
</body>
</html>

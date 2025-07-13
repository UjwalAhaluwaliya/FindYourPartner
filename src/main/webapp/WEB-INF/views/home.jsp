<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
    <title>Home - FindYourPartner</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 0;
        }

        .navbar {
            background-color: #333;
            overflow: hidden;
            padding: 10px 20px;
            display: flex;
            justify-content: flex-end;
            gap: 10px;
        }

        .navbar a {
            color: white;
            padding: 14px 20px;
            text-decoration: none;
            font-size: 17px;
        }

        .navbar a:hover {
            background-color: #ddd;
            color: black;
        }

        .container {
            padding: 20px;
            text-align: center;
            margin-top: 100px;
        }

        h1 {
            font-size: 32px;
            margin: 30px 0;
        }

        .button {
            display: inline-block;
            padding: 12px 25px;
            margin: 10px;
            font-size: 18px;
            text-decoration: none;
            color: white;
            border-radius: 5px;
        }

        .register-btn {
            background-color: #28a745;
        }

        .register-btn:hover {
            background-color: #218838;
        }

        .login-btn {
            background-color: #007bff;
        }

        .login-btn:hover {
            background-color: #0069d9;
        }
    </style>
</head>
<body>


<!-- Main Content -->
<div class="container">
    <h1>Welcome to FindYourPartner</h1>

    <a href="Register" class="button register-btn">Register</a>
    <a href="Login" class="button login-btn">Login</a>
</div>

</body>
</html>

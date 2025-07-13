<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Login - FindYourPartner</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            padding: 50px;
        }

        form {
            max-width: 400px;
            margin: auto;
            display: flex;
            flex-direction: column;
        }

        label, input {
            margin-bottom: 10px;
            padding: 10px;
            font-size: 16px;
        }

        input[type="submit"] {
            background-color: #007BFF;
            color: white;
            cursor: pointer;
        }

        input[type="submit"]:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>

<h2 style="text-align: center;">Login</h2>

<c:if test="${not empty error}">
    <div style="color:red; text-align:center;">${error}</div>
</c:if>
<form action="Login" method="post">
    <label>Email:</label>
    <input type="email" name="email" required>

    <label>Password:</label>
    <input type="text" name="password" required>

    <input type="submit" value="Login">
</form>

</body>
</html>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Register - FindYourPartner</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            padding: 50px;
        }

        form {
            max-width: 500px;
            margin: auto;
            display: flex;
            flex-direction: column;
        }

        label, input, textarea, select {
            margin-bottom: 10px;
            padding: 10px;
            font-size: 16px;
        }

        input[type="submit"] {
            background-color: #28a745;
            color: white;
            cursor: pointer;
        }

        input[type="submit"]:hover {
            background-color: #218838;
        }
    </style>
</head>
<body>

<h2 style="text-align: center;">Register</h2>
<c:if test="${not empty error}">
    <div style="color:red; text-align:center;">${error}</div>
</c:if>
<form action="Register" method="post">
    <label>Name:</label>
    <input type="text" name="name" required>

    <label>Age:</label>
    <input type="text" name="age" required>

    <label>Gender:</label>
    <select name="gender" required>
        <option value="">Select</option>
        <option>Male</option>
        <option>Female</option>
    </select>

    <label>Qualification:</label>
    <input type="text" name="qualification" required>

    <label>Bio:</label>
    <textarea name="bio" rows="3" required></textarea>

    <label>Email:</label>
    <input type="email" name="email" required>

     <label>Password:</label>
     <input type="password" name="password" required>

     <label>confirmPassword:</label>
     <input type="Password" name="confirmPassword" required>


    <label>Phone Number:</label>
    <input type="text" name="phoneNo" required>

    <input type="submit" value="Register">
</form>

</body>
</html>

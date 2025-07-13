<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
    <title>Interested In - Filter Profiles</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f0f2f5;
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
            padding: 12px 18px;
            text-decoration: none;
            font-size: 16px;
        }

        .navbar a:hover {
            background-color: #ddd;
            color: black;
        }

        .container {
            max-width: 700px;
            margin: 40px auto;
            background-color: white;
            padding: 25px;
            border-radius: 12px;
            box-shadow: 0 0 10px rgba(0,0,0,0.1);
            text-align: center;
        }

        h2 {
            margin-bottom: 20px;
        }

        form {
            margin-bottom: 20px;
        }

        button {
            padding: 10px 20px;
            margin: 10px;
            font-size: 16px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }

        .male {
            background-color: #007bff;
            color: white;
        }

        .female {
            background-color: #e83e8c;
            color: white;
        }

        .profile-card {
            background-color: #f9f9f9;
            border: 1px solid #ddd;
            border-radius: 10px;
            padding: 15px;
            margin: 15px 0;
            text-align: left;
        }

        .profile-card p {
            margin: 6px 0;
        }
    </style>
</head>
<body>

<!-- Navbar with Logout -->
<div class="navbar">
    <a href="logout">Logout</a>
</div>

<div class="container">
    <h2>Select Gender You're Interested In</h2>

    <!-- Form with two submit buttons -->
    <form method="get">
        <button type="submit" name="gender" value="Male" class="male">Male</button>
        <button type="submit" name="gender" value="Female" class="female">Female</button>
    </form>

    <c:if test="${not empty param.gender}">
        <h3>Showing ${param.gender} Profiles</h3>
    </c:if>

    <!-- Display filtered users -->
    <c:forEach var="user" items="${allUsers}">
        <c:if test="${empty param.gender || user.gender == param.gender}">
            <div class="profile-card">
                <p><strong>Name:</strong> ${user.name}</p>
                <p><strong>Age:</strong> ${user.age}</p>
                <p><strong>Gender:</strong> ${user.gender}</p>
                <p><strong>Qualification:</strong> ${user.qualification}</p>
                <p><strong>Bio:</strong> ${user.bio}</p>
                <p><strong>Phone No:</strong> ${user.phoneNo}</p>
            </div>
        </c:if>
    </c:forEach>
</div>

</body>
</html>

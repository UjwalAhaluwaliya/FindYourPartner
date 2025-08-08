<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
    <title>My Profile - FindYourPartner</title>
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
            max-width: 600px;
            margin: 40px auto;
            background-color: white;
            padding: 25px;
            border-radius: 12px;
            box-shadow: 0 0 10px rgba(0,0,0,0.1);
        }

        h2 {
            text-align: center;
            margin-bottom: 20px;
        }

        .profile-info p {
            font-size: 16px;
            margin: 10px 0;
        }

        .buttons {
            display: flex;
            justify-content: center;
            gap: 20px;
            margin-top: 20px;
        }

        .btn {
            padding: 10px 20px;
            font-size: 16px;
            border: none;
            border-radius: 5px;
            text-decoration: none;
            color: white;
            cursor: pointer;
        }

        .btn-update {
            background-color: #28a745;
        }

        .btn-update:hover {
            background-color: #218838;
        }

        .btn-delete {
            background-color: #dc3545;
        }

        .btn-delete:hover {
            background-color: #c82333;
        }
    </style>
</head>
<body>

<div class="navbar">
    <a href="interestedIn">Interested In</a>
    <a href="logout">Logout</a>
</div>

<div class="container">
    <h2>My Profile</h2>

    <c:if test="${not empty sessionScope.loggedInUser}">
        <div class="profile-info">
            <p><strong>Name:</strong> ${loggedInUser.name}</p>
            <p><strong>Email:</strong> ${loggedInUser.email}</p>
            <p><strong>Age:</strong> ${loggedInUser.age}</p>
            <p><strong>Gender:</strong> ${loggedInUser.gender}</p>
            <p><strong>Qualification:</strong> ${loggedInUser.qualification}</p>
            <p><strong>Phone:</strong> ${loggedInUser.phoneNo}</p>
            <p><strong>Bio:</strong> ${loggedInUser.bio}</p>
        </div>

        <div class="buttons">
            <a href="updateProfile?id=${loggedInUser.id}" method="post" class="btn btn-update">Update</a>
           <form action="deleteProfile" method="post" onsubmit="return confirm('Are you sure you want to delete your profile?');">
               <input type="hidden" name="id" value="${loggedInUser.id}" />
               <button type="submit" class="btn btn-delete">Delete</button>
           </form>

        </div>
    </c:if>

    <c:if test="${empty sessionScope.loggedInUser}">
        <p style="text-align: center;">You are not logged in. <a href="Login">Login here</a>.</p>
    </c:if>
</div>

</body>
</html>

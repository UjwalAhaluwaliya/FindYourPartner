<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
    <title>Update Profile</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f0f2f5;
            margin: 0;
            padding: 0;
        }

        .container {
            max-width: 600px;
            margin: 50px auto;
            background-color: white;
            padding: 30px;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0,0,0,0.1);
        }

        h2 {
            text-align: center;
            margin-bottom: 25px;
        }

        form {
            display: flex;
            flex-direction: column;
        }

        label {
            margin: 10px 0 5px;
            font-weight: bold;
        }

        input[type="text"],
        input[type="number"],
        textarea {
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 5px;
            font-size: 15px;
        }

        textarea {
            resize: vertical;
        }

        button {
            margin-top: 20px;
            padding: 12px;
            font-size: 16px;
            background-color: #28a745;
            color: white;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }

        button:hover {
            background-color: #218838;
        }
    </style>
</head>
<body>

<div class="container">
    <h2>Update Your Profile</h2>

    <form action="updateProfile" method="post">
        <input type="hidden" name="id" value="${profile.id}" />

        <label>Name:</label>
        <input type="text" name="name" value="${profile.name}" />

        <label>Age:</label>
        <input type="number" name="age" value="${profile.age}" />

        <label>Gender:</label>
        <input type="text" name="gender" value="${profile.gender}" />

        <label>Qualification:</label>
        <input type="text" name="qualification" value="${profile.qualification}" />

        <label>Bio:</label>
        <textarea name="bio">${profile.bio}</textarea>

        <label>Email:</label>
        <input type="text" name="email" value="${profile.email}" />

        <label>Password:</label>
        <input type="text" name="password" value="${profile.password}" />

        <label>Phone:</label>
        <input type="text" name="phoneNo" value="${profile.phoneNo}" />

        <button type="submit">Update</button>
    </form>
</div>

</body>
</html>

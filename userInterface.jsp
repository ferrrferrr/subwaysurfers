<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="ContentType" content="text/html; charset=UTF-8">
    <title>User Registration</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f0f0f0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
        }

        h1 {
            text-align: center;
            color: #007BFF;
        }

        .register-button, .view-button, .back-button {
            background-color: #007BFF;
            color: white;
            border: none;
            border-radius: 5px;
            padding: 10px 20px;
            cursor: pointer;
            font-size: 16px;
            text-decoration: none;
            margin: 10px;
        }

        .view-button:hover, .back-button:hover {
            background-color: #0056b3; /* Darker blue on hover */
        }
        
        /* Position the back button to the top-left corner */
        .back-button {
            position: absolute;
            top: 10px;
            left: 10px;
        }
    </style>
</head>
<body>
    <a href="userLogin.jsp" class="register-button">Staff Register</a>
    <a href="userStatus.jsp" class="register-button">View Status</a>
   
    <a href="index.jsp" class="back-button">Back</a>
</body>
</html>

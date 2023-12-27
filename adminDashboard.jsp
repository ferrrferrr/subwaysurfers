<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Admin Login</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
        }

        .form-container {
            background-color: #fff;
            border: 1px solid #ccc;
            border-radius: 5px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.2);
            max-width: 400px;
            width: 100%;
            text-align: center;
            padding: 20px;
        }

        h1 {
            text-align: center;
            color: #007BFF;
        }

        table {
            width: 100%;
            margin-bottom: 20px;
        }

        td {
            padding: 10px;
            text-align: left;
        }

        input[type="text"],
        input[type="password"] {
            width: 100%;
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 5px;
            font-size: 16px;
            margin-top: 5px;
        }

        input[type="submit"] {
            background-color: #007BFF;
            color: white;
            border: none;
            border-radius: 5px;
            padding: 12px 20px;
            cursor: pointer;
            display: block;
            margin: 0 auto;
        }

        input[type="submit"]:hover {
            background-color: #0056b3;
        }
        
        .back-button {
            background-color: #007BFF; /* Blue */
            color: white;
            border: none;
            border-radius: 5px;
            padding: 10px 20px;
            cursor: pointer;
            font-size: 16px;
            text-decoration: none;
            position: absolute;
            top: 10px;
            left: 10px;
        }
    </style>
</head>
<body>
      <a href="index.jsp" class="back-button">Back</a>   
    <center>
        <div class="form-container">
            <form action="adminProcess.jsp" method="post">
                <h1>Admin Login</h1>
                <table>
                    <tr>
                        <td>Username</td>
                        <td>:</td>
                        <td><input type="text" name="admin_username"></td>
                    </tr>
                    <tr>
                        <td>Password</td>
                        <td>:</td>
                        <td><input type="password" name="admin_password"></td>
                    </tr>
                </table>
                <input type="submit" value="Login">
            </form>
        </div>
    </center>
</body>
</html>

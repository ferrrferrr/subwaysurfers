<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Department Vehicle Application System</title>
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

        center {
            text-align: center;
        }

        h1 {
            color: #007BFF; /* Blue color */
        }

        table {
            margin-top: 20px;
        }

        td {
            padding: 10px;
            text-align: center;
        }

        button {
            background-color: #007BFF;
            color: white;
            border: none;
            border-radius: 5px;
            padding: 10px 20px;
            cursor: pointer;
            font-size: 16px;
        }

        button:hover {
            background-color: #0056b3; /* Darker blue on hover */
        }
    </style>
</head>
<body>
    <center>
        <h1>Vehicle Management System</h1>
        <table>
            <tr>
                <td>
                    <a href="adminDashboard.jsp">
                        <button>Admin</button>
                    </a>
                </td>
                <td>
                    <a href="userInterface.jsp">
                        <button>User</button>
                    </a>
                </td>
            </tr>
        </table>
    </center>
</body>
</html> 
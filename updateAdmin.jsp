<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*,java.util.*"%>
<% 
    
try {
    Connection connection = null;
    Statement statement = null;
    ResultSet resultSet = null;
    
    Class.forName("com.mysql.jdbc.Driver");
    String ID  = request.getParameter("id");
                
    connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/labexercise3","root","");
    statement = connection.createStatement();
    String UpdateQuery = "SELECT * FROM staff WHERE id = " + ID;
    resultSet = statement.executeQuery(UpdateQuery);
    
    while (resultSet.next()) {
%>


<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Update</title>
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

        table {
            background-color: #fff;
            border: 1px solid #ddd;
            border-radius: 10px;
            padding: 20px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.2);
            max-width: 400px;
            width: 100%;
            text-align: center;
        }

        h1 {
            text-align: center;
        }

        td {
            padding: 10px;
            text-align: left;
        }
        
        .form-label {
            font-weight: bold;
        }

        .form-input {
            width: 100%;
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 5px;
        }
        
        .select-input {
            width: 100%;
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 5px;
        }
        
        .submit-button {
            background-color: #4CAF50; /* Green */
            border: none;
            color: white;
            padding: 15px 32px;
            text-align: center;
            text-decoration: none;
            display: inline-block;
            font-size: 16px;
            margin: 4px 2px;
            cursor: pointer;
            border-radius: 5px;
        } .back-button {
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
    <a href="viewAdmin.jsp" class="back-button">Back</a>
    <center>
        <form action="updateProcess.jsp" method="post">
           <input type="hidden" name="id" value="<%=resultSet.getString("id")%>">

        <table>
            <h1>Admin Vehicle Modification</h1>
                <tr>
                    <td>Staff Full Name:</td>
                    <td>:</td>
                    <td><%= resultSet.getString("name") %></td>
                </tr>
                <tr>
                    <td>Staff Registration Number:</td>
                    <td>:</td>
                    <td><%= resultSet.getString("ic_number") %></td>
                </tr>
                <tr>
                    <td>Staff Identification Number:</td>
                    <td>:</td>
                    <td><%= resultSet.getString("reg_number") %></td>
                </tr>
                <tr>
                    <td>Staff Phone Number:</td>
                    <td>:</td>
                    <td><%= resultSet.getString("phone_number") %></td>
                </tr>
                <tr>
                    <td>Available Vehicle:</td>
                    <td>:</td>
                    <td><%= resultSet.getString("available_vehicle") %></td>
                </tr>
         
                <tr>
                    <td>Number of Passengers:</td>
                    <td>:</td>
                    <td><%= resultSet.getString("passenger_count") %></td>
                </tr>
                <tr>
                    <td>Destination Address:</td>
                    <td>:</td>
                    <td><%= resultSet.getString("destination") %></td>
                </tr>
                <tr>
                    <td>Purpose of Use:</td>
                    <td>:</td>
                    <td><%= resultSet.getString("purpose") %></td>
                </tr>
        <tr>
            <td class="form-label">Status:</td>
            <td>:</td>
            <td>
                <select name="status" class="select-input">
                    <option value="Accept">Accept</option>
                    <option value="Decline">Decline</option>
                </select>
            </td>
        </tr>
        <tr>
            <td></td>
            <td></td>
            <td><input type="submit" value="Submit" class="submit-button"></td>
        </tr>
    </table>
</form>
    </center>
</body>
</html>
<%
    }
} catch (Exception e) {
    e.printStackTrace();
} 
%>

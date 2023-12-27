<%-- 
    Document   : viewVehicle
    Created on : 29 Oct 2023, 9:31:09 pm
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*,java.util.*"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>View Vehicle for Admin</title>
    </head>
  <style>
        .button {
            background-color: #FF0000; /* Red */
            border: none;
            color: white;
            padding: 15px 32px;
            text-align: center;
            text-decoration: none;
            display: inline-block;
            font-size: 16px;
            margin: 4px 2px;
            cursor: pointer;
        }

        .buttonupdate {
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

    <body>
        <a href="adminDashboard.jsp" class="back-button">Back</a>   
    <center>
        <h1>All Vehicle Information</h1>
        <table border="1">
            <tr>
                <td>Staff Full Name</td>
                <td> Staff Identification Number</td>
                <td>Staff Registration Number</td>
                <td>Staff Phone Number</td>
                <td>Available Vehicle</td>
                <td>Passenger Count</td>
                <td>Destination</td>
                 <td>Purpose</td>
                   <td>Status</td>
                
                

            </tr>
            <!--display data from database-->
            <%
                try {
                
                Connection connection = null;
                Statement statement = null;
                ResultSet resultSet = null;
                Class.forName("com.mysql.jdbc.Driver");
                connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/labexercise3","root","");
                statement = connection.createStatement();
                String DisplayQuery= "SELECT * FROM staff";
                resultSet = statement.executeQuery(DisplayQuery);
                
                while(resultSet.next())
                {
            %>
            <tr>
                <td><%=resultSet.getString("name")%></td>

                <td><%=resultSet.getString("ic_number")%></td>

                <td><%=resultSet.getString("reg_number")%></td>
                
                <td><%=resultSet.getString("phone_number")%></td>

                <td><%=resultSet.getString("available_vehicle")%></td>
                

                <td><%=resultSet.getString("passenger_count")%></td>
                
                  <td><%=resultSet.getString("destination")%></td>
                  
                  
                <td><%=resultSet.getString("purpose")%></td>
                
                <td><%=resultSet.getString("Status")%></td>
               


                            </tr>
                            <%
                            //display data
                            }
               
                            }
                            catch(Exception e)
                            {
                            //display alert error
                                out.println(e);
                            }
                
                
                            %>


                            </table>
                            </center>
                            </body>

                            </html>

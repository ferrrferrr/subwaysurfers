<%-- 
    Document   : deleteVehicle
    Created on : 29 Oct 2023, 10:05:17 pm
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*,java.util.*"%>
<%
        String id = request.getParameter("id");
        
 try {
                
                Connection connection = null;
                Statement statement = null;
               
                Class.forName("com.mysql.jdbc.Driver");
                connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/labexercise3","root","");
                statement = connection.createStatement();   
                String DeleteQuery = "DELETE FROM staff WHERE id = "+id;
               statement.executeUpdate(DeleteQuery);
    }
        
                catch(Exception e){
                out.println(e);
    }
    
    

%>
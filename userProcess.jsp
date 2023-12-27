<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@page import="java.sql.*,java.util.*"%>



<%

   
    String name = request.getParameter("staff_full_name");
    String ic_number = request.getParameter("staff_ic_number");
    String reg_number = request.getParameter("staff_reg_number");
    String phone_number = request.getParameter("staff_phone_number");
    String available_vehicle = request.getParameter("available_vehicle");
    String passenger_count = request.getParameter("passenger_count");
    String destination = request.getParameter("destination_address");
    String purpose = request.getParameter("purpose");
    String status = request.getParameter("status");
  
    
    String InsertQuery = "INSERT INTO staff(name,ic_number,reg_number,phone_number,available_vehicle,passenger_count,destination,purpose,status)"
            + "  VALUES('"+name+"','"+ic_number+"','"+reg_number+"','"+phone_number+"','"+available_vehicle+"','"+passenger_count+"','"+destination+"','"+purpose+"','"+status+")";


    try
    {
    Connection connection = null;
    Statement statement = null;
    Class.forName("com.mysql.jdbc.Driver");
    connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/labexercise3","root","");
    statement = connection.createStatement();
    statement.executeUpdate(InsertQuery); 
    response.sendRedirect("SuccessAlert.jsp");
    
    }
    catch(Exception e)

    {
    out.println(e);
    }

%>  
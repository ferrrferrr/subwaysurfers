<%-- 
    Document   : updateVehicleProcess
    Created on : 29 Oct 2023, 9:35:27 pm
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*,java.util.*"%>
<%

try
{
    String id = request.getParameter("id");
    String Status = request.getParameter("status");
    
        
    PreparedStatement ps = null;
Connection connection = null;
Class.forName("com.mysql.jdbc.Driver");
   
connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/labexercise3","root","");
String sql = "UPDATE staff set status=? WHERE id=?";

    
ps = connection.prepareStatement(sql);
ps.setString(1, Status);
 
    int i = ps.executeUpdate();
    
    if ( i > 0 ){
    
    }
    else
    {
            }
}
catch(Exception e)
{
   
    out.println("There is a problem in updating Vehicle Record");
    }


%>  
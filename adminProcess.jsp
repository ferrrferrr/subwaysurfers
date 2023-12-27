<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page import="java.sql.*, java.util.*" %>
<%
String adminUsername = request.getParameter("admin_username");
String adminPassword = request.getParameter("admin_password");

try {
    Connection connection = null;
    Statement statement = null;
    ResultSet resultSet = null;

    Class.forName("com.mysql.jdbc.Driver");
     connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/labexercise3","root","");
    statement = connection.createStatement();

    String query = "SELECT * FROM admin WHERE username = '" + adminUsername + "' AND password = '" + adminPassword + "'";
    resultSet = statement.executeQuery(query);

    if (resultSet.next()) {
        // Admin login successful
        response.sendRedirect("viewAdmin.jsp");
    } else {
        // Admin login failed, redirect to an error page or display a message
        response.sendRedirect("adminLoginError.jsp");
    }

} catch (Exception e) {
    out.println(e);
}
%>

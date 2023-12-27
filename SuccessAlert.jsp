<%-- 
    Document   : SuccessAlert
    Created on : 2 Nov 2023, 10:40:59 pm
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <script>
            function alertName(){
                
                alert("User Vehicle Data has been registered succesfully");
            }
            
        </script>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        
    </head>
    <body>
        <jsp:include page = "userLogin.jsp"></jsp:include>
        <script type="text/javascript">
            
            window.onload = alertName;
            
            
        </script>
    </body>
</html>

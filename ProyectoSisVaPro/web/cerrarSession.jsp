<%-- 
    Document   : cerrarSession
    Created on : Oct 12, 2017, 1:27:05 AM
    Author     : dsarm
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%  
HttpSession objSesion = request.getSession();  
objSesion.invalidate();
%>  
<jsp:forward page="login.jsp"/> 
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
    </body>
</html>

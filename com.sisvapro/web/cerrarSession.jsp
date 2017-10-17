<%-- 
    Document   : cerrarsesion
    Created on : 10-16-2017, 10:56:54 PM
    Author     : David Sarmiento, Carlos Lopez
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%  
HttpSession objSesion = request.getSession();  
objSesion.invalidate();
%>  
<jsp:forward page="index.jsp"/> 
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

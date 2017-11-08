<%-- 
    Document   : ofertas
    Created on : Nov 7, 2017, 9:58:26 PM
    Author     : David Sarmiento
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%

    String usuario = null;

    String tipoUsuario = null;

    String idUsuario = null;

    try {

        HttpSession objSesion = request.getSession(false);

        HttpSession objSesionTipo = request.getSession(false);

        usuario = (String) objSesion.getAttribute("usuario");

        tipoUsuario = (String) objSesionTipo.getAttribute("tipo");
        idUsuario = (String) objSesionTipo.getAttribute("id").toString();
        if (usuario == null) {
            response.sendRedirect("../accesoDenegado.jsp");
        }
        if (usuario.equals("Empleador")) {
            response.sendRedirect("menuEmpleador.jsp");
        } else if (usuario.equals("Empresa")) {
            response.sendRedirect("menuEmpresa.jsp");
        }

    } catch (Exception e) {

        out.print(e.toString());

    }
%>


<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" type="text/css" href="../../css/bootstrap.min.css">
        <link rel="stylesheet" type="text/css" href="../../css/style.css">
        <script type="text/javascript" src="../../js/jquery-3.2.1.slim.min.js"></script>
        <script type="text/javascript" src="../../js/popper.min.js"></script>
        <script type="text/javascript" src="../../js/bootstrap.min.js"></script>
        <script type="text/javascript" src="../../js/mostarOcultar.js"></script>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
    </body>
</html>

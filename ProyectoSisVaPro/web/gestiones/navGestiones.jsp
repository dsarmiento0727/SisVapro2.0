<%-- 
    Document   : menu
    Created on : Oct 11, 2017, 4:54:36 PM
    Author     :David Sarmiento
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
    String usuario = null;
    String tipoUsuario = null;
    try {
        String cerrar = "";
        HttpSession objSesion = request.getSession(false);
        HttpSession objSesionTipo = request.getSession(false);
        usuario = (String) objSesion.getAttribute("usuario");
        tipoUsuario = (String) objSesionTipo.getAttribute("tipo");

        if (tipoUsuario == null) {
            response.sendRedirect("registro.jsp");
        } else if (tipoUsuario.equals("Administrador")) {

        } else if (tipoUsuario.equals("Vendedor")) {

        } else {
            cerrar = "Tipo Usuario no encontrado";
            response.sendRedirect("../accesoDenegado.jsp");
        }
    } catch (Exception e) {
        out.print(e.toString());
    }
%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css" integrity="sha384-/Y6pD6FV/Vv2HJnA6t+vslU6fwYXjCFtcEpHbNJ0lyAFsXTsjBbfaDjzALeQsN6M" crossorigin="anonymous">
        <link rel="stylesheet" type="text/css" href=".../CSS/style.css">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Gestionar Area</title>
        <script src="JavaScript/Procesos.js"></script>
    </head>
    <body>

        <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
            <a class="navbar-brand" href="#">
                <img src="../Imagenes/man.png" width="30" height="30" class="d-inline-block align-top" alt="">
                SISVAPRO
            </a>

            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>

            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav mr-auto">
                    <li class="nav-item active">
                        <a class="nav-link" href="#">Menu Principal</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">Gestionar</a>
                    </li>
                </ul>
                <form class="form-inline my-2 my-lg-0">
                    <input class="form-control mr-sm-2" type="text" placeholder="<% out.print(usuario);%>" aria-label="Search" disabled="true">
                    <a href="#" class="btn btn-outline-danger my-2 my-sm-0">Cerrar Session</a>
                    
                </form>
            </div>
        </nav>
    </body>
</html>

<%-- 
    Document   : navBar
    Created on : Oct 11, 2017, 6:02:53 PM
    Author     : dsarm
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
    } catch (Exception e) {
        out.print(e.toString());
    }
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
            <a class="navbar-brand" href="#">
                <img src="Imagenes/man.png" width="30" height="30" class="d-inline-block align-top" alt="">
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
                    <span class="input-group-addon" id="basic-addon1"><% out.print(usuario);%></span>
                   
                    <a href="cerrarSession.jsp" class="btn btn-outline-danger my-2 my-sm-0">Cerrar Session</a>
                </form>
            </div>
        </nav>
    </body>
</html>

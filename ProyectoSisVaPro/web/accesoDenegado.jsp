<%-- 
    Document   : accesoDenegado
    Created on : Oct 12, 2017, 12:44:37 AM
    Author     : dsarm
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css" integrity="sha384-/Y6pD6FV/Vv2HJnA6t+vslU6fwYXjCFtcEpHbNJ0lyAFsXTsjBbfaDjzALeQsN6M" crossorigin="anonymous">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Acceso Denegado</title>
    </head>
    <body>
        <%

            try {
                String cerrar = "";
                HttpSession objSesion = request.getSession(false);
                HttpSession objSesionTipo = request.getSession(false);
                String usuario = (String) objSesion.getAttribute("usuario");
                String tipoUsuario = (String) objSesionTipo.getAttribute("tipo");

                if (tipoUsuario.equals("Administrador")) {
                    out.print("<center><h1>Bienvenido <span class='adge badge-success'> " + usuario + " </span></h1>");
                    out.print("<h1>Usted tiene privilegios de <span class='badge badge-warning'>" + tipoUsuario + "</span></h1>");
                    out.print("<h1>Este sitio solo puede ser visible por un <span class='badge badge-secondary'> Administrador </span></h1>");
                    cerrar = "<a class='badge badge-pill badge-danger' href='index.jsp'>Regresar</a>";
                    out.print(cerrar);
                }
            } catch (Exception e) {
                if (e.toString().equals("java.lang.NullPointerException")) {

                }
                else {out.print(e.toString());}
                //response.sendRedirect("registro.jsp");
            }
        %>
    </body>
</html>

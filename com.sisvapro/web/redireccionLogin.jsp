<%-- 
    Document   : redireccionLogin
    Created on : Nov 1, 2017, 5:18:17 PM
    Author     : David Sarmiento
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Redireccion</title>
    </head>
    <body>
        <h1>Esta Pagina Es Unicamente Para Redireccionar</h1>
        <%

            String usuario = null;

            String tipoUsuario = null;

            try {

                HttpSession objSesion = request.getSession(false);

                HttpSession objSesionTipo = request.getSession(false);

                usuario = (String) objSesion.getAttribute("usuario");

                tipoUsuario = (String) objSesionTipo.getAttribute("tipo");
                if (usuario == null) {
                    response.sendRedirect("accesoDenegado.jsp");
                } else if (usuario.equals("Administrador")) {
                    response.sendRedirect("jsp/menuAdministrador.jsp");
                } else if (usuario.equals("Empleador")) {
                    response.sendRedirect("jsp/menuEmpleador.jsp");
                } else if (usuario.equals("Empresa")) {
                    response.sendRedirect("jsp/menuEmpresa.jsp");
                }

            } catch (Exception e) {

                out.print(e.toString());

            }

        %>
    </body>
</html>

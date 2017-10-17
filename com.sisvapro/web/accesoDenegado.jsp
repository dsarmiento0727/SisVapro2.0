<%-- 
    Document   : accesoDenegado
    Created on : 10-16-2017, 11:03:00 PM
    Author     : David Sarmiento, Carlos Lopez
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
        <script type="text/javascript" src="js/jquery-3.2.1.slim.min.js"></script>
        <script type="text/javascript" src="js/popper.min.js"></script>
        <script type="text/javascript" src="js/bootstrap.min.js"></script>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
    <center>
        <%

            try {
                String cerrar = "";
                HttpSession objSesion = request.getSession(false);
                HttpSession objSesionTipo = request.getSession(false);
                String usuario = (String) objSesion.getAttribute("usuario");
                String tipoUsuario = (String) objSesionTipo.getAttribute("tipo");

                if (tipoUsuario == null) {
                    out.print("<center><h1>Bienvenido <span class='adge badge-success'> Usuario </span></h1>");
                    out.print("<h1>Usted no a iniciado session <span class='badge badge-warning'>Inicie Secion</span></h1>");
                    out.print("<h1>Este sitio solo puede ser visible por un <span class='badge badge-secondary'> Administrador </span></h1>");
                    cerrar = "<a class='badge badge-pill badge-danger' href='index.jsp'>Regresar a Menu Principal</a>";
                    out.print(cerrar);
                } else if (tipoUsuario.equals("Administrador")) {
                    response.sendRedirect("jsp/menuAdministrador.jsp");
                }else if (tipoUsuario.equals("Administrador")) {
                    response.sendRedirect("jsp/menuEmpleador.jsp");
                }
                else if (tipoUsuario.equals("Administrador")) {
                    response.sendRedirect("jsp/menuEmpresa.jsp");
                }

            } catch (Exception e) {
                if (e.toString().equals("java.lang.NullPointerException")) {

                } else {
                    out.print(e.toString());
                }
                //response.sendRedirect("registro.jsp");
            }
        %>
        <div class="progress">
            <div class="progress-bar progress-bar-striped progress-bar-animated bg-danger" role="progressbar" aria-valuenow="75" aria-valuemin="0" aria-valuemax="100" style="width:100%"></div>
        </div>
        <h1>Acceso <span class='badge badge-danger'>DENEGADO</span></h1>
        <marquee><h1>Acceso <span class='badge badge-danger'>DENEGADO</span></h1></marquee>
        <h1>Acceso <span class='badge badge-danger'>DENEGADO</span></h1>
        <p></p>        <h2><a class="badge badge-pill badge-secondary" href="login.jsp">Regresar</a></h2>

        <h2><a class="badge badge-pill badge-secondary" href="index.jsp">Regresar</a></h2>
    </center>
</body>
</html>

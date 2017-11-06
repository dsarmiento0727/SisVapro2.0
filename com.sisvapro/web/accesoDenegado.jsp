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
        <link rel="stylesheet" type="text/css" href="css/style.css">
        <script type="text/javascript" src="js/jquery-3.2.1.slim.min.js"></script>
        <script type="text/javascript" src="js/popper.min.js"></script>
        <script type="text/javascript" src="js/bootstrap.min.js"></script>

        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Acceso Denegado</title>
    </head>
    <%
        HttpSession objSesion = request.getSession(false);
        HttpSession objSesionTipo = request.getSession(false);
        String usuario = (String) objSesion.getAttribute("usuario");
        String tipoUsuario = (String) objSesionTipo.getAttribute("tipo");
        try {

            if (tipoUsuario == null) {

            } else if (tipoUsuario.equals("Administrador")) {
                response.sendRedirect("jsp/menuAdministrador.jsp");
            } else if (tipoUsuario.equals("Administrador")) {
                response.sendRedirect("jsp/menuEmpleador.jsp");
            } else if (tipoUsuario.equals("Administrador")) {
                response.sendRedirect("jsp/menuEmpresa.jsp");
            }

        } catch (Exception e) {
            if (e.toString().equals("java.lang.NullPointerException")) {

            } else {
                out.print(e.toString());
            }
            // response.sendRedirect("registro.jsp");
        }
    %>

    <body>
        <nav class="navbar navbar-expand-lg navbar-dark bg-dark">

            <a class="navbar-brand" href="index.jsp">
                <img src="imagenes/logo.png" width="30" height="30" class="d-inline-block align-top" alt="">
                MUNDO EMPLEO
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

                        <a class="nav-link" href="#quienes">Contactanos</a>

                    </li>
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="http://example.com" id="navbarDropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            Dropdown link
                        </a>
                        <div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
                            <a class="dropdown-item" href="#">Action</a>
                            <a class="dropdown-item" href="#">Another action</a>
                            <a class="dropdown-item" href="#">Something else here</a>
                        </div>
                    </li>
                </ul>



                <%                 if (usuario == null) {
                %>
                <ul class="navbar-nav mr-right">

                    <li>
                        <div class="dropdown show">
                            <div class="container">
                                <a class="btn btn-outline-danger my-2 my-sm-0" href="#" role="button" id="dropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                    Iniciar Session
                                </a>


                                <div class="dropdown-menu dropdown-menu-right" aria-labelledby="dropdownMenuLink">
                                    <form action="iniciarSesion" method="post">
                                        <div class="form-group" >

                                            <input id="txtUsuario" class="form-control" type="text" name="txtusuario" required="true" style="text-align: center" placeholder="Ingrese su usuario.">
                                        </div>                            

                                        <div class="form-group" >

                                            <input id="txtcontra" class="form-control" type="password" name="txtcontra" required="true" style="text-align: center" placeholder="Ingrese su contrase&ntilde;a.">
                                            <input type="checkbox" name="ck" value="recordar">Recordar Usuario</center>

                                        </div>
                                        <input type="submit" name="btnIngresar" class="btn btn-success btn-lg btn-block" value="Ingresar">        
                                        <p> No tiene cuenta? <a class="badge badge-pill badge-info" href="registro.jsp" role="button">Registrate</a>
                                    </form>


                                </div>
                            </div>
                        </div>

                    </li>
                </ul>
                <%
                } else {
                %>
                <ul class="navbar-nav mr-right">

                    <li>
                        <form class="form-inline my-2 my-lg-0">


                            <div class="dropdown show">
                                <div class="container">

                                    <a class="btn btn-outline-secondary my-2 my-sm-0" href="#" role="button" id="dropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                        <span class="input-group-addon" id="basic-addon1"><%= usuario.toUpperCase()%></span>
                                    </a>


                                    <div class="dropdown-menu dropdown-menu-right" aria-labelledby="dropdownMenuLink">
                                        <a href="redireccionLogin.jsp" class="btn btn-primary btn-lg btn-block">Menu <%= tipoUsuario%></a>
                                        <a href="cerrarSession.jsp" class="btn btn-danger btn-lg btn-block">Cerrar Session</a>
                                    </div>
                                </div>
                            </div>


                        </form>


                    </li>
                </ul>




                <%
                    }
                %>

            </div>

        </nav>
    <center>
        <img class="d-block w-100" src="imagenes/acceso-denegado.png" alt="First slide">
        <h2><a class="badge badge-pill badge-secondary" href="index.jsp">Regresar</a></h2>
    </center>
    <footer class="sticky-footer">
        <div class="container">
            <div class="text-center">
                <small>Copyright © Mundo Empleo 2017</small>
            </div>
        </div>
    </footer>
</body>
</html>

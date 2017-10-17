<%-- 
    Document   : index
    Created on : 10-16-2017, 09:56:37 PM
    Author     : carlos
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%

    String usuario = null;

    String tipoUsuario = null;

    try {

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
        
        <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
        <link rel="stylesheet" type="text/css" href="css/style.css">
        <script type="text/javascript" src="js/jquery-3.2.1.slim.min.js"></script>
        <script type="text/javascript" src="js/popper.min.js"></script>
        <script type="text/javascript" src="js/bootstrap.min.js"></script>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Inicio</title>
    </head>
    <body>
        <nav class="navbar navbar-expand-lg navbar-dark bg-dark">

            <a class="navbar-brand" href="#">
                <img src="imagenes/logo.png" width="30" height="30" class="d-inline-block align-top" alt="">
                Mundo Empleo
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
                            Gestionar
                        </a>
                        <div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
                            <a class="dropdown-item" href="../gestionar/gestionarAreaProfesional.jsp">Area Profesional</a>
                            <a class="dropdown-item" href="../gestionar/gestionarDepartamento.jsp">Departamento</a>
                            <a class="dropdown-item" href="../gestionar/gestionarExperienciaLaboral.jsp">Experiencia Laboral</a>
                            <a class="dropdown-item" href="../gestionar/gestionarHabilidad.jsp">Habilidad</a>
                            <a class="dropdown-item" href="../gestionar/gestionarOfertaEmpleo.jsp">Oferta Empleo</a>
                            <a class="dropdown-item" href="../gestionar/gestionarPais.jsp">Pais</a>
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
                            <a class="btn btn-outline-danger my-2 my-sm-0" href="#" role="button" id="dropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                Iniciar Session
                            </a>

                            <div class="dropdown-menu dropdown-menu-right" aria-labelledby="dropdownMenuLink">
                                <form>
                                    <div class="form-group" >
                                        <label for="txtUsuario" style="text-align: center"><strong>Usuario</strong> </label>
                                        <input id="txtUsuario" class="form-control" type="text" name="txtusuario" required="true" style="text-align: center" placeholder="Ingrese su usuario.">
                                    </div>                            

                                    <div class="form-group" >
                                        <label for="txtcontra" style="text-align: center"><strong>Contrasenia</strong> </label>
                                        <input id="txtcontra" class="form-control" type="password" name="txtcontra" required="true" style="text-align: center" placeholder="Ingrese su clave.">
                                        <input type="checkbox" name="ck" value="recordar">Recordar Usuario</center>
                                        <div class="btn-group" role="group" aria-label="Basic example" >
                                            <input type="submit" name="btnIngresar" class="btn btn-primary" value="Ingresar">
                                            <input type="reset" name="btnCancelar" class="btn btn-danger" value="Cancelar"> 
                                        </div>
                                </form>

                            </div>
                        </div>
                        </div>
                    </li>
                </ul>
                <%
                } else {
                %>
                <form class="form-inline my-2 my-lg-0">

                    <span class="input-group-addon" id="basic-addon1">Usuario</span>
                    <a href="cerrarSession.jsp" class="btn btn-outline-danger my-2 my-sm-0">Cerrar Session</a>

                </form>
                <%
                    }
                %>

            </div>

        </nav>

        

    </body>
</html>
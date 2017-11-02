<%-- 
    Document   : perfil
    Created on : 10-06-2017, 06:47:30 PM
    Author     : Karen Escobar, David Sarmiento, Carlos Lopez
--%>


<%@page import="com.modelo.Empleador"%>
<%@page import="com.modelo.CrudEmpleador"%>
<%@page import="com.modelo.AreaProfesional"%>
<%@page import="com.modelo.ExperienciaLaboral"%>
<%@page import="com.modelo.FormacionAcademica"%>
<%@page import="com.modelo.CrudExperienciaLaboral"%>
<%@page import="com.modelo.CrudAreaProfesional"%>
<%@page import="com.modelo.CrudFormacionAcademica"%>
<%@page import="com.modelo.Habilidad"%>
<%@page import="com.modelo.Usuario"%>
<%@page import="com.modelo.Departamento"%>
<%@page import="com.modelo.Pais"%>
<%@page import="java.util.List"%>
<%@page import="com.modelo.CrudUsuario"%>
<%@page import="com.modelo.CrudHabilidad"%>
<%@page import="com.modelo.CrudDepartamento"%>
<%@page import="com.modelo.CrudPais"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%

    String usuario = null;

    String tipoUsuario = null;

    try {

        HttpSession objSesion = request.getSession(false);

        HttpSession objSesionTipo = request.getSession(false);

        usuario = (String) objSesion.getAttribute("usuario");

        tipoUsuario = (String) objSesionTipo.getAttribute("tipo");
        if (usuario == null) {
            response.sendRedirect("../../accesoDenegado.jsp");
        }

    } catch (Exception e) {

        out.print(e.toString());

    }

%>
<!DOCTYPE html>

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Gestionar Perfil</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css" integrity="sha384-/Y6pD6FV/Vv2HJnA6t+vslU6fwYXjCFtcEpHbNJ0lyAFsXTsjBbfaDjzALeQsN6M" crossorigin="anonymous">
    <link rel="stylesheet" type="text/css" href="../../css/style.css">
    <script src="../../js/Procesos.js"></script>

    <script type="text/javascript" src="../../js/mostarOcultar.js"></script>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
</head>
<%        CrudPais crudpa = new CrudPais();
    CrudDepartamento crudd = new CrudDepartamento();
    CrudFormacionAcademica crudf = new CrudFormacionAcademica();
    CrudHabilidad crudh = new CrudHabilidad();
    CrudAreaProfesional cruda = new CrudAreaProfesional();
    CrudExperienciaLaboral crude = new CrudExperienciaLaboral();
    CrudUsuario crudu = new CrudUsuario();
    CrudEmpleador crud = new CrudEmpleador();
%>

<center>
    <br>
    <div class="p-1 mb-1 bg-light text-black"><h1>Registro de Empleador</h1></div>
    <br>
    <form action="procesarEmpleador" method="POST" name="frmEmpleador">
        <div id="pagina1" style="display:block;">
            <div class="form-group, position-relative"> 
                <img src="../../imagenes/fotoprueba.jpg" style="width: 150px" class="rounded float-center" alt="..." class="rounded">
                <div class="col-6">
                    <label for="foto"><strong>Foto de Perfil</strong></label>
                    <input type="file" class="form-control-file" id="foto" name="foto">
                </div>
            </div>

            <div class="container">
                <div class="row">
                    <div class="col align-self-start">
                        <div class="row justify-content-start">
                            <div class="col-4">
                                <div class="form-group">
                                    <label for="Idperfil" class="col-form-label"><strong>Id Perfil</strong></label>
                                    <input type="text" class="form-control" id="txtIdPerfil" name="txtIdPerfil" placeholder="Id Perfil">
                                </div>
                            </div>
                        </div> 
                        <div class="form-row">
                            <div class="form-group col-md-6">
                                <label for="nombres" class="col-form-label"><strong>Nombres</strong></label>
                                <input type="text" class="form-control" id="txtNombres" name="txtNombres" placeholder="Nombres">
                            </div>
                            <div class="form-group col-md-6">
                                <label for="apellidos" class="col-form-label"><strong>Apellidos</strong></label>
                                <input type="text" class="form-control" id="txtApellidos" name="txtApellidos" placeholder="Apellidos">
                            </div>
                        </div>
                        <div class="col-13">
                            <div class="form-group">
                                <label for="direccion" class="col-form-label"><strong>Direccion actual</strong></label>
                                <input type="text" class="form-control" id="txtDireccion" name="txtDireccion" placeholder="Direccion actual donde reside">
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="col-6">
                                <div class="form-group">
                                    <label for="telefono" class="col-form-label"><strong>Telefono</strong></label>
                                    <input type="text" class="form-control" id="txtTelefono" name="txtTelefono" placeholder="Telefono celular o de casa">
                                </div>
                            </div>
                            <div class="col-6">
                                <div class="form-group">
                                    <label for="correor" class="col-form-label"><strong>Correo Electronico</strong></label>
                                    <input type="email" class="form-control" id="txtCorreo" name="txtCorreoE" placeholder="nombre@ejemplo.com">
                                </div>
                            </div>
                        </div>
                        <div class="col-6">
                            <div class="form-group">
                                <label for="fecha" class="col-form-label"><strong>Fecha de Nacimiento</strong></label>
                                <input type="date" class="form-control" id="txtFechaNac" name="txtFechaNac" >
                            </div>
                        </div>
                        <div class="form-group">
                            <strong>Género</strong>
                            <label class="custom-control custom-radio">
                                <input type="radio" name="genero" value="Femenino" class="custom-control-input" checked="">
                                <span class="custom-control-indicator"></span>
                                <span class="custom-control-description">Femenino</span>
                            </label>
                            <label class="custom-control custom-radio">
                                <input type="radio" name="genero" value="Masculino" class="custom-control-input">
                                <span class="custom-control-indicator"></span>
                                <span class="custom-control-description">Masculino</span>
                            </label>
                        </div>
                        <div class="form-row">
                            <div class="col-6">
                                <div class="form-group">
                                    <label for="DUI" class="col-form-label"><strong>DUI</strong></label>
                                    <input type="text" class="form-control" id="txtDui" name="txtIdPerfil" placeholder="########-#">
                                </div>
                            </div>
                            <div class="col-6">
                                <div class="form-group">
                                    <label for="NIT" class="col-form-label"><strong>NIT</strong></label>
                                    <input type="text" class="form-control" id="txtNit" name="txtNit" placeholder="###">
                                </div>
                            </div>
                        </div>
                    </div><!--cerra al final-->
                </div><!--cerrar al final-->
            </div><!--cerrar final-->
            <input type="button" onclick="siguientePagina()" value="Siguiente">

        </div>
        <div id="pagina2" style="display:none;">
            <div class="form-row">
                <div class="col align-self-start">
                    <div class="row justify-content-start">
                        <div class="col-5">
                            <div class="form-group">
                                <label for="txtNacio" class="col-form-label"><strong>Nacionalidad</strong></label>
                                <input type="text" class="form-control" id="txtNacionalidad" name="txtNacionalidad" placeholder="Nacionalidad">
                            </div>
                        </div>
                    </div>





                </div>
            </div>
        </div>      
    </form>
</center>



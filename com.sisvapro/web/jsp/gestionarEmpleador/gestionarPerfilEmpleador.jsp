<%-- 
    Document   : gestionarPerfilEmpleador
    Created on : Nov 6, 2017, 12:35:16 AM
    Author     : David Sarmiento
--%>

<%@page import="com.modelo.Empleador"%>
<%@page import="com.sun.imageio.plugins.common.I18N"%>
<%@page import="com.modelo.CrudEmpleador"%>
<%@page import="com.modelo.CrudPais"%>
<%@page import="com.modelo.Pais"%>
<%@page import="java.util.List"%>
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

    CrudPais crudpa = new CrudPais();
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
        <title>JSP Page</title>
    </head>
    <body>
        <jsp:include page="menuGestionar.jsp"/>
<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
        <ul class="nav nav-pills mb-3" id="pills-tab" role="tablist">
            <li class="nav-item">
                <a class="nav-link active" id="pills-home-tab" data-toggle="pill" href="#pills-home" role="tab" aria-controls="pills-home" aria-selected="true">Perfil</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" id="pills-profile-tab" data-toggle="pill" href="#pills-profile" role="tab" aria-controls="pills-profile" aria-selected="false">Formacion Academica</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" id="pills-contact-tab" data-toggle="pill" href="#pills-contact" role="tab" aria-controls="pills-contact" aria-selected="false">Experiencia Laboral</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" id="pills-contact-tab" data-toggle="pill" href="#pills-test" role="tab" aria-controls="pills-test" aria-selected="false">Holi</a>
            </li>
        </ul>
</nav>


        <div class="tab-content" id="pills-tabContent">



            <%
                CrudEmpleador crudemp = new CrudEmpleador();
                for (Empleador empi : crudemp.seleccionarEmpleador(Integer.parseInt(idUsuario))) {
            %>
            <div class="tab-pane fade show active" id="pills-home" role="tabpanel" aria-labelledby="pills-home-tab">
                <form name="frmPEmpleado" action="procesarGestionarPerfilEmpleador" method="POST">
                    <div class="p-1 mb-1 bg-light text-black"><center><h1>Perfil de Empleador</h1></center></div>
                    <div class="jumbotron">
                        <div class="form-group, position-relative">
                            <div class="col-6">
                                <label for="foto"><strong>Foto de Perfil</strong></label>
                                <input type="file" class="form-control-file" id="foto" name="foto">
                                <input type="text" class="form-control-file" id="foto2" name="foto2" style="display: none">
                            </div>
                        </div>

                        <div class="row">
                            <div class="col align-self-start">

                                <div class="form-row">
                                    <div class="form-group col-md-6">
                                        <label for="nombres" class="col-form-label"><strong>Nombres</strong></label>
                                        <input type="text" class="form-control" id="txtNombres" name="txtNombres" placeholder="Nombres" value="<%=empi.getNombres()%>">
                                    </div>
                                    <div class="form-group col-md-6">
                                        <label for="apellidos" class="col-form-label"><strong>Apellidos</strong></label>
                                        <input type="text" class="form-control" id="txtApellidos" name="txtApellidos" placeholder="Apellidos" value="<%=empi.getApellidos()%>">
                                    </div>
                                </div>
                                <div class="col-13">
                                    <div class="form-group">
                                        <label for="direccion" class="col-form-label"><strong>Direccion actual</strong></label>
                                        <input type="text" class="form-control" id="txtDireccion" name="txtDireccion" placeholder="Direccion actual donde reside" value="<%=empi.getDireccion()%>">
                                    </div>
                                </div>
                                <div class="form-row">
                                    <div class="col-6">
                                        <div class="form-group">
                                            <label for="telefono" class="col-form-label"><strong>Telefono</strong></label>
                                            <input type="text" class="form-control" id="txtTelefono" name="txtTelefono" placeholder="Telefono celular o de casa" value="<%=empi.getTelefono()%>">
                                        </div>
                                    </div>
                                    <div class="col-6">
                                        <div class="form-group">
                                            <label for="correor" class="col-form-label"><strong>Correo Electronico</strong></label>
                                            <input type="email" class="form-control" id="txtCorreo" name="txtCorreoE" placeholder="nombre@ejemplo.com" value="<%=empi.getCorreoElectronico()%>">
                                        </div>
                                    </div>
                                </div>
                                <div class="col-6">
                                    <div class="form-group">
                                        <label for="fecha" class="col-form-label"><strong>Fecha de Nacimiento</strong></label>
                                        <input type="txt" class="form-control" id="txtFechaNac" name="txtFechaNac" value="<%= empi.getFechaNac()%>" readonly>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <strong>Género</strong>
                                    <label class="custom-control custom-radio">
                                        <input type="radio" name="genero" class="custom-control-input" checked="true" value="<%= empi.getGenero()%>">
                                        <span class="custom-control-indicator"></span>
                                        <span class="custom-control-description"><%= empi.getGenero()%></span>
                                    </label>
                                </div>
                                <div class="form-row">
                                    <div class="col-6">
                                        <div class="form-group">
                                            <label for="DUI" class="col-form-label"><strong>DUI</strong></label>
                                            <input type="text" class="form-control" id="txtDui" name="txtIdPerfil" placeholder="########-#" value="<%= empi.getDui()%>">
                                        </div>
                                    </div>
                                    <div class="col-6">
                                        <div class="form-group">
                                            <label for="NIT" class="col-form-label"><strong>NIT</strong></label>
                                            <input type="text" class="form-control" id="txtNit" name="txtNit" placeholder="###" value="<%= empi.getNit()%>" >
                                        </div>
                                    </div>
                                </div>

                                <div class="form-row">
                                    <div class="col align-self-start">
                                        <div class="row justify-content-start">
                                            <label class="mr-sm-2" for="idPais"><strong>Pais</strong></label>
                                            <select class="custom-select mb-2 mr-sm-2 mb-sm-0" id="lstPais" name="lstPais"  value="3">
                                                <%                                                    List<Pais> lst1 = crudpa.mostrarPais();
                                                    for (Pais pa : lst1) {
                                                %>

                                                <option value="<%=pa.getIdPais()%>"><%=pa.getNombrePais()%></option>

                                                <%
                                                    }
                                                %>
                                            </select>   
                                            <div class="col-5">
                                                <div class="form-group">
                                                    <label for="txtNacio" class="col-form-label"><strong>Nacionalidad</strong></label>
                                                    <input type="text" class="form-control" id="txtNacionalidad" name="txtNacionalidad" placeholder="Nacionalidad" value="<%= empi.getNacionalidad()%>">
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div> 
                                                <input type="submit" value="Guardar" name="perfil">
                    </div>
                    <%
                        }
                    %>
 
                </form>

            </div>




            <div class="tab-pane fade" id="pills-profile" role="tabpanel" aria-labelledby="pills-profile-tab">
                <div class="p-1 mb-1 bg-light text-black"><center><h1>Formacion Academica</h1></center></div>
                <div class="jumbotron">
                    <div class="row">
                        <div class="form-group col-md-5">
                            <label for="idfor" class="col-form-label">Id Formacion Academica</label>
                            <input type="text" class="form-control" id="idfor" name="txtIdFormacionAcademica" placeholder="Id Formacion Academica"  value="0" readonly>
                        </div>
                        <div class="form-group col-md-5">
                            <label for="idfor1" class="col-form-label">Id Empleador</label>
                            <input type="text" class="form-control" id="idfor1" name="txtIdEmpleador" placeholder="Id Empleador"  value="0" readonly>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col col-2"><label for="niveles" class="col-form-label"><strong>Niveles de Estudio</strong></label></div>
                        <div class="col">
                            <select class="custom-select mb-1 mr-sm-1 mb-sm-1" id="lstNivel" name="lstNivel" required="true">
                                <option>Seleccione</option>
                                <option value="9 grado">9 grado</option>
                                <option value="Bachillertao Incompleto">Bachillertao Incompleto</option>
                                <option value="Bachillertao Completo">Bachillertao Completo</option>
                                <option value="Universidad 1to año">Universidad 1ro a&ntilde;o</option>
                                <option value="Universidad 2to año">Universidad 2do a&ntilde;o</option>
                                <option value="Universidad 3to año">Universidad 3er a&ntilde;o</option>
                                <option value="Universidad 4to año">Universidad 4to a&ntilde;o</option>
                                <option value="Universidad 5to año">Universidad 5to a&ntilde;o</option>
                                <option value="Graduado Universitario">Graduado Universitario</option>
                                <option value="Universidad Incompleta">Universidad Incompleta</option>
                                <option value="Maestria">Maestria</option>
                            </select></div>
                        <div class="col col-1"><label for="Estado" class="col-form-label"><strong>Estado</strong></label></div>
                        <div class="col">
                            <select class="custom-select mb-2 mr-sm-2 mb-sm-4 row-md-4" id="lstEstado" name="lstEstado" required="true">
                                <option>Seleccione</option>
                                <option value="Estudios Activos">Estudios Activos</option>
                                <option value="Estudios Pausados">Estudios Pausados</option>
                                <option value="Estudios Terminados">Estudios Terminados</option>
                            </select>
                        </div>
                        <div class="w-100"></div>
                        <div class="col col-2">
                            <label for="carrera" class="col-sm-2 col-form-label mb-sm-4"><strong>Carrera</strong></label>
                        </div>
                        <div class="col-8">
                            <input type="text" class="form-control" id="txtCarrera" name="txtCarrera"placeholder="Carrera" required="true">
                        </div>
                    </div> 
                </div>             
            </div>

            <div class="tab-pane fade" id="pills-contact" role="tabpanel" aria-labelledby="pills-contact-tab">
                <center>
                    <div class="p-1 mb-2 bg-light text-black">
                        <h1>Registro de Experiencia Laboral</h1>
                    </div>
                </center>    
                <div class="jumbotron" style="color:black">
                    <div class="col align-self-star">
                        <div class="form-row">
                            <div class="form-group col-md-5">
                                <label for="idExperienciaLaboral" class="col-form-label">Id Experiencia Laboral</label>
                                <input type="text" class="form-control" id="idExperienciaLaboral" name="txtIdExperienciaLaboral" placeholder="Id Experiencia Laboral"  value="0" readonly>
                            </div>
                            <div class="col align-self-center">
                                <div class="row justify-content-center">
                                    <div class="form-group col-md-8">
                                        <label for="idEmpleador" class="col-form-label">Id Empleador</label>
                                        <input type="text" class="form-control" id="idEmpleador" name="txtIdEmpleador" placeholder="Id Empleado" >
                                    </div>
                                </div>
                            </div>

                        </div>
                        <div class="form-row">

                            <div class="form-group col-md-5">
                                <label for="nombreEmpresa" class="col-form-label">Nombre de la Empresa</label>
                                <input type="text" class="form-control" id="nombreEmpresa" name="txtNombreEmpresa" placeholder="Nombre de la Empresa">
                            </div>
                            <div class="col align-self-center">
                                <div class="row justify-content-center">
                                    <div class="form-group col-md-8">
                                        <label for="puesto" class="col-form-label">Puesto</label>
                                        <input type="text" class="form-control" id="puesto" name="txtPuesto" placeholder="Puesto ">
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="form-group col-md-5">
                                <label for="nombreJefe" class="col-form-label">Nombre del Jefe</label>
                                <input type="text" class="form-control" id="nombreJefe" name="txtJefe" placeholder="Nombre del Jefe">
                            </div>
                            <div class="col align-self-end">
                                <div class="row justify-content-center">
                                    <div class="form-group col-md-8">
                                        <label for="Telefono" class="col-form-label">Telefono del Jefe</label>
                                        <input type="text" class="form-control" id="Telefono" name="txtTelefono" placeholder="Ejemplo: ####-####">
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="form-row">
                            <div class="form-group col-md-5">
                                <label for="Desde" class="col-form-label">Desde</label>
                                <input type="date" class="form-control" id="Desde" name="txtDesde">
                            </div>
                            <div class="col align-self-end">
                                <div class="row justify-content-center">
                                    <div class="form-group col-md-8">
                                        <label for="Hasta" class="col-form-label">Hasta</label>
                                        <input type="date" class="form-control" id="Hasta" name="txtHasta">
                                    </div>
                                </div>
                            </div>
                        </div>


                        <div class="row">
                            <div class="col col-2">
                                <label for="IdTipoContrato" class="col-form-label">Tipo de Contrato</label>
                            </div>
                            <div class="col-4">
                                <select class="custom-select mb-1 mr-sm-1 mb-sm-5" id="idTipoContrato" name="lstTipoContrato" required="true">
                                    <option value="Tiempo Completo">Tiempo Completo</option>
                                    <option value="Por Horas">Por Horas</option>
                                    <option value="Practicas">Practicas</option> 
                                </select>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="tab-pane fade" id="pills-test" role="tabpanel" aria-labelledby="pills-test-tab">
                <div class="p-2 mb-1 bg-light text-black"><h1>Registro de Habilidad</h1></div>
                <div class="jumbotron" style="color:black">
                    <div class="form-group row">
                        <label for="idhabilidad" class="col-sm-2 col-form-label"><strong>Id Habilidad</strong></label>
                        <div class="col-sm-3">
                            <input type="text" class="form-control" id="txtIdDepartamento" name="txtIdHabilidad" placeholder="Id Habilidad" value="0" readonly>
                        </div>
                    </div>
                    <div class="form-group row">
                        <label for="nombre" class="col-sm-2 col-form-label"><strong>Habilidad</strong></label>
                        <div class="col-sm-4">
                            <input type="text"type class="form-control" id="txtNombre" name="txtNombre"placeholder="Habilidad">
                        </div>
                    </div>
                    <div class="form-group row">
                        <label for="idfor1" class="col-sm-2 col-form-label"><strong>Id Empleado</strong></label>
                        <div class="col-sm-4">
                            <input type="text"type class="form-control" id="idfor1" name="txtIdEmpleador" placeholder="Id Empleador" >
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>

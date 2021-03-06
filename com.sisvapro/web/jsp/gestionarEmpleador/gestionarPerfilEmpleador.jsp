<%-- 
    Document   : gestionarPerfilEmpleador
    Created on : Nov 6, 2017, 12:35:16 AM
    Author     : David Sarmiento
--%>

<%@page import="com.modelo.CrudHabilidad"%>
<%@page import="com.modelo.Habilidad"%>
<%@page import="com.modelo.CrudExperienciaLaboral"%>
<%@page import="com.modelo.ExperienciaLaboral"%>
<%@page import="com.modelo.FormacionAcademica"%>
<%@page import="com.modelo.CrudFormacionAcademica"%>
<%@page import="com.modelo.CrudAreaProfesional"%>
<%@page import="com.modelo.CrudDepartamento"%>
<%@page import="com.modelo.Departamento"%>
<%@page import="com.modelo.AreaProfesional"%>
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
        <link rel="stylesheet" type="text/css" href="../../css/dataTables.bootstrap4.min.css"/>
        <link rel="stylesheet" type="text/css" href="../../css/style.css"/>
        <script type="text/javascript" src="../../js/jquery-3.2.1.slim.min.js"></script>
        <script type="text/javascript" src="../../js/popper.min.js"></script>
        <script type="text/javascript" src="../../js/bootstrap.min.js"></script>
        <script type="text/javascript" src="../../js/datatables.min.js"></script>
        <script type="text/javascript" src="../../js/Procesos.js"></script>
        <script type="text/javascript" src="../../js/dataTable.js"></script>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <%
        CrudDepartamento crudd = new CrudDepartamento();
        CrudPais crudp = new CrudPais();
        CrudAreaProfesional cruda = new CrudAreaProfesional();
        CrudFormacionAcademica crudFa = new CrudFormacionAcademica();
        CrudExperienciaLaboral crudEl = new CrudExperienciaLaboral();
        CrudHabilidad crudH = new CrudHabilidad();
    %>
    <%            if (request.getAttribute("valor") != null) {
    %>
    <script>
        alert('<%=request.getAttribute("valor")%>')
    </script>
    <%
        }
    %>
    <body onload="cargarimagenPerfil()">
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
                    <a class="nav-link" id="pills-contact-tab" data-toggle="pill" href="#pills-test" role="tab" aria-controls="pills-test" aria-selected="false">Registro de Habilidad</a>
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
                        <div id="imagep" style="max-width: 20%;max-height: 20%;"></div>
                        <div class="form-group, position-relative">
                            <input type="text" class="form-control-file" id="txtIdPerfil" name="txtIdPerfil" style="display: none" value="<%= empi.getIdEmpleador()%>">
                            <input type="text" class="form-control-file" id="txtIdPerfil" name="lstUsuario" style="display: none" value="<%= empi.getIdUsuario()%>">
                            <div class="col-6">
                                <label for="foto"><strong>Foto de Perfil</strong></label>
                                <input type="file" class="form-control-file" id="foto" name="foto">
                                <input type="text" class="form-control-file" id="foto2" name="foto2" style="display: none" value="<%= empi.getFotoPerfil()%>">

                            </div>
                        </div>
                        <script>
                            function cargarimagenPerfil() {

                                var image = new Image();

                                var src = '../../imagenes/fotosperfiles/' + '<%= empi.getFotoPerfil()%>'; //Esta es la variable que contiene la url de una imagen ejemplo, luego puedes poner la que quieras
                                image.src = src;
                                image.width = 150;
                                image.height = 120;

                                $('#imagep').append(image);
                            }

                        </script>

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
                                <div class="col-13">
                                    <div class="form-group">
                                        <label for="txtAnio" class="col-form-label"><strong>A&ntilde;os Esperiencia</strong></label>
                                        <input type="text" class="form-control" id="txtAnio" name="txtAnio" placeholder="txtAnio" value="<%=empi.getAniosExperiencia()%>">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <strong>Género</strong>

                                    <%
                                        if (empi.getGenero().equals("Masculino")) {
                                    %>
                                    <label class="custom-control custom-radio">
                                        <input type="radio" name="genero" class="custom-control-input" checked="true" value="<%= empi.getGenero()%>">
                                        <span class="custom-control-indicator"></span>
                                        <span class="custom-control-description"><%= empi.getGenero()%></span>
                                    </label>
                                    <label class="custom-control custom-radio">
                                        <input type="radio" name="genero" value="Femenino" class="custom-control-input">
                                        <span class="custom-control-indicator"></span>
                                        <span class="custom-control-description">Femenino</span>
                                    </label>
                                    <%
                                    } else {
                                    %> 
                                    <label class="custom-control custom-radio">
                                        <input type="radio" name="genero" class="custom-control-input" checked="true" value="<%= empi.getGenero()%>">
                                        <span class="custom-control-indicator"></span>
                                        <span class="custom-control-description"><%= empi.getGenero()%></span>
                                    </label>
                                    <label class="custom-control custom-radio">
                                        <input type="radio" name="genero" value="Masculino" class="custom-control-input">
                                        <span class="custom-control-indicator"></span>
                                        <span class="custom-control-description">Masculino</span>
                                    </label>
                                    <%
                                        }
                                    %>

                                </div>
                                <div class="form-row">
                                    <div class="col-6">
                                        <div class="form-group">
                                            <label for="DUI" class="col-form-label"><strong>DUI</strong></label>
                                            <input type="text" class="form-control" id="txtDui" name="txtDui" placeholder="########-#" value="<%= empi.getDui()%>">
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
                                        <div class="col-5">
                                            <div class="form-group">
                                                <label for="txtNacio" class="col-form-label"><strong>Nacionalidad</strong></label>
                                                <input type="text" class="form-control" id="txtNacionalidad" name="txtNacionalidad" placeholder="Nacionalidad" value="<%= empi.getNacionalidad()%>">
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="container">
                                    <div class="row">
                                        <div class="col">
                                            <div class="form-group row">
                                                <label for="lstpais" class="col-lg-4 col-form-label"><strong>Pais</strong></label>
                                                <div class="col-lg-5">
                                                    <select class="custom-select mb-2 mr-sm-2 mb-sm-0" id="lstPais" name="lstPais" >
                                                        <option>Seleccionar</option>
                                                        <%
                                                            List<Pais> lst1 = crudpa.mostrarPais();
                                                            for (Pais pa : lst1) {

                                                                if (empi.getIdPais() == pa.getIdPais()) {
                                                        %>
                                                        <option value="<%=pa.getIdPais()%>"selected ><%=pa.getNombrePais()%></option>
                                                        <%
                                                        } else {
                                                        %>
                                                        <option value="<%=pa.getIdPais()%>"><%=pa.getNombrePais()%></option>
                                                        <%

                                                                }
                                                            }
                                                        %>
                                                    </select>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col">
                                            <div class="form-group row">
                                                <label for="lstDepa" class="col-sm-4 col-form-label"><strong>Departamento</strong></label>
                                                <div class="col-sm-5">
                                                    <select class="custom-select mb-2 mr-sm-2 mb-sm-0" id="lstDepartamento" name="lstDepartamento">
                                                        <option>Seleccionar</option>
                                                        <%
                                                            List<Departamento> lst2 = crudd.mostrarDepartamento();
                                                            for (Departamento d : lst2) {
                                                                if (empi.getIdDepartamento() == d.getIdDepartamento()) {
                                                        %>
                                                        <option value="<%=d.getIdDepartamento()%>"selected ><%=d.getNombreDepartamento()%></option>
                                                        <%
                                                        } else {
                                                        %>
                                                        <option value="<%=d.getIdDepartamento()%>"><%=d.getNombreDepartamento()%></option>
                                                        <%

                                                                }
                                                            }
                                                        %>
                                                    </select>
                                                </div>
                                            </div>   
                                        </div>

                                        <div class="w-100"></div>
                                        <div class="col">
                                            <div class="form-group row">
                                                <label for="lstArea" class="col-sm-4 col-form-label"><strong>Área Profesional</strong></label>
                                                <div class="col-sm-5">
                                                    <select class="custom-select mb-2 mr-sm-2 mb-sm-0" id="lstArea" name="lstArea">
                                                        <option>Seleccionar</option>
                                                        <%
                                                            List< AreaProfesional> lst3 = cruda.mostrarAreaProfesional();
                                                            for (AreaProfesional d : lst3) {
                                                                if (empi.getIdAreaProfesional() == d.getIdAreaProfesional()) {
                                                        %>
                                                        <option value="<%=d.getIdAreaProfesional()%>" selected><%=d.getNombreAreaProfesional()%></option>
                                                        <%
                                                        } else {
                                                        %>
                                                        <option value="<%=d.getIdAreaProfesional()%>" ><%=d.getNombreAreaProfesional()%></option>
                                                        <%

                                                                }
                                                            }
                                                        %>

                                                    </select>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col"></div>
                                    </div>
                                </div> 
                            </div>
                        </div>
                        <input type="submit" name="btnModificarPerfil" class="btn btn-secondary btn-lg btn-block" value="Guardar"> 
                    </div>

                </form>
                <%
                    }
                %>
            </div>








            <div class="tab-pane fade" id="pills-profile" role="tabpanel" aria-labelledby="pills-profile-tab">
                <div class="p-1 mb-1 bg-light text-black"><center><h1>Formacion Academica</h1></center></div>
                <div class="jumbotron">
                    <form name="frmFormacion" action="procesarGestionarPerfilEmpleador" method="POST">
                        <div class="row">
                            <div class="form-group col-md-5">

                                <input type="text" class="form-control" id="idfor" name="txtIdFormacionAcademica" placeholder="Id Formacion Academica"  value="0" readonly style="display: none">


                                <input type="text" class="form-control" id="idfor1" name="txtIdEmpleador" placeholder="Id Empleador"  value="<%= idUsuario%>" readonly style="display: none">

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
                            <input type="submit" name="btnAgregarFa" class="btn btn-success btn-sm" value="Agregar">
                            <input type="submit" name="btnModificarFa" class="btn btn-warning btn-sm" value="Modificar">
                            <input type="submit" name="btnEliminarFa" class="btn btn-danger btn-sm" value="Eliminar">
                            <input type="reset" name="btnReset" class="btn btn-primary btn-sm" value="Limpiar">
                            </form>
                            <div class="table table-responsive">
                                <table id="grid" class="table table-responsive-lg table-bordered" style="text-align: center; width: 1200px">
                                    <thead class="thead-inverse">
                                        <tr>
                                            <th  style="text-align: center">Nivel Estudios</th>
                                            <th  style="text-align: center">Estado</th>
                                            <th  style="text-align: center">Carrera</th>

                                            <th  style="text-align: center">Seleccionar</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <%

                                            for (FormacionAcademica f : crudFa.seleccionarFormacionAcademica(Integer.parseInt(idUsuario))) {
                                        %>
                                        <tr class="table-primary">

                                            <td><%=f.getNivelEstudio()%></td>
                                            <td><%=f.getEstado()%></td>
                                            <td><%=f.getCarrera()%></td>

                                            <td><a href="javascript:cargarFormacionAcademica(<%=f.getIdFormacion()%>,'<%=f.getNivelEstudio()%>','<%=f.getEstado()%>','<%=f.getCarrera()%>','<%=f.getIdEmpleador()%>')">Seleccionar</a></td> 

                                        </tr>
                                        <%
                                            }
                                        %>
                                    </tbody>
                                </table>
                            </div>
                        </div>             
                </div>
            </div>

            <div class="tab-pane fade" id="pills-contact" role="tabpanel" aria-labelledby="pills-contact-tab">
                <form action="procesarGestionarPerfilEmpleador" method="post" name="frmExperienciaLaboral">
                    <center>
                        <div class="p-1 mb-2 bg-light text-black">
                            <h1>Registro de Experiencia Laboral</h1>
                        </div>
                    </center>    
                    <div class="jumbotron" style="color:black">
                        <div class="col align-self-star">
                            <div class="form-row">
                                <div class="form-group col-md-5">

                                    <input type="text" class="form-control" id="idExperienciaLaboral" name="txtIdExperienciaLaboral" placeholder="Id Experiencia Laboral"  value="0" readonly style="display: none;">
                                    <input type="text" class="form-control" id="idEmpleador" name="txtIdEmpleador" placeholder="Id Empleado"  value="<%= idUsuario%>" readonly style="display: none;">
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
                                    <select class="custom-select mb-1 mr-sm-1 mb-sm-5" id="lstTipoContrato" name="lstTipoContrato" required="true">
                                        <option value="Tiempo Completo">Tiempo Completo</option>
                                        <option value="Por Horas">Por Horas</option>
                                        <option value="Practicas">Practicas</option> 
                                    </select>
                                </div>
                            </div>
                        </div>
                        <input type="submit" name="btnAgregarEl" class="btn btn-success btn-sm" value="Agregar">
                        <input type="submit" name="btnModificarEl" class="btn btn-warning btn-sm" value="Modificar">
                        <input type="submit" name="btnEliminarEl" class="btn btn-danger btn-sm" value="Eliminar">
                        <input type="reset" name="btnReset" class="btn btn-primary btn-sm" value="Limpiar">

                    </div>
                </form>
                <div class="table table-responsive">
                    <table id="grid" class="table table-responsive table-bordered" style="text-align: center">
                        <thead class="thead-inverse">
                            <tr>
                                <th style="text-align: center;width: 100px">Id Experiencia Laboral</th>
                                <th style="text-align: center;width: 200px">Nombre de la Empresa</th>
                                <th style="text-align: center;width: 200px">Nombre de Jefe</th>
                                <th style="text-align: center;width: 150px">Telefono del Jefe</th>
                                <th style="text-align: center">Puesto</th>
                                <th style="text-align: center;width: 150px">Tipo de contrato</th>
                                <th style="text-align: center;width: 150px">Desde</th>
                                <th style="text-align: center;width: 150px">Hasta</th>
                                <th style="text-align: center;width: 150px">Id Empleador</th>
                                <th style="text-align: center;width: 100px">Seleccionar</th>
                            </tr>
                        </thead>
                        <tbody>
                            <%
                                for (ExperienciaLaboral ep : crudEl.seleccionarExperienciaLaboral(Integer.parseInt(idUsuario))) {
                            %>
                            <tr class="table-primary">
                                <td><%=ep.getIdExperienciaLaboral()%></td>
                                <td><%=ep.getNombreEmpresa()%></td>
                                <td><%=ep.getNombreJefe()%></td>
                                <td><%=ep.getTelefonoJefe()%></td>
                                <td><%=ep.getPuesto()%></td>
                                <td><%=ep.getTipoContrato()%></td>
                                <td><%=ep.getDesde()%></td>
                                <td><%=ep.getHasta()%></td>
                                <td><%=ep.getIdEmpleador()%></td>
                                <td><a href="javascript:cargarExperienciaLaboral(<%=ep.getIdExperienciaLaboral()%>,
                                       '<%=ep.getNombreEmpresa()%>','<%=ep.getNombreJefe()%>','<%=ep.getTelefonoJefe()%>',
                                       '<%=ep.getPuesto()%>','<%=ep.getDesde()%>','<%=ep.getHasta()%>','<%=ep.getTipoContrato()%>',
                                       '<%=ep.getIdEmpleador()%>')">Seleccionar</a></td>
                            </tr>
                            <%
                                }
                            %>
                        </tbody>
                    </table>
                </div>

            </div>
            <div class="tab-pane fade" id="pills-test" role="tabpanel" aria-labelledby="pills-test-tab">
                <div class="p-2 mb-1 bg-light text-black"><h1>Registro de Habilidad</h1></div>
                <div class="jumbotron" style="color:black">
                    <form action="procesarGestionarPerfilEmpleador" method="POST" name="frmHabilidad">

                        <div class="form-group row">

                            <input type="text" class="form-control" id="txtIdHabilidad" name="txtIdHabilidad" placeholder="Id Habilidad" value="0" readonly style="display: none">

                        </div>
                        <div class="form-group row">
                            <label for="nombre" class="col-sm-2 col-form-label"><strong>Habilidad</strong></label>
                            <div class="col-sm-4">
                                <input type="text"type class="form-control" id="txtNombre" name="txtNombre"placeholder="Habilidad">
                            </div>
                        </div>
                        <div class="form-group row">

                            <input type="text"type class="form-control" id="idfor1" name="txtIdEmpleador" placeholder="Id Empleador" value="<%= idUsuario%>" readonly style="display: none" >

                        </div>
                        <input type="submit" name="btnAgregarH" class="btn btn-success btn-sm" value="Agregar">
                        <input type="submit" name="btnModificarH" class="btn btn-warning btn-sm" value="Modificar">
                        <input type="submit" name="btnEliminarH" class="btn btn-danger btn-sm" value="Eliminar">
                        <input type="reset" name="btnReset" class="btn btn-primary btn-sm" value="Limpiar">
                    </form>




                    <div class="table table-responsive">
                        <table id="grid" class="table table-bordered" style="text-align: center; width: 1000px">
                            <thead class="thead-inverse">
                                <tr>
                                    <th style="text-align: center;width: 200px">Id Habilidad</th>
                                    <th style="text-align: center">Habilidad</th>
                                    <th style="text-align: center">Id Empleador</th>
                                    <th style="text-align: center">Seleccionar</th>
                                </tr>
                            </thead>
                            <tbody>
                                <%
                                    for (Habilidad h : crudH.mostrarHabilidad()) {
                                %>
                                <tr class="table-primary">
                                    <td><%=h.getIdHabilidad()%></td>
                                    <td><%=h.getNombreHabilidad()%></td>
                                    <td><%=h.getIdEmpleador()%></td>
                                    <td><a href="javascript:cargarHabilidad(<%=h.getIdHabilidad()%>,
                                           '<%=h.getNombreHabilidad()%>','<%=h.getIdEmpleador()%>')" style="color:black">Seleccionar</a></td>
                                </tr>
                                <%
                                    }
                                %>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>

<%-- 
    Document   : gestionarPerfilEmpleador
    Created on : Nov 6, 2017, 12:35:16 AM
    Author     : David Sarmiento
--%>

<%@page import="com.modelo.CrudPais"%>
<%@page import="com.modelo.Pais"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
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
        <h1>Hello World!</h1>
        <form action="gestionarPerfilEmpleador">

            <!-- Se crea un DIV y se le pone un ID en este caso pagina1
               Style = block (Se muestra)
               Style = none (Oculto)
               Se pone como "block" la primera pagina.
            -->

            <div id="pagina1" style="display:block;">

                <center>
                    <br>
                    <div class="p-1 mb-1 bg-light text-black"><h1>Perfil de Empleador</h1></div>
                    <br>
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

                                <div class="form-row">
                                    <div class="col align-self-start">
                                        <div class="row justify-content-start">
                                            <label class="mr-sm-2" for="idPais"><strong>Pais</strong></label>
                                            <select class="custom-select mb-2 mr-sm-2 mb-sm-0" id="lstPais" name="lstPais" >
                                                <%
                                                    List<Pais> lst1 = crudpa.mostrarPais();
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
                                                    <input type="text" class="form-control" id="txtNacionalidad" name="txtNacionalidad" placeholder="Nacionalidad">
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div><!--cerra al final-->
                        </div><!--cerrar al final-->
                    </div><!--cerrar final-->


                    <!-- se crean dos botones uno en el que se avanza y otro en el que se retrocede
                    -->
                    <input type="button" class="btn btn-info" onclick="anteriorPagina()" value="Anterior">
                    <input type="button" class="btn btn-info" onclick="siguientePagina()" value="Siguiente">

                    <!-- Recordar insertar todo en diferentes div
                    -->
                    </div>
                    <div id="pagina2" style="display:none;">
                        <div class="p-1 mb-1 bg-light text-black"><center><h1>Formacion Academica</h1></center></div>
                        <br>
                        <div class="jumbotron">
                            <form action="procesarFormacionAcademica" method="POST" name="frmFormacion">
                                <div class="container">
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
                            </form>
                        </div>

                        <!-- se crean dos botones uno en el que se avanza y otro en el que se retrocede
                        -->
                        <input type="button" class="btn btn-info" onclick="anteriorPagina()" value="Anterior">
                        <input type="button" class="btn btn-info" onclick="siguientePagina()" value="Siguiente">

                        <!-- Recordar insertar todo en diferentes div
                        -->
                    </div>                
                    <div id="pagina3" style="display:none;">
                        <center>
                            <br>
                            <div class="p-1 mb-2 bg-light text-black">
                                <h1>Registro de Experiencia Laboral</h1>
                            </div>
                        </center>    
                        <br>
                        <div class="jumbotron" style="color:black">
                            <div class="container">
                                <form action="procesarExperienciaLaboral" method="post" name="frmExperienciaLaboral">

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
                                            <div class="w-10"></div>


                                        </div>
                                    </div>
                                                          <input type="button" class="btn btn-info" onclick="anteriorPagina()" value="Anterior">
                        <input type="button" class="btn btn-info" onclick="siguientePagina()" value="Siguiente">
                                </form>       
                            </div>
                        </div>
                    </div>


                    </form> 
                    </body>
                    </html>

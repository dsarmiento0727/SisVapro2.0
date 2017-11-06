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
                <div class="form-row">
                    <div class="form-group col-md-6">
                        <label for="inputEmail4">Email</label>
                        <input type="email" class="form-control" id="inputEmail4" placeholder="Email">
                    </div>
                    <div class="form-group col-md-6">
                        <label for="inputPassword4">Password</label>
                        <input type="password" class="form-control" id="inputPassword4" placeholder="Password">
                    </div>
                </div>
                <div class="form-group">
                    <label for="inputAddress">Address</label>
                    <input type="text" class="form-control" id="inputAddress" placeholder="1234 Main St">
                </div>
                <div class="form-group">
                    <label for="inputAddress2">Address 2</label>
                    <input type="text" class="form-control" id="inputAddress2" placeholder="Apartment, studio, or floor">
                </div>
                <div class="form-row">
                    <div class="form-group col-md-6">
                        <label for="inputCity">City</label>
                        <input type="text" class="form-control" id="inputCity">
                    </div>
                    <div class="form-group col-md-4">
                        <label for="inputState">State</label>
                        <select id="inputState" class="form-control">
                            <option selected>Choose...</option>
                            <option>...</option>
                        </select>
                    </div>
                    <div class="form-group col-md-2">
                        <label for="inputZip">Zip</label>
                        <input type="text" class="form-control" id="inputZip">
                    </div>
                </div>
                <div class="form-group">
                    <div class="form-check">
                        <label class="form-check-label">
                            <input class="form-check-input" type="checkbox"> Check me out
                        </label>
                    </div>
                </div>

                <!-- se crean dos botones uno en el que se avanza y otro en el que se retrocede
                -->
                <input type="button" class="btn btn-info" onclick="anteriorPagina()" value="Anterior">
                <input type="button" class="btn btn-info" onclick="siguientePagina()" value="Siguiente">

                <!-- Recordar insertar todo en diferentes div
                -->
            </div>                
                                            
                                            
                                            
                    </form> 
                    </body>
                    </html>

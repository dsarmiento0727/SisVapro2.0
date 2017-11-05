<%-- 
    Document   : gestionarFormacionAcademica
    Created on : 11-02-2017, 05:45:26 PM
    Author     : Karen
--%>

<%@page import="com.modelo.FormacionAcademica"%>
<%@page import="java.util.List"%>
<%@page import="com.modelo.CrudFormacionAcademica"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="../../css/bootstrap.min.css">
        <link rel="stylesheet" type="text/css" href="../../css/dataTables.bootstrap4.min.css"/>
        <link rel="stylesheet" type="text/css" href="../../css/style.css"/>
        <script type="text/javascript" src="../../js/jquery-3.2.1.slim.min.js"></script>
        <script type="text/javascript" src="../../js/popper.min.js"></script>
        <script type="text/javascript" src="../../js/bootstrap.min.js"></script>
        <script type="text/javascript" src="../../js/datatables.min.js"></script>
        <script type="text/javascript" src="../../js/Procesos.js"></script>
        <script type="text/javascript" src="../../js/dataTable.js"></script>
    </head>
    <%
        CrudFormacionAcademica crud = new CrudFormacionAcademica();
    %>
    <body>
        <jsp:include page="menuGestionar.jsp"/>
        <div class="p-3 mb-2 bg-light text-black">
            <h1><center>
                    Registro de Formación Academica</center></h1>
        </div>
        <br><br>
    
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

                     <center>
                    <div class="btn-group" role="group" aria-label="Basic example">

                        <div class="row">
                            <div class="col">
                                <input type="submit" name="btnInsertar" class="btn btn-success" value="Insertar">
                            </div>
                            <div class="col">
                                <input type="submit" name="btnModificar" class="btn btn-warning" value="Modificar" onclick="Modificar()">
                            </div>
                            <div class="col">
                                <input type="submit" name="btnEliminar"  class="btn btn-danger" value="Eliminar" onclick="Eliminar()">
                            </div>
                            <div class="col">
                                <input type="reset" name="btnLimpiar" class="btn btn-secondary" value="Limpiar">
                            </div>
                        </div>
                    </div>
                </center>  
                </div>
            </form>
        </div>
    <table id="grid" class="table table-bordered" style="text-align: center; width: 1200px">
                <thead class="thead-inverse">
                    <tr>
                        <th  scope="row" style="text-align: center">Id Formacion Academica</th>
                        <th  style="text-align: center">nivel Estudios</th>
                        <th  style="text-align: center">Estado</th>
                        <th  style="text-align: center">Carrera</th>
                        <th  style="text-align: center">Id Empleador</th>
                        <th  style="text-align: center">Seleccionar</th>
                    </tr>
                </thead>
                <tbody>
                    <%
                        
                        List<FormacionAcademica> lst = crud.mostrarFormacionAcademica();
                        for (FormacionAcademica f : lst) {
                    %>
                    <tr class="table-primary">
                        <td><%=f.getIdFormacion()%></td>
                        <td><%=f.getNivelEstudio() %></td>
                        <td><%=f.getEstado() %></td>
                        <td><%=f.getCarrera()%></td>
                        <td><%=f.getIdEmpleador() %></td>
                        <td><a href="javascript:cargarFormacionAcademica(<%=f.getIdFormacion()%>,'<%=f.getNivelEstudio() %>','<%=f.getEstado() %>','<%=f.getCarrera()%>','<%=f.getIdEmpleador() %>')">Seleccionar</a></td> 
                               
                    </tr>
                    <%
                        }
                    %>
                </tbody>
            </table>
</body>
</html>

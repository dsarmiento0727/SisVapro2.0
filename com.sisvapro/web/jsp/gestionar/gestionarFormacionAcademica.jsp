<%-- 
    Document   : gestionarFormacionAcademica
    Created on : 11-02-2017, 05:45:26 PM
    Author     : Karen
--%>

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
            <form action="" method="POST" name="frmFormacion">
                <div class="container">
                    <div class="row">
                        <div class="col; col-2"><label for="niveles" class="col-form-label"><strong>Niveles de Estudio</strong></label></div>
                        <div class="col">
                            <select class="custom-select mb-1 mr-sm-1 mb-sm-1" id="lstNivel" name="lstNivel" required="true">
                                <option>Seleccione</option>
                                <option>9 grado</option>
                                <option>Bachillertao Incompleto</option>
                                <option>Bachillertao Completo</option>
                                <option>Universidad 1ro año</option>
                                <option>Universidad 2do año</option>
                                <option>Universidad 3er año</option>
                                <option>Universidad 4to año</option>
                                <option>Universidad 5to año</option>
                                <option>Graduado Universitario</option>
                                <option>Universidad Incompleta</option>
                                <option>Maestria</option>
                            </select></div>
                        <div class="col; col-1"><label for="Estado" class="col-form-label"><strong>Estado</strong></label></div>
                        <div class="col">
                            <select class="custom-select mb-2 mr-sm-2 mb-sm-4 row-md-4" id="lstEstado" name="lstEstado" required="true">
                                <option>Seleccione</option>
                                <option>Estudios Activos</option>
                                <option>Estudios Pausados</option>
                                <option>Estudios Terminados</option>
                            </select>
                        </div>
                        <div class="w-100"></div>
                        <div class="col; col-2">
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
    
</body>
</html>

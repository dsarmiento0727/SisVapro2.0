<%-- 
    Document   : departamento
    Created on : 10-06-2017, 05:21:16 PM
    Author     : Karen Escobar
--%>


<%@page import="com.modelo.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.*" %>
<%@page import="com.modelo.CrudDepartamento" %>
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
        <title>Gestionar Departamento</title>
        <script src="../../js/Procesos.js"></script>

    </head>
    <%
        CrudDepartamento crud = new CrudDepartamento();
    %>
    <body>
<jsp:include page="menuGestionar.jsp"/>
    <center>
        <div class="p-3 mb-2 bg-light text-black"><MARQUEE BEHAVIOR=ALTERNATE><h1>Registro de Departamento</h1></marquee></div>
    </center>
    <br><br>        
    <div class="container">
        <form action="procesarDepartamento" method="POST" name="frmDepartamento">
            <center>
                
                    <div class="form-group row">
                        <label for="iddepartamento" class="col-sm-2 col-form-label">Id Departamento</label>
                        <div class="col-sm-3">
                            <input type="text" class="form-control" id="txtIdDepartamento" name="txtIdDepartamento"placeholder="Id Departamento">
                        </div>
                    </div>
                    <div class="form-group row">
                        <label for="nombre" class="col-sm-2 col-form-label">Departamento</label>
                        <div class="col-sm-4">
                            <input type="text" class="form-control" id="txtNombre" name="txtNombre"placeholder="Deparatamento">
                        </div>
                    </div>
                    <div class="btn-group" role="group" aria-label="Basic example">
                      
                                <input type="submit" name="btnInsertar" class="btn btn-success" value="Insertar">
                                <input type="submit" name="btnModificar" class="btn btn-warning" value="Modificar" onclick="Modificar()">
                                <input type="submit" name="btnEliminar" class="btn btn-danger" value="Eliminar" onclick="Eliminar()">
                                <input type="reset" name="btnLimpiar" class="btn btn-secondary" value="Limpiar">   
                         
                        </form>
                    </div>
                </table>
            </center>
            <br><br>
            <table id="grid" class="table table-bordered" style="text-align: center; width: 1200px">
                <thead class="thead-inverse">
                    <tr>
                        <th  scope="row" style="text-align: center">Id Departamento</th>
                        <th  style="text-align: center">Nombre</th>
                        <th  style="text-align: center">Seleccionar</th>
                    </tr>
                </thead>
                <tbody>
                    <%
                        List<Departamento> lst = crud.mostrarDepartamento();
                        for (Departamento d : lst) {
                    %>
                    <tr class="table-primary">
                        <td><%=d.getIdDepartamento()%></td>
                        <td><%=d.getNombreDepartamento()%></td>
                        <td><a href="javascript:cargarDepartamento(<%=d.getIdDepartamento()%>,
                               '<%=d.getNombreDepartamento()%>')">Seleccionar</a></td> 
                    </tr>
                    <%
                        }
                    %>
                </tbody>
            </table>
            </body>
            </html>

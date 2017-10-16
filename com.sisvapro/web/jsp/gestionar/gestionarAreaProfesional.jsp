<%-- 
    Document   : profesion
    Created on : 10-06-2017, 06:09:47 PM
    Author     : Karen Escobarv b
--%>

<%@page import="com.modelo.CrudAreaProfesional"%>
<%@page import="com.modelo.AreaProfesional"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css" integrity="sha384-/Y6pD6FV/Vv2HJnA6t+vslU6fwYXjCFtcEpHbNJ0lyAFsXTsjBbfaDjzALeQsN6M" crossorigin="anonymous">
        <link rel="stylesheet" type="text/css" href="../../css/style.css">
        <link rel="stylesheet" type="text/css" href="../css/style.css">
        <script src="../../js/Procesos.js"></script>
        <title>Gestionar Area Profesional</title>
    </head>
    <%
    CrudAreaProfesional crud=new CrudAreaProfesional();
    %>
    <body>
         
        <center>
            <div class="p-3 mb-2 bg-light text-black"><MARQUEE BEHAVIOR=ALTERNATE><h1>Registro de Area Profesional</h1></marquee></div>
        <br><br>
        <table>
            <div class="container">
            <form action="procesarAreaProfesional" method="POST" name="frmProfesion">
                <div class="form-group row">
                    <label for="idprofesion" class="col-sm-2 col-form-label">Id Area Profesiónal</label>
                <div class="col-sm-3">
                    <input type="text" class="form-control" id="txtIdProfesion" name="txtIdProfesion"placeholder="Id Area Profesion">
                </div>
                </div>
                <div class="form-group row">
                    <label for="nombreprofesion" class="col-sm-2 col-form-label">Area Profesion</label>
                <div class="col-sm-5">
                    <input type="text" class="form-control" id="txtNombre" name="txtNombre"placeholder="Profesion">
                </div>
                </div> 
                
                <tr>
                <div class="btn-group" role="group" aria-label="Basic example">
                    <td colspan="2">
                        
                            <input type="submit" name="btnInsertar" class="btn btn-success" value="Insertar">
                            <input type="submit" name="btnModificar" class="btn btn-warning" value="Modificar" onclick="Modificar()">
                            <input type="submit" name="btnEliminar"  class="btn btn-danger" value="Eliminar" onclick="Eliminar()">
                            <input type="reset" name="btnLimpiar" class="btn btn-secondary" value="Limpiar">
                        </div>
                    </td>
                </tr>
            </form>
        </table>
        <br>
        <table class="table table-bordered" style="text-align: center; width: 1200px">
            <thead class="thead-inverse">
                <tr>
                    <th style="text-align: center">Id Profesión</th>
                    <th style="text-align: center">Profesión</th>
                    <th style="text-align: center">Seleccionar</th>
                </tr>
            </thead>
            <tbody>
                <%
                    List<AreaProfesional> lst=crud.mostrarAreaProfesional();
                    for(AreaProfesional pro:lst){
                %>
                <tr class="table-primary">
                    <td><%=pro.getIdAreaProfesional()%></td>
                    <td><%=pro.getNombreAreaProfesional()%></td>
                    <td><a href="javascript:cargarAreaProfesional(<%=pro.getIdAreaProfesional()%>,
                           '<%=pro.getNombreAreaProfesional()%>')">Seleccionar</a></td>
                </tr>
                <%
                    }
                %>
            </tbody>
        </table>
    </body>
</html>

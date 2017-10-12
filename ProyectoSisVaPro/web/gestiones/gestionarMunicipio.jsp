<%-- 
    Document   : Municipio
    Created on : 10-06-2017, 06:06:48 PM
    Author     : carlos
--%>

<%@page import="com.modelo.Municipio"%>
<%@page import="java.util.List"%>
<%@page import="com.modelo.CrudMunicipio"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Gestionar Municipio</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css" integrity="sha384-/Y6pD6FV/Vv2HJnA6t+vslU6fwYXjCFtcEpHbNJ0lyAFsXTsjBbfaDjzALeQsN6M" crossorigin="anonymous">
        <link rel="stylesheet" type="text/css" href="../CSS/style.css">
        <script src="../JavaScript/Procesos.js"></script>
    <%
        if(request.getAttribute("valor")!=null){
        %>
        <script>
            alert('<%=request.getAttribute("valor")%>')
        </script>
        <%
        }
        %>
    </head>
    <%
    CrudMunicipio crud=new CrudMunicipio();
    %>
    <body>
    <center>
        <div class="p-3 mb-2 bg-light text-black"><h1>Registro de Municipio</h1></div>
        <br><br>        
            <div class="container">
        <table>
            <form action="procesarMunicipio" method="POST" name="frmMunicipio">
                <div class="form-group row">
                    <label for="idmunicipio" class="col-sm-2 col-form-label">Id Municipio</label>
                <div class="col-sm-3">
                    <input type="text" class="form-control" id="txtIdMunicipio" name="txtIdMunicipio"placeholder="Id Municipio">
                </div>
                </div>
                <div class="form-group row">
                    <label for="nombre" class="col-sm-2 col-form-label">Municipio</label>
                <div class="col-sm-4">
                    <input type="text" class="form-control" id="txtNombre" name="txtNombre"placeholder="Municipio">
                </div>
                </div>
                <div class="btn-group" role="group" aria-label="Basic example">
                <tr>
                    <td colspan="2">
                <input type="submit" name="btnInsertar" class="btn btn-success" value="Insertar">
                <input type="submit" name="btnModificar" class="btn btn-warning" value="Modificar" onclick="Modificar()">
                <input type="submit" name="btnEliminar" class="btn btn-danger" value="Eliminar" onclick="Eliminar()">
                <input type="reset" name="btnLimpiar" class="btn btn-secondary" value="Limpiar">   
                    </td>
                </tr>   
            </form>
        </table>
            </div>
    </center>
    <br><br>
        <table class="table table-bordered" style="text-align: center; width: 1200px">
            <thead class="thead-inverse">
                <tr>
                    <th  scope="row" style="text-align: center">Id Municipio</th>
                    <th  style="text-align: center">Municipio</th>
                    <th  style="text-align: center">Seleccionar</th>
                </tr>
            </thead>
            <tbody>
                <%
                List<Municipio> lst=crud.mostrarMunicipio();
                for(Municipio m:lst){
                %>
                <tr class="table-primary">
                    <td scope="row"><%=m.getIdMunicipio()%></td>
                    <td><%=m.getNombreMunicipio()%></td>
                    <td><a href="javascript:cargarMunicipio(<%=m.getIdMunicipio()%>,
                           '<%=m.getNombreMunicipio()%>')">Seleccionar</a></td>
                </tr>
                <%
                }
                %>
            </tbody>
        </table>
    </body>
</html>

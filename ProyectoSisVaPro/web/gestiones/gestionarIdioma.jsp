<%-- 
    Document   : idioma
    Created on : 10-06-2017, 06:05:37 PM
    Author     : carlos
--%>

<%@page import="com.modelo.Idioma"%>
<%@page import="java.util.List"%>
<%@page import="com.modelo.CrudIdioma"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css" integrity="sha384-/Y6pD6FV/Vv2HJnA6t+vslU6fwYXjCFtcEpHbNJ0lyAFsXTsjBbfaDjzALeQsN6M" crossorigin="anonymous">
        <link rel="stylesheet" type="text/css" href="../CSS/style.css">
        <title>Gestionar Idioma</title>
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
    CrudIdioma crud= new CrudIdioma();
    %>
    <body>
        <br><br>
    <center>
        <div class="p-3 mb-2 bg-light text-black"><h1>Registro de Habilidad</h1></div>
        <br><br>
            <div class="container">
            <form action="procesarIdioma" method="POST" name="frmIdioma"> 
                <table>
                <div class="form-group row">
                    <label for="iddidioma" class="col-sm-2 col-form-label">Id Idioma</label>
                <div class="col-sm-3">
                    <input type="text" class="form-control" id="txtIdIdioma" name="txtIdIdioma"placeholder="Id Idioma">
                </div>
                </div>
                <div class="form-group row">
                    <label for="nombre" class="col-sm-2 col-form-label">Idioma</label>
                <div class="col-sm-4">
                    <input type="text" class="form-control" id="txtNombre" name="txtNombre"placeholder="Idioma">
                </div>
                </div>
                <tr>
                <div class="btn-group" role="group" aria-label="Basic example">
                    <td colspan="2">
                        <input type="submit" name="btnInsertar" class="btn btn-success" value="Insertar">
                        <input type="submit" name="btnModificar" class="btn btn-warning" value="Modificar" onclick="Modificar()">
                        <input type="submit" name="btnEliminar" class="btn btn-danger" value="Eliminar" onclick="Eliminar()">
                        <input type="reset" name="btnLimpiar" class="btn btn-secondary" value="Limpiar">   
                    </td>
                </div>
                </tr>
            </form>
        </table>
        <br><br>
        <table class="table table-bordered" style="text-align: center; width: 1200px">
            <thead class="thead-inverse">
                <tr>
                    <th style="text-align: center">Id Idioma</th>
                    <th style="text-align: center">Idioma</th>
                    <th style="text-align: center">Seleccionar</th>
                </tr>
            </thead>
            <tbody>
                <%
                List<Idioma> lst=crud.mostrarIdioma();
                for(Idioma i:lst){
                %>
                <tr class="table-primary">
                    <td><%=i.getIdIdioma()%></td>
                    <td><%=i.getNombreIdioma()%></td>
                    <td><a href="javascript:cargarIdioma(<%=i.getIdIdioma()%>,
                           '<%=i.getNombreIdioma()%>')">Seleccionar</a></td>
                </tr>
                <%
                }
                %>
            </tbody>
        </table>
        </center>
    </body>
</html>

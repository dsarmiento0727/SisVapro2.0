<%-- 
    Document   : area
    Created on : 10-06-2017, 05:13:32 PM
    Author     : Karen Escobar
--%>

<%@page import="com.modelo.Area"%>
<%@page import="java.util.List"%>
<%@page import="com.modelo.CrudArea"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css" integrity="sha384-/Y6pD6FV/Vv2HJnA6t+vslU6fwYXjCFtcEpHbNJ0lyAFsXTsjBbfaDjzALeQsN6M" crossorigin="anonymous">
        <link rel="stylesheet" type="text/css" href="../CSS/style.css">
         <link rel="stylesheet" type="text/css" href="CSS/style.css">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Gestionar Area</title>
        <script src="../JavaScript/Procesos.js"></script>
    </head>
    <%
    CrudArea crud=new CrudArea();
    %>
    <body>
     <jsp:include page="navGestiones.jsp" />
        <center>
        <div class="p-3 mb-2 bg-light text-black"><h1>Registro de Área</h1></div>
        </center>
        <br><br>
        <div class="container">
            <form action="../procesarArea" method="POST" name="frmArea">
                
                <div class="form-group row">
                    <label for="idarea" class="col-sm-1 col-form-label">Id Area</label>
                <div class="col-sm-2">
                    <input type="text" class="form-control" id="txtIdArea" name="txtIdArea"placeholder="Id Area">
                </div>
                </div>
                <div class="form-group row">
                    <label for="nombre" class="col-sm-1 col-form-label">Area</label>
                <div class="col-sm-4">
                    <input type="text" class="form-control" id="txtNombre" name="txtNombre"placeholder="Nombre del Area">
                </div>
                </div>
                <div class="btn-group" role="group" aria-label="Basic example">
                        <input type="submit" name="btnInsertar" class="btn btn-success" value="Insertar">
                        <input type="submit" name="btnModificar" class="btn btn-warning" value="Modificar" onclick="Modificar()()">
                        <input type="submit" name="btnEliminar" class="btn btn-danger" value="Eliminar" onclick="Eliminar()">
                        <input type="reset" name="btnLimpiar" class="btn btn-secondary" value="Limpiar">
                </div>
               
            </form>
              
        <br>
      
        <table class="table table-bordered" style="text-align: center; " >
            <thead class="thead-inverse">
                <tr>
                    <th scope="row" style="text-align: center">Id Area</th>
                    <th style="text-align: center">Area</th>
                    <th style="text-align: center">Seleccionar</th>
                </tr>
            </thead>
            <tbody>
                <%
                    List<Area> lst=crud.mostrarArea();
                    for(Area a:lst){
                %>
                <tr class="table-info">
                    <td><%=a.getIdArea()%></td>
                    <td><%=a.getNombreArea()%></td>
                    <td><a href="javascript:cargarArea(<%=a.getIdArea()%>,
                           '<%=a.getNombreArea()%>')">Seleccionar</a></td>
                </tr>
                <%
                    }
                %>
            </tbody>
        </table>
        </div>
    </center>     
    </body>
</html>

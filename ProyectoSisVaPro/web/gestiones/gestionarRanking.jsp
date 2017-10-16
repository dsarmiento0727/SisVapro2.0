<%-- 
    Document   : ranking
    Created on : 10-06-2017, 06:26:55 PM
    Author     : carlos
--%>

<%@page import="com.modelo.Usuario"%>
<%@page import="com.modelo.CrudUsuario"%>
<%@page import="com.modelo.Ranking"%>
<%@page import="java.util.List"%>
<%@page import="com.modelo.CrudRanking"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css" integrity="sha384-/Y6pD6FV/Vv2HJnA6t+vslU6fwYXjCFtcEpHbNJ0lyAFsXTsjBbfaDjzALeQsN6M" crossorigin="anonymous">
        <link rel="stylesheet" type="text/css" href="../CSS/style.css">
        <link rel="stylesheet" type="text/css" href="CSS/style.css">
        <title>Gestionar Ranking</title>
        <script src="../JavaScript/Procesos.js"></script>
    </head>
    <%
    CrudRanking crud=new CrudRanking();
    CrudUsuario crudu=new CrudUsuario();
    %>
    <body>
         <jsp:include page="navGestiones.jsp" />
        <center>
            <div class="p-3 mb-2 bg-light text-black"><h1>Registro de Ranking</h1></div>
        </center>
        <br><br>
        <center>
            <div class="container">
        <table>
            <form action="../procesarRanking" method="POST" name="frmRanking">
                <div class="form-group row">
                    <label for="idranking" class="col-sm-1 col-form-label">Id Ranking</label>
                <div class="col-sm-2">
                    <input type="text" class="form-control" id="txtIdRaking" name="txtIdRanking"placeholder="Id Ranking">
                </div>
                </div>
                <div class="form-group row">
                    <label for="nombre" class="col-sm-1 col-form-label">Clasificacion</label>
                <div class="col-sm-4">
                    <input type="text" class="form-control" id="txtClasificacion" name="txtClasificacion"placeholder="Clasificación">
                </div>
                </div>
                <form class="form-inline">
                    <label class="mr-sm-2" for="idusuario">Usuario</label>
                    <%
                    List<Usuario> lst2=crudu.mostrarUsuario();
                    for(Usuario u : lst2){
                    %>
                    <select class="custom-select mb-2 mr-sm-2 mb-sm-0" name="lstUsuario" value="<%=u.getIdUsuario()%>">
                        <option><%=u.getUserName()%></option>
                    </select>
                    
                        <%
                    }
                        %>
                <div class="btn-group" role="group" aria-label="Basic example">
                
                <tr>
                    <td colspan="2">
                        <input type="submit" name="btnInsertar" class="btn btn-success" value="Insertar">
                        <input type="submit" name="btnModificar" class="btn btn-warning" value="Modificar" onclick="Modificar()">
                        <input type="submit" name="btnEliminar" class="btn btn-danger" value="Eliminar" onclick="Eliminar()">
                        <input type="reset" name="btnLimpiar" class="btn btn-secondary" value="Limpiar">
                    </td>
                </tr>
                </div>
                </div>
             
            </form>
        </table>
                </center>
                <center>
        <br>
        <table class="table table-bordered" style="text-align: center; width: 1200px">
            <thead class="thead-inverse">
                <tr>
                    <th  style="text-align: center">Id Ranking</th>
                    <th style="text-align: center">Clasificacion</th>
                    <th style="text-align: center">Usuario</th>
                    <th  style="text-align: center">Seleccionar</th>
                </tr>
            </thead>
            <tbody>
                <%
                    List<Ranking> lst=crud.mostrarRanking();
                    for(Ranking r:lst){
                %>
                <tr>
                    <td><%=r.getIdRanking()%></td>
                    <td><%=r.getClasificacion()%></td>
                    <td><%=r.getIdUsuario()%></td>
                    <td><a href="javascript:cargarArea(<%=r.getIdRanking()%>,
                           '<%=r.getClasificacion()%>','<%=r.getIdUsuario()%>')">Seleccionar</a></td>
                </tr>
                <%
                    }
                %>
            </tbody>
        </table>
                </center>
    </body>
</html>

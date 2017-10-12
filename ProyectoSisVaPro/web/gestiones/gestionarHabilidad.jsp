<%-- 
    Document   : habilidad
    Created on : 10-06-2017, 06:02:13 PM
    Author     : carlos
--%>

<%@page import="com.modelo.Habilidad"%>
<%@page import="java.util.List"%>
<%@page import="com.modelo.CrudHabilidad"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css" integrity="sha384-/Y6pD6FV/Vv2HJnA6t+vslU6fwYXjCFtcEpHbNJ0lyAFsXTsjBbfaDjzALeQsN6M" crossorigin="anonymous">
        <link rel="stylesheet" type="text/css" href="../CSS/style.css">
        <link rel="stylesheet" type="text/css" href="CSS/style.css">
        <title>Gestionar Habilidad</title>
        <script src="../JavaScript/Procesos.js"></script>
    </head>
    <%
    CrudHabilidad crud=new CrudHabilidad();
    %>
    <body>
         <jsp:include page="navGestiones.jsp" />
        <br><br>
        <center>
        <div class="p-3 mb-2 bg-light text-black"><h1>Registro de Departamento</h1></div>
        <br><br>
        <table>
            <div class="container">
            <form action="../procesarHabilidad" method="POST" name="frmHabilidad">
                <div class="form-group row">
                    <label for="idhabilidad" class="col-sm-2 col-form-label">Id Habilidad</label>
                <div class="col-sm-3">
                    <input type="text" class="form-control" id="txtIdDepartamento" name="txtIdHabilidad"placeholder="Id Habilidad">
                </div>
                </div>
                <div class="form-group row">
                    <label for="nombre" class="col-sm-2 col-form-label">Habilidad</label>
                <div class="col-sm-4">
                    <input type="text" class="form-control" id="txtNombre" name="txtNombre"placeholder="Habilidad">
                </div>
                </div>
                <tr>
                    <td colspan="2">
                        <input type="submit" name="btnInsertar" class="btn btn-success" value="Insertar">
                        <input type="submit" name="btnModificar" class="btn btn-warning" value="Modificar" onclick="Modificar()">
                        <input type="submit" name="btnEliminar" class="btn btn-danger" value="Eliminar" onclick=" Eliminar()">
                        <input type="reset" name="btnLimpiar" class="btn btn-secondary" value="Limpiar">   
                    </td>
                </tr>
            </form>
            </div>
        </table>
        <br>
        <table class="table table-bordered" style="text-align: center; width: 1200px">
            <thead class="thead-inverse">
                <tr>
                    <th style="text-align: center">Id Habilidad</th>
                    <th style="text-align: center">Habilidad</th>
                    <th style="text-align: center">Seleccionar</th>
                </tr>
            </thead>
            <tbody>
                <%
                    List<Habilidad> lst=crud.mostrarHabilidad();
                    for(Habilidad h:lst){
                %>
                <tr class="table-primary">
                    <td><%=h.getIdHabilidad()%></td>
                    <td><%=h.getNombreHabilidad()%></td>
                    <td><a href="javascript:cargarHabilidad(<%=h.getIdHabilidad()%>,
                           '<%=h.getNombreHabilidad()%>')" style="color:black">Seleccionar</a></td>
                </tr>
                <%
                    }
                %>
            </tbody>
        </table>
        </center>
    </body>
</html>

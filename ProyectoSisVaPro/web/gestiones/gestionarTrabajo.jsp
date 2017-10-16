<%-- 
    Document   : trabajo
    Created on : 10-06-2017, 06:35:18 PM
    Author     : carlos
--%>

<%@page import="com.modelo.Trabajo"%>
<%@page import="java.util.List"%>
<%@page import="com.modelo.CrudTrabajo"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Gestionar Trabajo</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css" integrity="sha384-/Y6pD6FV/Vv2HJnA6t+vslU6fwYXjCFtcEpHbNJ0lyAFsXTsjBbfaDjzALeQsN6M" crossorigin="anonymous">
        <link rel="stylesheet" type="text/css" href="../CSS/style.css">
        <link rel="stylesheet" type="text/css" href="CSS/style.css">
        <script src="../JavaScript/Procesos.js"></script>
    </head>
    <%
    CrudTrabajo crud=new CrudTrabajo();
    %>
    <body>
         <jsp:include page="navGestiones.jsp" />
        <br><br>
        <center>
            <div class="p-3 mb-2 bg-light text-black"><h1>Registro de Trabajo</h1></div>
        </center>
    <center>
        <table>
            <div class="container">
            <form action="../procesarTrabajo" method="POST" name="frmTrabajo">
                <div class="form-group row">
                    <label for="idtrabajo" class="col-sm-2 col-form-label">Id Trabajo</label>
                <div class="col-sm-2">
                    <input type="text" class="form-control" id="txtIdTrabajo" name="txtIdTrabajo"placeholder="Id Trabajo">
                </div>
                </div>
                <div class="form-group row">
                    <label for="nombre" class="col-sm-2 col-form-label">Nombre de la empresa</label>
                <div class="col-sm-8">
                    <input type="text" class="form-control" id="txtNombre" name="txtNombre"placeholder="Nombre de la Empresa">
                </div>
                </div>
                <div class="form-group row">
                    <label for="encargado" class="col-sm-2 col-form-label">Jefe</label>
                <div class="col-sm-8">
                    <input type="text" class="form-control" id="txtEncargado" name="txtEncargado"placeholder="Nombre del Encargado de la Empresa">
                </div>
                </div>
                <div class="form-group row">
                    <label for="puesto" class="col-sm-2 col-form-label">Puesto Desempeñado</label>
                <div class="col-sm-5">
                    <input type="text" class="form-control" id="txtPuestoD" name="txtPuestoD"placeholder="Puesto Desempeñado">
                </div>
                </div>
                <div class="form-group row">
                    <label for="tiempo" class="col-sm-2 col-form-label">Tiempo Laborado</label>
                <div class="col-sm-5">
                    <input type="text" class="form-control" id="txtTiempoL" name="txtTiempoL"placeholder="Tiempo que laboro en la Empresa">
                </div>
                </div>
                
                <tr>
                    <div class="btn-group" role="group" aria-label="Basic example">
                    <td colspan="2">
               
                        <input type="submit" name="btnInsertar" class="btn btn-success" value="Insertar">
                        <input type="submit" name="btnModificar" class="btn btn-warning" value="Modificar" onclick="Modificar()">
                        <input type="submit" name="btnEliminar"  class="btn btn-danger" value="Eliminar" onclick="Eliminar()">
                        <input type="reset" name="btnLimpiar" class="btn btn-secondary" value="Limpiar">
                    </td>
                    </div>
                </tr>
                
            </form>
            </div>
        </table>
    </center>
        <br>
        <table class="table table-bordered" style="text-align: center">
            <thead class="thead-inverse">
                <tr>
                    <th style="text-align: center;width: 200px">Id Trabajo</th>
                    <th style="text-align: center">Nombre de la Empresa</th>
                    <th style="text-align: center">Jefe</th>
                    <th style="text-align: center">Puesto Desempeñado</th>
                    <th style="text-align: center">Tiempo Laborado</th>
                    <th style="text-align: center">Seleccionar</th>
                </tr>
            </thead>
            <tbody>
                <%
                    List<Trabajo> lst=crud.mostrarTrabajo();
                    for(Trabajo tr:lst){
                %>
                <tr class="table-info">
                    <td><%=tr.getIdTrabajo()%></td>
                    <td><%=tr.getNombreEmpresa()%></td>
                    <td><%=tr.getEncargadoEmpresa()%></td>
                    <td><%=tr.getPuestoDesempenado()%></td>
                    <td><%=tr.getTiempoLaborado()%></td>
                    <td><a href="javascript:cargarArea(<%=tr.getIdTrabajo()%>,
                           '<%=tr.getNombreEmpresa()%>','<%=tr.getEncargadoEmpresa()%>',
                           '<%=tr.getPuestoDesempenado()%>','<%=tr.getTiempoLaborado()%>')">
                            Seleccionar</a></td>
                </tr>
                <%
                    }
                %>
            </tbody>
        </table>
    </body>
</html>

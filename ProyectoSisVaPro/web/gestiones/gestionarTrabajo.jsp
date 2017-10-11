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
        <script src="JavaScript/Procesos.js"></script>
    </head>
    <%
    CrudTrabajo crud=new CrudTrabajo();
    %>
    <body>
        <h1>Registro de Trabajo</h1>
        <table>
            <form action="" method="POST" name="frmTrabajo">
                <tr>
                    <th colspan="2">formulario de Registro</th>
                </tr>
                <tr>
                    <td>Id Trabajo:</td>
                    <td><input type="text" name="txtIdTrabajo"></td>
                </tr>
                <tr>
                    <td>Nombre de Empresa:</td>
                    <td><input type="text" name="txtNombre"></td>
                </tr>
                <tr>
                    <td>Encargado de Empresa:</td>
                    <td><input type="text" name="txtEncargado"></td>
                </tr>
                <tr>
                    <td>Puesto desempeñado:</td>
                    <td><input type="text" name="txtPuestoD"></td>
                </tr>
                 <tr>
                    <td>Tiempo laborado:</td>
                    <td><input type="text" name="txtTiempoL"></td>
                </tr>
                <tr>
                    <td colspan="2">
                        <input type="submit" name="btnInsertar" value="Insertar">
                        <input type="submit" name="btnModificar" value="Modificar">
                        <input type="submit" name="btnEliminar" value="Eliminar">
                        <input type="reset" name="btnLimpiar" value="Limpiar">
                    </td>
                </tr>
            </form>
        </table>
        <br>
        <table>
            <thead>
                <tr>
                    <th>Id Trabajo</th>
                    <th>Nombre de la Empresa</th>
                    <th>Jefe</th>
                    <th>Puesto Desempeñado</th>
                    <th>Tiempo Laborado</th>
                    <th>Seleccionar</th>
                </tr>
            </thead>
            <tbody>
                <%
                    List<Trabajo> lst=crud.mostrarTrabajo();
                    for(Trabajo tr:lst){
                %>
                <tr>
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

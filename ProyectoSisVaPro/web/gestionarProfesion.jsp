<%-- 
    Document   : profesion
    Created on : 10-06-2017, 06:09:47 PM
    Author     : carlos
--%>

<%@page import="com.modelo.CrudProfesion"%>
<%@page import="com.modelo.Profesion"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Gestionar Profesión</title>
        <script src="JavaScript/Procesos.js"></script>
    </head>
    <%
    CrudProfesion crud=new CrudProfesion();
    %>
    <body>
        <h1>Registro de Profesion</h1>
        <table>
            <form action="" method="POST" name="frmProfesion">
                <tr>
                    <th colspan="2">formulario de Registro</th>
                </tr>
                <tr>
                    <td>Id Profesion:</td>
                    <td><input type="text" name="txtIdProfesion"></td>
                </tr>
                <tr>
                    <td>Nombre de Profesion:</td>
                    <td><input type="text" name="txtNombre"></td>
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
                    <th>Id Profesión</th>
                    <th>Profesión</th>
                    <th>Seleccionar</th>
                </tr>
            </thead>
            <tbody>
                <%
                    List<Profesion> lst=crud.mostrarProfesion();
                    for(Profesion pro:lst){
                %>
                <tr>
                    <td><%=pro.getIdProfesion()%></td>
                    <td><%=pro.getNombreProfesion()%></td>
                    <td><a href="javascript:cargarProfesion(<%=pro.getIdProfesion()%>,
                           '<%=pro.getNombreProfesion()%>')">Seleccionar</a></td>
                </tr>
                <%
                    }
                %>
            </tbody>
        </table>
    </body>
</html>

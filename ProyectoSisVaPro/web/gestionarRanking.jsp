<%-- 
    Document   : ranking
    Created on : 10-06-2017, 06:26:55 PM
    Author     : carlos
--%>

<%@page import="com.modelo.Ranking"%>
<%@page import="java.util.List"%>
<%@page import="com.modelo.CrudRanking"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Gestionar Ranking</title>
        <script src="JavaScript/Procesos.js"></script>
    </head>
    <%
    CrudRanking crud=new CrudRanking();
    %>
    <body>
        <h1>Registro de Ranking</h1>
        <table>
            <form action="" method="POST" name="frmRanking">
                <tr>
                    <th colspan="2">formulario de Ranking</th>
                </tr>
                <tr>
                    <td>Id Ranking:</td>
                    <td><input type="text" name="txtIdRanking"></td>
                </tr>
                <tr>
                    <td>Clasificacion:</td>
                    <td><input type="text" name="txtClasificacion"></td>
                </tr>
                <tr>
                    <td>Usuario</td>
                    <td>
                        <select name="lstUsuario">
                            <option></option>
                        </select>
                    </td>
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
                    <th>Id Ranking</th>
                    <th>Clasificacion</th>
                    <th>Usuario</th>
                    <th>Seleccionar</th>
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
    </body>
</html>

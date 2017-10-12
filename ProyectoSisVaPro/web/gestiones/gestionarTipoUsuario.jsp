<%-- 
    Document   : tipoUsuario
    Created on : 10-06-2017, 06:29:40 PM
    Author     : carlos
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="com.modelo.*"%>
<%@page import="java.util.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
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
        <title>JSP Page</title>
    </head>
    <%
    CrudTipoUsuario crud= new CrudTipoUsuario();
    TipoUsuario tipo= new TipoUsuario();
    %>
    <body>
        <h1>Registro de Tipo de Usuario</h1>
        <table>
            <form action="procesarTipoUsuario" method="POST" name="frmTipoUsuario">
                <tr>
                    <th colspan="2">formulario de Registro</th>
                </tr>
                <tr>
                    <td>Id Tipo de Usuario:</td>
                    <td><input type="text" name="txtIdTipoU"></td>
                </tr>
                <tr>
                    <td>nivel:</td>
                    <td><input type="text" name="txtNivel"></td>
                </tr>
                <tr>
                    <td colspan="2">
                        <input type="submit" name="btnInsertar" value="Insertar">
                        <input type="submit" name="btnModificar" value="Modificar" onclick="Modificar()">
                        <input type="submit" name="btnEliminar" value="Eliminar">
                        <input type="reset" name="btnLimpiar" value="Limpiar">
                    </td>
                </tr>
            </form>
        </table>
        <br><br>
        <table>
            <thead>
                <tr>
                    <th>Id</th>
                    <th>Nivel de Usuario</th>
                    <th>Seleccionar</th>
                </tr>
            </thead>
            <tbody>
                    <%
                    List<TipoUsuario> lst=crud.mostrarTipoUsuario();
                    for(TipoUsuario tu : lst)
                    {
                    %>
                <tr>
                    <td><%= tu.getIdTipo()%></td>
                    <td><%= tu.getNivel()%></td>
                    <td><a href="javascript:cargarTipoUsuario(<%= tu.getIdTipo()%>,
                           '<%= tu.getNivel()%>')">Seleccionar</a>
                    </td>
                </tr>
                    <%
                        }
                    %>
            </tbody>
        </table>
    </body>
</html>

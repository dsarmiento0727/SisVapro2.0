<%-- 
    Document   : usuario
    Created on : 10-06-2017, 06:43:21 PM
    Author     : carlos
--%>

<%@page import="com.modelo.CrudUsuario"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Gestionar Usuario</title>
        <script src="JavaScript/Procesos.js"></script>
    </head>
    <%
    CrudUsuario crud=new CrudUsuario();
    %>
    <body>
        <h1>Registro de Usuario</h1>
        <table>
            <form action="" method="POST" name="frmUsuario">
                <tr>
                    <th colspan="2">formulario de registro</th>
                </tr>
                <tr>
                    <td>Id Usuario :</td>
                    <td><input type="text" name="txtIdUsuario"></td>
                </tr>
                <tr>
                    <td>Nombre Usuario:</td>
                    <td><input type="text" name="txtNombreU"></td>
                </tr>
                <tr>
                    <td>Clave:</td>
                    <td><input type="text" name="txtclave"></td>
                </tr>
                <tr>
                    <td>tipo: </td>
                    <td>
                        <select name="lstTipo">
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
        <table class="table table-bordered" style="text-align: center; width: 1200px" >
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
            </tbody
        </table>
    </body>
</html>

<%-- 
    Document   : publicista
    Created on : 10-06-2017, 06:16:58 PM
    Author     : carlos
--%>

<%@page import="com.modelo.Empresa"%>
<%@page import="com.modelo.CrudEmpresa"%>
<%@page import="com.modelo.Publicista"%>
<%@page import="java.util.List"%>
<%@page import="com.modelo.CrudPublicista"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Gestionar Publicista</title>
        <script src="JavaScript/Procesos.js"></script>
    </head>
    <%
    CrudPublicista crud=new CrudPublicista();
    CrudEmpresa crude=new CrudEmpresa();
    %>
  
    <body>
        <h1>Registro de Publicista</h1>
        <table>
            <form action="" method="POST" name="frmPublicista">
                <tr>
                    <th colspan="2">formulario de Registro</th>
                </tr>
                <tr>
                    <td>Id Publicista:</td>
                    <td><input type="text" name="txtIdPublicista"></td>
                </tr>
                <tr>
                    <td>Nombres:</td>
                    <td><input type="text" name="txtNombres"></td>
                </tr>
                <tr>
                    <td>Apellidos:</td>
                    <td><input type="text" name="txtApellidos"></td>
                </tr>
                <tr>
                    <td>Correo Electronico:</td>
                    <td><input type="text" name="txtCorreo"></td>
                </tr>
                <tr>
                    <td>Empresa:</td
                    <td>
                        <%
                        List<Empresa> lst1=crude.mostrarEmpresa();
                        for(Empresa em:lst1){
                        %>
                        <select name="lstEmpresa" value="<%=em.getIdEmpresa()%>">
                            <option><%=em.getNombreComercial()%></option>
                        </select>
                       <%
                        }
                       %>
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
       </table>
        <br>
        <table class="table table-bordered" style="text-align: center; width: 1200px" >
            <thead class="thead-inverse">
                <tr>
                    <th scope="row" style="text-align: center">Id Contratador</th>
                    <th style="text-align: center">Nombres</th>
                    <th style="text-align: center">Apellidos</th>
                    <th style="text-align: center">Correo Electronico</th>
                    <th style="text-align: center">Empresa</th>
                    <th style="text-align: center">Seleccionar</th>
                </tr>
            </thead>
            <tbody>
                <%
                    List<Publicista> lst=crud.mostrarPublicista();
                    for(Publicista pu:lst){
                %>
                <tr class="table-info">
                    <td><%=pu.getIdPublicista()%></td>
                    <td><%=pu.getNombresP()%></td>
                    <td><%=pu.getApellidosP()%></td>
                    <td><%=pu.getCorreoEllectronicoP()%></td>
                    <td><%=pu.getIdEmpresa()%></td>
                    <td><a href="javascript:cargarPublicista(<%=pu.getIdPublicista()%>,
                           '<%=pu.getNombresP()%>','<%=pu.getApellidosP()%>',
                          '<%=pu.getIdEmpresa()%>')">Seleccionar</a></td>
                </tr>
                <%
                    }
                %>
            </tbody
        </table>
    </body>
</html>

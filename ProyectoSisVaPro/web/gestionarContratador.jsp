<%-- 
    Document   : contratador
    Created on : 10-06-2017, 04:59:30 PM
    Author     : Carlos Lopez,David Sarmiento
--%>

<%@page import="com.modelo.CrudEmpresa"%>
<%@page import="com.modelo.Empresa"%>
<%@page import="com.modelo.Empresa"%>
<%@page import="com.modelo.Contratador"%>
<%@page import="java.util.List"%>
<%@page import="com.modelo.CrudContratador"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css" integrity="sha384-/Y6pD6FV/Vv2HJnA6t+vslU6fwYXjCFtcEpHbNJ0lyAFsXTsjBbfaDjzALeQsN6M" crossorigin="anonymous">
        <link rel="stylesheet" type="text/css" href="CSS/style.css">
        <title>Gestionar Contratador</title>
        <script src="JavaScript/Procesos.js"></script>
    </head>
    <%
        CrudContratador crud = new CrudContratador();
        CrudEmpresa crude = new CrudEmpresa();
    %>
    <body>
         <center>
            <div class="p-3 mb-2 bg-light text-black"><h1>Registro de Contratador</h1></div>
        </center>
        <table>
            <form action="procesarContratador" method="POST" name="frmContratador">
                <div class="container">
                    <div class="row">
                        <div class="col align-self-start">
                    <div class="row justify-content-start">
                            <div class="col-4">
                                <div class="form-group">
                                    <label for="IdContratador" class="col-form-label">Contratador</label>
                                    <input type="text" class="form-control" id="txtIdContratador" name="txtIdContratador" placeholder="Id Contratador">
                                </div>
                            </div>
                    </div>
                        </div>
                    </div>
                </div>
               
                <tr>
                    <td>Nombres:</td>
                    <td><input type="text" name="txtNombres"></td>
                </tr>
                <tr>
                    <td>Apellidos:</td>
                    <td><input type="text" name="txtApellidos"></td>
                </tr>
                <tr>
                    <td>Descripcion : </td>
                    <td><input type="text" name="txtDescripcion"></td>
                </tr>
                <tr>
                    <td>Correo Electronico:</td>
                    <td><input type="text" name="txtCorreo"></td>
                </tr>
                <tr>
                    <td>Empresa:</td>
                    <td>
                        <select name="lstEmpresa">
                            <%
                                List<Empresa> lst1 = crude.mostrarEmpresa();
                                for (Empresa em : lst1) {
                            %>

                            <option value="<%=em.getIdEmpresa()%>"><%=em.getNombreComercial()%></option>

                            <%
                                }
                            %>
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
                    <th scope="row" style="text-align: center">Id Contratador</th>
                    <th style="text-align: center">Nombres</th>
                    <th style="text-align: center">Apellidos</th>
                    <th style="text-align: center">Descripcion</th>
                    <th style="text-align: center">Correo Electronico</th>
                    <th style="text-align: center">Empresa</th>
                    <th style="text-align: center">Seleccionar</th>
                </tr>
            </thead>
            <tbody>
                <%
                    List<Contratador> lst = crud.mostrarContratador();
                    for (Contratador co : lst) {
                %>
                <tr class="table-info">
                    <td><%=co.getIdContratador()%></td>
                    <td><%=co.getNombresC()%></td>
                    <td><%=co.getApellidosC()%></td>
                    <td><%=co.getDescripcion()%></td>
                    <td><%=co.getCorreoElectronicoC()%></td>
                    <td><%=co.getIdEmpresa()%></td>
                    <td><a href="javascript:cargarContratador(<%=co.getIdContratador()%>,
                           '<%=co.getNombresC()%>','<%=co.getApellidosC()%>',
                           '<%=co.getDescripcion()%>','<%=co.getIdEmpresa()%>')">Seleccionar</a></td>
                </tr>
                <%
                    }
                %>
            </tbody
        </table>
    </body>
</html>

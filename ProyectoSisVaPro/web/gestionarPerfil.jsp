<%-- 
    Document   : perfil
    Created on : 10-06-2017, 06:47:30 PM
    Author     : carlos
--%>

<%@page import="com.modelo.CrudPerfil"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Gestionar Perfil</title>
        <script src="JavaScript/Procesos.js"></script>
    </head>
    <%
    CrudPerfil crud=new CrudPerfil();
    %>
    <body>
        <h1>Registro de Perfil</h1>
        <table>
            <form action="" method="POST" name="frmPerfil">
                <tr>
                    <th colspan="2">formulario de registro</th>
                </tr>
                <tr>
                    <td>Id Perfil :</td>
                    <td><input type="text" name="txtIdPerfil"></td>
                </tr>
                <tr>
                    <td>Foto:</td>
                    <td><input type="text" name="txtFoto"></td>
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
                    <td>Genero:</td>
                    <td>
                        Masculino<input type="radio" name="genero" value="Masculino">
                        Femenino<input type="radio" name="genero" value="Femenino">
                    </td>
                </tr>
                <tr>
                    <td>fechaNacimiento:</td>
                    <td><input type="text" name="txtFechaNac"></td>
                </tr>
                <tr>
                    <td>DUI:</td>
                    <td><input type="text" name="txtDui"></td>
                </tr>
                <tr>
                    <td>NIT:</td>
                    <td><input type="text" name="txtNit"></td>
                </tr>
                 <tr>
                    <td>Estado civil:</td>
                    <td>
                        Soltero<input type="radio" name="Estado" value="Soltero">
                        Casado<input type="radio" name="Estado" value="Casado">
                    </td>
                </tr>
                <tr>
                    <td>Direccion:</td>
                    <td><input type="text" name="txtDireccion"></td>
                </tr>
                <tr>
                    <td>Pais:</td>
                    <td>
                        <select name="lstPais">
                            <option value=""></option>
                        </select>
                    </td>
                </tr>
                <tr>
                    <td>Departamento:</td>
                    <td>
                        <select name="lstDepartamento">
                            <option value=""></option>
                        </select>
                    </td>
                </tr>
                <tr>
                    <td>Municipio:</td>
                    <td>
                        <select name="lstMunicipio">
                            <option value=""></option>
                        </select>
                    </td>
                </tr>
                <tr>
                    <td>Usuario:</td>
                    <td>
                        <select name="lstUsuario">
                            <option value=""></option>
                        </select>
                    </td>
                </tr>
                <tr>
                    <td>Habilidad:</td>
                    <td>
                        <select name="lstHabilidad">
                            <option value=""></option>
                        </select>
                    </td>
                </tr>
                <tr>
                    <td>Idioma:</td>
                    <td>
                        <select name="lstIdioma">
                            <option value=""></option>
                        </select>
                    </td>
                </tr>
                <tr>
                    <td>Profesion:</td>
                    <td>
                        <select name="lstProfesion">
                            <option value=""></option>
                        </select>
                    </td>
                </tr>
                <tr>
                    <td>Trabajo:</td>
                    <td>
                        <select name="lstTrabajo">
                            <option value=""></option>
                        </select>
                    </td>
                </tr>
                <tr>
                    <td>Correo Electronico:</td>
                    <td><input type="text" name="txtCorreoE"></td>
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

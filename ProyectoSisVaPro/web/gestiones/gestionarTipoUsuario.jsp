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
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css" integrity="sha384-/Y6pD6FV/Vv2HJnA6t+vslU6fwYXjCFtcEpHbNJ0lyAFsXTsjBbfaDjzALeQsN6M" crossorigin="anonymous">
        <link rel="stylesheet" type="text/css" href="../CSS/style.css">
        <link rel="stylesheet" type="text/css" href="CSS/style.css">
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
        <title>Gestionar Tipo de Usuario</title>
    </head>
    <%
    CrudTipoUsuario crud= new CrudTipoUsuario();
    TipoUsuario tipo= new TipoUsuario();
    %>
    <body>
         <jsp:include page="navGestiones.jsp" />
         <br><br>
        <center>
            <div class="p-3 mb-2 bg-light text-black"><h1>Registro de Tipo de Usuario</h1></div>
        </center>
        <br><br>
        <center>
        <table>
            <div class="container">
            <form action="../procesarTipoUsuario" method="POST" name="frmTipoUsuario">
                <div class="form-group row">
                    <label for="idtipo" class="col-sm-2 col-form-label">Id Tipo</label>
                <div class="col-sm-2">
                    <input type="text" class="form-control" id="txtIdTipoU" name="txtIdTipoU"placeholder="Id Tipo Usuario">
                </div>
                </div>
                <div class="form-group row">
                    <label for="nivel" class="col-sm-2 col-form-label">Nombre del Catalogo</label>
                <div class="col-sm-4">
                    <input type="text" class="form-control" id="txtNivel" name="txtNivel" placeholder="Nivel de Usuario">
                </div>
                </div>
                <tr>
                <div class="btn-group" role="group" aria-label="Basic example">
                    <td colspan="2">
               
                        <input type="submit" name="btnInsertar" class="btn btn-success" value="Insertar">
                        <input type="submit" name="btnModificar" class="btn btn-warning" value="Modificar" onclick="Modificar()">
                        <input type="submit" name="btnEliminar"  class="btn btn-danger" value="Eliminar" onclick="Eliminar()">
                        <input type="reset" name="btnLimpiar" class="btn btn-secondary" value="Limpiar">
               </div>
                    </td>
                </tr>
            </form>
            </div>
        </table>
        </center>
        <br><br>
        <table class="table table-bordered" style="text-align: center">
            <thead class="thead-inverse">
                <tr>
                    <th style="text-align: center">Id</th>
                    <th style="text-align: center">Nivel de Usuario</th>
                    <th style="text-align: center">Seleccionar</th>
                </tr>
            </thead>
            <tbody>
                    <%
                    List<TipoUsuario> lst=crud.mostrarTipoUsuario();
                    for(TipoUsuario tu : lst)
                    {
                    %>
                <tr class="table-info">
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

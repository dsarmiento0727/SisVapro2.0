<%-- 
    Document   : gestionarTipoUsuario
    Created on : 11-07-2017, 09:24:35 PM
    Author     : Gerardo
--%>

<%@page import="java.util.List"%>
<%@page import="com.modelo.TipoUsuario"%>
<%@page import="com.modelo.Usuario"%>
<%@page import="com.modelo.CrudTipoUsuario"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

        <link rel="stylesheet" type="text/css" href="../../css/bootstrap.min.css">
        <link rel="stylesheet" type="text/css" href="../../css/dataTables.bootstrap4.min.css"/>
        <link rel="stylesheet" type="text/css" href="../../css/style.css"/>
        <script type="text/javascript" src="../../js/jquery-3.2.1.slim.min.js"></script>
        <script type="text/javascript" src="../../js/popper.min.js"></script>
        <script type="text/javascript" src="../../js/bootstrap.min.js"></script>
        <script type="text/javascript" src="../../js/datatables.min.js"></script>
        <script type="text/javascript" src="../../js/Procesos.js"></script>
        <script type="text/javascript" src="../../js/dataTable.js"></script>

        <script src="../../js/Procesos.js"></script>
        <title>Gestionar Tipo de Usuario</title>
    </head>
    <%        CrudTipoUsuario crud = new CrudTipoUsuario();
    %>
    <body>
    <center>
        <br>
        <div class="p-2 mb-1 bg-light text-black"><h1>Registro de Tipo de Usuario</h1></div>
        <br>
        <div class="container">
            <form action="procesarTipoUsuario" method="POST" name="frmTipoUsuario">
                <center>

                    <div class="form-group row">
                        <label for="idtipousu" class="col-sm-2 col-form-label"><strong>Id Tipo Usuario</strong></label>
                        <div class="col-sm-3">
                            <input type="text" class="form-control" id="idtipousu" name="txtIdTipoUsuario" placeholder="Id Usuario" value="0" readonly>
                        </div>
                    </div>
                    <div class="form-group row">
                        <label for="nivel" class="col-sm-2 col-form-label"><strong>Nivel</strong></label>
                        <div class="col-sm-4">
                            <input type="text" class="form-control" id="nombre" name="txtNivel" required="true" placeholder="Nivel de Usuario">
                        </div>
                    </div>

                    <div class="btn-group" role="group" aria-label="Basic example">
                        <input type="submit" name="btnInsertar" class="btn btn-success" value="Insertar">
                        <input type="submit" name="btnModificar" class="btn btn-warning" value="Modificar" onclick="Modificar()">
                        <input type="submit" name="btnEliminar" class="btn btn-danger" value="Eliminar" onclick="Eliminar()">
                        <input type="reset" name="btnLimpiar" class="btn btn-secondary" value="Limpiar">   
                    </div>
                </center>
            </form>
        </div>
        <br><br>        
    </center>
  <table id="grid" class="table table-bordered" style="text-align: center; width: 1200px">
    <thead class="thead-inverse">
        <tr>
            <th  scope="row" style="text-align: center">Id Tipo</th>
            <th  style="text-align: center">Nivel de Usuario</th>
            <th  style="text-align: center">Seleccionar</th>
        </tr>
    </thead>
    <tbody>
        <%
            CrudTipoUsuario crudu = new CrudTipoUsuario();
            List<TipoUsuario> lsttipo = crudu.mostrarTipoUsuario();
            for (TipoUsuario tu : lsttipo) {
        %>
        <tr class="table-primary">
            <td><%=tu.getIdTipoUsuario()%></td>
            <td><%=tu.getNivel()%></td>
            <td><a href="javascript:cargarTipoUsuario(<%=tu.getIdTipoUsuario()%>,
                   '<%=tu.getNivel()%>')">Seleccionar</a></td> 
        </tr>
        <%
            }
        %>
    </tbody>
</table>  
    
</body>
</html>

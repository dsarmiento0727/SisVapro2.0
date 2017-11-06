<%-- 
    Document   : gestionarUsuario
    Created on : 11-05-2017, 08:17:55 PM
    Author     : carlos
--%>

<%@page import="com.modelo.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.*" %>
<%@page import="com.modelo.CrudDepartamento" %>
<%

    String usuario = null;

    String tipoUsuario = null;

    try {

        HttpSession objSesion = request.getSession(false);

        HttpSession objSesionTipo = request.getSession(false);

        usuario = (String) objSesion.getAttribute("usuario");

        tipoUsuario = (String) objSesionTipo.getAttribute("tipo");
        if (usuario == null) {
            response.sendRedirect("../../accesoDenegado.jsp");
        }

    } catch (Exception e) {

        out.print(e.toString());

    }

%>
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
        <title>Gestionar Usuario</title>
        <script src="../../js/Procesos.js"></script>

    </head>
    <%
        CrudDepartamento crud = new CrudDepartamento();
    %>
    <body>
<jsp:include page="menuGestionar.jsp"/>
    <center>
        <div class="p-3 mb-2 bg-light text-black"><h1>Registro de Usuario</h1></div>
    </center>
    <br><br>        
    <div class="container">
        <form action="procesarUsuario" method="POST" name="frmUsuario">
            <center>
                
                    <div class="form-group row">
                        <label for="idusu" class="col-sm-2 col-form-label">Id Usuario</label>
                        <div class="col-sm-3">
                            <input type="text" class="form-control" id="idusu" name="txtIdUsuario" placeholder="Id Usuario">
                        </div>
                    </div>
                    <div class="form-group row">
                        <label for="nombre" class="col-sm-2 col-form-label">Nombre Usuario</label>
                        <div class="col-sm-4">
                            <input type="text" class="form-control" id="nombre" name="txtNombreUsuario"placeholder="Nombre Usuario">
                        </div>
                    </div>
                <div class="form-group row">
                        <label for="cla" class="col-sm-2 col-form-label">Clave</label>
                        <div class="col-sm-4">
                            <input type="text" class="form-control" id="cla" name="txtClave"placeholder="Clave">
                        </div>
                    </div>
                    <div class="col-10">
                        <div class="form-group">
                            <label for="lstTipoUsuario" class="col-form-label"><strong>Pais</strong></label>

                            <select class="custom-select mb-2 mr-sm-2 mb-sm-0" id="lstTipoUsuario" name="lstTipoUsuario">
                                <option>Seleccionar</option>
                                <%
                                    CrudTipoUsuario crudtipo=new CrudTipoUsuario();
                                    List<TipoUsuario> lsttipo = crudtipo.mostrarTipoUsuario();
                                    for (TipoUsuario ti : lsttipo) {
                                %>
                                <option value="<%=ti.getIdTipoUsuario()%>"><%=ti.getNivel()%></option>
                                <%
                                    }
                                %>
                            </select>
                        </div>
                    </div>
                    <div class="btn-group" role="group" aria-label="Basic example">
                      
                                <input type="submit" name="btnInsertar" class="btn btn-success" value="Insertar">
                                <input type="submit" name="btnModificar" class="btn btn-warning" value="Modificar" onclick="Modificar()">
                                <input type="submit" name="btnEliminar" class="btn btn-danger" value="Eliminar" onclick="Eliminar()">
                                <input type="reset" name="btnLimpiar" class="btn btn-secondary" value="Limpiar">   
                         </div>
                        </form>
                    
                 
                </table>
            </center>
            <br><br>
            <table id="grid" class="table table-bordered" style="text-align: center; width: 1200px">
                <thead class="thead-inverse">
                    <tr>
                        <th  scope="row" style="text-align: center">Id Usuario</th>
                        <th  style="text-align: center">Nombre Usuario</th>
                        <th  style="text-align: center">Clave</th>
                        <th  style="text-align: center">TipoUsuario</th>
                        <th  style="text-align: center">Seleccionar</th>
                    </tr>
                </thead>
                <tbody>
                    <%
                        CrudUsuario crudu=new CrudUsuario();
                        List<Usuario> lstusu = crudu.mostrarUsuario();
                        for (Usuario u : lstusu) {
                    %>
                    <tr class="table-primary">
                        <td><%=u.getIdUsuario() %></td>
                        <td><%=u.getNombreUsuario()%></td>
                        <td><%=u.getClave() %></td>
                        <%
                        CrudTipoUsuario crudt=new CrudTipoUsuario();
                        List<TipoUsuario> lstt = crudt.mostrarTipoUsuario();
                        for (TipoUsuario ti : lstt) {
                            if(u.getIdTipoUsuario()==ti.getIdTipoUsuario()){
                        %>
                        <td><%=ti.getNivel()%></td>
                        <% }} %>
                        <td><a href="javascript:cargarUsuario(<%=u.getIdUsuario() %>,
                               '<%=u.getNombreUsuario()%>','<%=u.getClave() %>','<%=u.getIdTipoUsuario() %>')">Seleccionar</a></td> 
                    </tr>
                    <%
                        }
                    %>
                </tbody>
            </table>
            </body>
            </html>

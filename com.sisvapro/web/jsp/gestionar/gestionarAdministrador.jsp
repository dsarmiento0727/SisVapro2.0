<%-- 
    Document   : gestionarAdministrador
    Created on : 11-05-2017, 05:57:20 PM
    Author     : carlos
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="com.modelo.*" %>
<%@page import="java.util.*" %>
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
        <link rel="stylesheet" type="text/css" href="../../css/bootstrap.min.css">
        <link rel="stylesheet" type="text/css" href="../../css/dataTables.bootstrap4.min.css"/>
        <link rel="stylesheet" type="text/css" href="../../css/style.css"/>
        <script type="text/javascript" src="../../js/jquery-3.2.1.slim.min.js"></script>
        <script type="text/javascript" src="../../js/popper.min.js"></script>
        <script type="text/javascript" src="../../js/bootstrap.min.js"></script>
        <script type="text/javascript" src="../../js/datatables.min.js"></script>
        <script type="text/javascript" src="../../js/Procesos.js"></script>
        <script type="text/javascript" src="../../js/dataTable.js"></script>
        <title>Gestionar Empresa</title>

        <%            if (request.getAttribute("valor") != null) {
        %>
        <script>
            alert('<%=request.getAttribute("valor")%>')
        </script>
        <%
            }
        %>
    </head>
    <%
        CrudAdministrador cruda = new CrudAdministrador();
        CrudPais crudp = new CrudPais();
        CrudDepartamento crudd = new CrudDepartamento();
    %>
    <body> 
        <jsp:include page="menuGestionar.jsp"/>
    <center>
        <div class="p-3 mb-2 bg-light text-black"><h1>Registro de Empresa</h1></div>
        <br><br>

        <div class="container">
            <form action="procesarAdministrador" method="POST" name="frmAdministrador" enctype="multipart/form-data">
                <table>
                    <div class="form-group row">
                        <label for="idadmin" class="col-sm-2 col-form-label">Id Administrador</label>
                        <div class="col-sm-3">
                            <input type="text" class="form-control" id="idadmin" name="txtIdAdministrador"placeholder="Id Administrador">
                        </div>
                    </div>

                    <div class="form-group row">
                        <label for="idusuario" class="col-sm-2 col-form-label">Id usuario</label>
                        <div class="col-sm-3">
                            <input type="text" class="form-control" id="txtIdUsuario" name="txtIdUsuario"placeholder="Id Usuario">
                        </div>
                    </div>

                    <div class="form-group row">
                        <label for="nombres" class="col-sm-2 col-form-label">Nombres </label>
                        <div class="col-sm-5">
                            <input type="text" class="form-control" id="nombres" name="txtNombres"placeholder="Nombres">
                        </div>
                    </div> 
                    <div class="form-group row">

                        <label for="apellidos" class="col-sm-2 col-form-label">Apellidos</label>
                        <div class="col-sm-5">
                            <input type="text" class="form-control" id="apellidos" name="txtApellidos"placeholder="Apellidos">
                        </div>
                    </div> 
                    <div class="form-group row">
                        <label for="dui" class="col-sm-2 col-form-label">DUI</label>
                        <div class="col-sm-5">
                            <input type="text" class="form-control" id="dui" name="txtDui"placeholder="############-#">
                        </div>
                    </div> 
                    <div class="form-group row">
                        <label for="nit" class="col-sm-2 col-form-label">NIT</label>
                        <div class="col-sm-5">
                            <input type="text" class="form-control" id="txtNit" name="txtNit"placeholder="############-##">
                        </div>
                    </div> 
                    <div class="form-group row">
                        <label for="tele" class="col-sm-2 col-form-label">Telefono</label>
                        <div class="col-sm-5">
                            <input type="text" class="form-control" id="tele" name="txtTelefono"placeholder="####-####">
                        </div>
                    </div> 
                    <div class="form-group row">
                        <label for="direccion" class="col-sm-2 col-form-label">Dirección de la Empresa</label>
                        <div class="col-sm-5">
                            <textarea class="form-control" id="direccion" name="txtDireccion" rows="3"></textarea>
                        </div>
                    </div>
                    <div class="form-group">
                            <strong>Género</strong>
                            <label class="custom-control custom-radio">
                                <input type="radio" name="genero" value="Femenino" class="custom-control-input" checked="">
                                <span class="custom-control-indicator"></span>
                                <span class="custom-control-description">Femenino</span>
                            </label>
                            <label class="custom-control custom-radio">
                                <input type="radio" name="genero" value="Masculino" class="custom-control-input">
                                <span class="custom-control-indicator"></span>
                                <span class="custom-control-description">Masculino</span>
                            </label>
                        </div>
                    <div class="form-group row">
                        <label for="core" class="col-sm-2 col-form-label">CorreoElectronico</label>
                        <div class="col-sm-5">
                            <input type="text" class="form-control" id="core" name="txtCorreo" placeholder="carlos123@gmail.com">
                        </div>
                    </div>
                    <div class="col-10">
                        <div class="form-group">
                            <label for="IdPais" class="col-form-label"><strong>Pais</strong></label>

                            <select class="custom-select mb-2 mr-sm-2 mb-sm-0" id="lstPais" name="lstPais">
                                <option>Seleccionar</option>
                                <%
                                    List<Pais> lst = crudp.mostrarPais();
                                    for (Pais pa : lst) {
                                %>
                                <option value="<%=pa.getIdPais()%>"><%=pa.getNombrePais()%></option>
                                <%
                                    }
                                %>
                            </select>
                        </div>
                    </div>     
                    <div class="col-10">
                        <div class="form-group">
                            <label for="IdDepartamento" class="col-form-label"><strong>Departamento</strong></label>

                            <select class="custom-select mb-2 mr-sm-2 mb-sm-0" id="lstDepartamento" name="lstDepartamento">
                                <option>Seleccionar</option>
                                <%
                                    List<Departamento> lst2 = crudd.mostrarDepartamento();
                                    for (Departamento d : lst2) {
                                %>
                                <option value="<%=d.getIdDepartamento()%>" ><%=d.getNombreDepartamento()%></option>
                               <%
                                    }
                                %>
                            </select>
                        </div>
                    </div>

                    <div class="btn-group" role="group" aria-label="Basic example">
                        <input type="submit" name="btnInsertar" class="btn btn-success" value="Insertar">
                        <input type="submit" name="btnModificar" class="btn btn-warning" value="Modificar" onclick="Modificar()">
                        <input type="submit" name="btnEliminar"  class="btn btn-danger" value="Eliminar" onclick="Eliminar()">
                        <input type="reset" name="btnLimpiar" class="btn btn-secondary" value="Limpiar">
                    </div>


                </table>
            </form>
        </div>

        <br>
        <table id="grid" class="table table-bordered" style="text-align: center">
            <thead  class="thead-inverse">
                <tr>
                    <th style="text-align: center">ID Administrador</th>
                    <th style="text-align: center">Nombres</th>
                    <th style="text-align: center">Apellidos</th>
                    <th style="text-align: center">Dui</th>
                    <th style="text-align: center">Nit</th>
                    <th style="text-align: center">Telefono</th>
                    <th style="text-align: center">Direccion</th>
                    <th style="text-align: center">genero</th>
                    <th style="text-align: center">CorreoElectronico</th>
                    <th style="text-align: center">Pais</th>
                    <th style="text-align: center">Departamento</th>
                    <th style="text-align: center">ID Usuario</th>
                    <th style="text-align: center">Seleccionar</th>
                </tr>
            </thead>
            <tbody>
                <%
                    
                    List<Administrador> lst4 = cruda.mostrarAdministrador();
                    for (Administrador ad : lst4) {
                %>
                <tr class="table-primary">
                    <td><%=ad.getIdAdministrador() %></td>
                    <td><%=ad.getNombres() %></td>
                    <td><%=ad.getApellidos() %></td>
                    <td><%=ad.getDui() %></td>
                    <td><%=ad.getNit() %></td>
                    <td><%=ad.getTelefono() %></td>
                    <td><%=ad.getDireccion() %></td>
                    <td><%=ad.getGenero() %></td>
                    <td><%=ad.getCorreoElectronico() %></td>
                    <%
                        List<Pais> lstp = crudp.mostrarPais();
                        for(Pais pa:lstp){
                                 if(ad.getIdPais()==pa.getIdPais()){
                    %>
                    <td><%=pa.getNombrePais()%></td>
                    <%}}%>
                    <%
                        List<Departamento> lstd = crudd.mostrarDepartamento();
                        for(Departamento depa:lstd){
                                 if(ad.getIdDepartamento()==depa.getIdDepartamento()){
                    %>
                    <td><%=depa.getNombreDepartamento()%></td>
                    <% }}%>
                    <td><%=ad.getIdUsuario() %></td>
                    <td><a href="javascript:cargarAdmin(<%=ad.getIdAdministrador() %>,
                           '<%=ad.getNombres() %>','<%=ad.getApellidos()%>',
                           '<%=ad.getDui() %>','<%=ad.getNit() %>','<%=ad.getTelefono() %>',
                           '<%=ad.getDireccion() %>','<%=ad.getGenero() %>',
                           '<%=ad.getCorreoElectronico() %>','<%=ad.getIdPais()%>','<%=ad.getIdDepartamento() %>','<%=ad.getIdUsuario() %>')">Seleccionar</a></td>
                </tr>
                <%
                    }
                %>
            </tbody>
        </table>
    </center>
</body>
</html>
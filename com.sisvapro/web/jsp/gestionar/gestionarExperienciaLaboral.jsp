<%--  
    Document   : gestionarExperienciaLaboral
    Created on : 10-15-2017, 12:58:11 AM
    Author     : Karen Escobar, David Sarmiento
--%>

<%@page import="com.modelo.CrudExperienciaLaboral"%>
<%@page import="java.util.List"%>
<%@page import="com.modelo.ExperienciaLaboral"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
        <title>Gestionar Experiencia Laboral</title>
    </head>

    <%        CrudExperienciaLaboral crud = new CrudExperienciaLaboral();
    %>

    <body>
        <jsp:include page="menuGestionar.jsp"/>
    <center>
        <br>
        <div class="p-1 mb-2 bg-light text-black">
            <h1>Registro de Experiencia Laboral</h1>
        </div>
    </center>    
    <br>
    <div class="jumbotron" style="color:black">
        <div class="container">
            <form action="procesarExperienciaLaboral" method="post" name="frmExperienciaLaboral">

                <div class="col align-self-star">
                    <div class="form-row">
                        <div class="form-group col-md-5">
                            <label for="idExperienciaLaboral" class="col-form-label">Id Experiencia Laboral</label>
                            <input type="text" class="form-control" id="idExperienciaLaboral" name="txtIdExperienciaLaboral" placeholder="Id Experiencia Laboral"  value="0" readonly>
                        </div>
                       <div class="col align-self-center">
                            <div class="row justify-content-center">
                                <div class="form-group col-md-8">
                                    <label for="idEmpleador" class="col-form-label">Id Empleador</label>
                                    <input type="text" class="form-control" id="idEmpleador" name="txtIdEmpleador"  pattern="[0-9]{1,}" required="true" placeholder="Id Empleado" >
                                </div>
                            </div>
                        </div>
                          
                    </div>
                    <div class="form-row">
                       
                        <div class="form-group col-md-5">
                            <label for="nombreEmpresa" class="col-form-label">Nombre de la Empresa</label>
                            <input type="text" class="form-control" id="nombreEmpresa" name="txtNombreEmpresa" pattern="[a-zA-ZñÑáéíóúÁÉÍÓÚ]{3,}" required="true" placeholder="Nombre de la Empresa">
                        </div>
                        <div class="col align-self-center">
                            <div class="row justify-content-center">
                                <div class="form-group col-md-8">
                                    <label for="puesto" class="col-form-label">Puesto</label>
                                    <input type="text" class="form-control" id="puesto" name="txtPuesto" pattern="[a-zA-ZñÑáéíóúÁÉÍÓÚ]{3,}" required="true" placeholder="Puesto ">
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="form-row">
                        <div class="form-group col-md-5">
                            <label for="nombreJefe" class="col-form-label">Nombre del Jefe</label>
                            <input type="text" class="form-control" id="nombreJefe" name="txtJefe" pattern="[a-zA-ZñÑáéíóúÁÉÍÓÚ]{3,}" required="true" placeholder="Nombre del Jefe">
                        </div>
                        <div class="col align-self-end">
                            <div class="row justify-content-center">
                                <div class="form-group col-md-8">
                                    <label for="Telefono" class="col-form-label">Telefono del Jefe</label>
                                    <input type="text" class="form-control" id="Telefono"  pattern="[0-9]{1,}" required="true" name="txtTelefono" placeholder="Ejemplo: ####-####">
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="form-row">
                        <div class="form-group col-md-5">
                            <label for="Desde" class="col-form-label">Desde</label>
                            <input type="date" class="form-control" id="Desde" name="Desde">
                        </div>
                        <div class="col align-self-end">
                            <div class="row justify-content-center">
                                <div class="form-group col-md-8">
                                    <label for="Hasta" class="col-form-label">Hasta</label>
                                    <input type="date" class="form-control" id="Hasta" name="Hasta">
                                </div>
                            </div>
                        </div>
                    </div>

                    
                    <div class="row">
                        <div class="col col-2">
                            <label for="IdTipoContrato" class="col-form-label">Tipo de Contrato</label>
                        </div>
                        <div class="col-4">
                            <select class="custom-select mb-1 mr-sm-1 mb-sm-5" id="lstContrato" name="lstContrato" required="true">
                                <option>Seleccionar</option>
                                <option>Tiempo Completo</option>
                                <option>Por Horas</option>
                                <option>Practicas</option> 
                            </select>
                        </div>
                        <div class="w-10"></div>
                        
                        
                    </div>
                </div>
                <center>
                    <div class="btn-group" role="group" aria-label="Basic example">

                        <div class="row">
                            <div class="col">
                                <input type="submit" name="btnInsertar" class="btn btn-success" value="Insertar">
                            </div>
                            <div class="col">
                                <input type="submit" name="btnModificar" class="btn btn-warning" value="Modificar" onclick="Modificar()">
                            </div>
                            <div class="col">
                                <input type="submit" name="btnEliminar"  class="btn btn-danger" value="Eliminar" onclick="Eliminar()">
                            </div>
                            <div class="col">
                                <input type="reset" name="btnLimpiar" class="btn btn-secondary" value="Limpiar">
                            </div>
                        </div>
                    </div>
                </center>                        
            </form>       
        </div>
    </div>
    <table id="grid" class="table table-bordered" style="text-align: center">
        <thead class="thead-inverse">
            <tr>
                <th style="text-align: center;width: 100px">Id Experiencia Laboral</th>
                <th style="text-align: center;width: 200px">Nombre de la Empresa</th>
                <th style="text-align: center;width: 200px">Nombre de Jefe</th>
                <th style="text-align: center;width: 150px">Telefono del Jefe</th>
                <th style="text-align: center">Puesto</th>
                <th style="text-align: center;width: 150px">Tipo de contrato</th>
                <th style="text-align: center;width: 150px">Desde</th>
                <th style="text-align: center;width: 150px">Hasta</th>
                <th style="text-align: center;width: 150px">Id Empleador</th>
                <th style="text-align: center;width: 100px">Seleccionar</th>
            </tr>
        </thead>
        <tbody>
            <%
                List<ExperienciaLaboral> lst = crud.mostrarExperienciaLaboral();
                for (ExperienciaLaboral ep : lst) {
            %>
            <tr class="table-primary">
                <td><%=ep.getIdExperienciaLaboral()%></td>
                <td><%=ep.getNombreEmpresa()%></td>
                <td><%=ep.getNombreJefe()%></td>
                <td><%=ep.getTelefonoJefe()%></td>
                <td><%=ep.getPuesto()%></td>
                <td><%=ep.getTipoContrato()%></td>
                <td><%=ep.getDesde()%></td>
                <td><%=ep.getHasta()%></td>
                <td><%=ep.getIdEmpleador() %></td>
                <td><a href="javascript:cargarExperienciaLaboral(<%=ep.getIdExperienciaLaboral()%>,
                       '<%=ep.getNombreEmpresa()%>','<%=ep.getNombreJefe()%>','<%=ep.getTelefonoJefe()%>',
                       '<%=ep.getPuesto()%>','<%=ep.getDesde()%>','<%=ep.getHasta()%>',
                       '<%=ep.getTipoContrato()%>','<%=ep.getIdEmpleador()%>')">Seleccionar</a></td>
            </tr>
            <%
                }
            %>
        </tbody>
    </table>

</body>
</html>

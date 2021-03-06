<%-- 
    Document   : gestionarOfertaEmpleo
    Created on : 10-16-2017, 03:04:56 PM
    Author     : Karen Escobar, David Sarmiento,
--%>

<%@page import="com.modelo.CrudAreaProfesional"%>
<%@page import="com.modelo.AreaProfesional"%>
<%@page import="com.modelo.OfertaEmpleo"%>
<%@page import="com.modelo.Empresa"%>
<%@page import="com.modelo.Departamento"%>
<%@page import="com.modelo.Pais"%>
<%@page import="java.util.List"%>
<%@page import="com.modelo.CrudEmpresa"%>
<%@page import="com.modelo.CrudDepartamento"%>
<%@page import="com.modelo.CrudPais"%>
<%@page import="com.modelo.CrudOfertaEmpleo"%>
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
        <title>Gestionar Oferta de Empleo</title>
    </head>
    <%        CrudOfertaEmpleo crud = new CrudOfertaEmpleo();
        CrudPais crudp = new CrudPais();
        CrudDepartamento crudd = new CrudDepartamento();
        CrudEmpresa crude = new CrudEmpresa();
        CrudAreaProfesional cruda = new CrudAreaProfesional();
    %>
    <body>
        <jsp:include page="menuGestionar.jsp"/>
        <br>
        <div class="p-2 mb-1 bg-light text-black"><center><h1>Registro de Oferta de Empleo</h1></center></div>
        <br>
        <div class="container">
            <form action="procesarOfertaEmpleo" method="POST" name="frmOferta">
                <label for="idoferta" class="col-sm-5 col-form-label"><strong>Id</strong></label>
                <div class="col-sm-4">
                    <input type="text" class="form-control" id="txtIdOferta" name="txtIdOferta" placeholder="Id de Oferta de Empleo" value="0" readonly>
                </div>
                <div class="row">
                    <div class="col">
                        <label for="puesto" class="col-sm-4 col-form-label"><strong>Puesto Vacante</strong></label>
                        <div class="col-sm-8">
                            <input type="text" class="form-control" id="txtPuestoVacante" name="txtPuesto" placeholder="Puesto Vacante">
                        </div> 
                    </div>
                    <div class="col">
                        <div class="form-group row">
                            <label for="IdTipoContrato" class="col-sm-4 form-label"><strong>Tipo de Contratatación</strong></label>
                            <div class="col-sm-5">
                                <select class="custom-select mb-2 mr-sm-2 mb-sm-0" id="lstContratacion" name="lstContratacion" >
                                    <option>Seleccionar</option>
                                    <option>Tiempo Completo</option>
                                    <option>Por horas</option>
                                </select>
                            </div>
                        </div>
                    </div>
                    <div class="w-100"></div>
                    <div class="col">
                        <br>
                        <div class="form-group row">
                            <label for="genero" class="col-sm-4 col-form-label"><strong>Genero</strong></label>
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
                    </div>
                    <div class="col">
                        <div class="form-group row">
                            <label for="cantidad" class="col-sm-4 col-form-label"><strong>Cantidad De Vacante</strong></label>
                            <div class="col-sm-5">
                                <input type="number" class="form-control" id="txtCanti" name="txtCanti" required="true" placeholder="Cantidad de Puesto Vacante" max="" min="1">
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col">
                        <div class="form-group row">
                            <label for="edad" class="col-sm-4 col-form-label"><strong>Edad requerida</strong></label>
                            <div class="col-sm-5">
                                <input type="number" class="form-control" id="txtEdad" name="txtEdad" required="true" placeholder="Edad Requerida" max="65" min="18">
                            </div>
                        </div>
                    </div>
                    <div class="col">
                        <div class="form-group row">
                            <label for="salario" class="col-sm-4 col-form-label"><strong>Salario</strong></label>
                            <div class="col-sm-5">
                                <input type="text" class="form-control" id="txtSalario" name="txtSalario"placeholder="Salario $0,000.00">
                            </div>
                        </div>
                    </div>
                    <div class="w-100"></div>
                    <div class="col">
                        <div class="form-group row">
                            <label for="lstpais" class="col-sm-4 col-form-label"><strong>Pais</strong></label>
                            <div class="col-sm-5">
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
                    </div>
                    <div class="col">
                        <div class="form-group row">
                            <label for="lstDepa" class="col-sm-4 col-form-label"><strong>Departamento</strong></label>
                            <div class="col-sm-5">
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
                    </div>
                </div>
                <div class="form-group">
                    <label for="descripcion"><strong>Descripción de Oferta</strong></label>
                    <textarea class="form-control" id="txtDescripcion" name="txtDescripcion" rows="2"></textarea>
                </div>       
                <div class="form-group row">
                    <label for="experiencia" class="col-sm-2 col-form-label"><strong>Experiencia</strong></label>
                    <label class="custom-control custom-radio">
                        <input type="radio" name="experiencia" value="Con" class="custom-control-input" checked="">
                        <span class="custom-control-indicator"></span>
                        <span class="custom-control-description">Con Experiencia</span>
                    </label>
                    <label class="custom-control custom-radio">
                        <input type="radio" name="experiencia" value="Sin" class="custom-control-input">
                        <span class="custom-control-indicator"></span>
                        <span class="custom-control-description">Sin Experiencia</span>
                    </label>
                </div>


        </div>
    <center>
        <div class="btn-group" role="group" aria-label="Basic example">
            <input type="submit" name="btnInsertar" class="btn btn-success" value="Insertar">
            <input type="submit" name="btnModificar" class="btn btn-warning" value="Modificar" onclick="Modificar()">
            <input type="submit" name="btnEliminar"  class="btn btn-danger" value="Eliminar" onclick="Eliminar()">
            <input type="reset" name="btnLimpiar" class="btn btn-secondary" value="Limpiar">
        </div>
    
</form>
</center><br>
</div>
<table id="grid" class="table table-bordered" style="text-align: center">
    <thead class="thead-inverse">
        <tr>
            <th style="text-align: center">Id Oferta</th>
            <th style="text-align: center">Puesto Vacante</th>
            <th style="text-align: center">Tipo de Contratación</th>
            <th style="text-align: center">Nivel de Experiencia</th>
            <th style="text-align: center">Genero</th>
            <th style="text-align: center">Edad</th>
            <th style="text-align: center">Salario</th>
            <th style="text-align: center">Empresa</th>
            <th style="text-align: center">Pais</th>
            <th style="text-align: center">Departamento</th>
            <th style="text-align: center">Descripcion</th>
            <th style="text-align: center">Seleccionar</th>
        </tr>
    </thead>
    <tbody>
        <%
            List<OfertaEmpleo> lst4 = crud.mostrarOfertaEmpleo();
            for (OfertaEmpleo o : lst4) {
        %>
        <tr class="table-primary">
            <td><%=o.getIdOfertaEmpleo()%></td>
            <td><%=o.getPuestoVacante()%></td>
            <td><%=o.getTipoContratacion()%></td>
            <td><%=o.getNivelExperiencia()%></td>
            <td><%=o.getGenero()%></td>
            <td><%=o.getEdad()%></td>
            <td><%=o.getSalario()%></td>
            <td><%=o.getIdEmpresa()%></td>
            <td><%=o.getIdPais()%></td>
            <td><%=o.getIdDepartamento()%></td>
            <td><%=o.getDescripcionOferta()%></td>
            <td><a class="badge badge-primary" href="javascript:cargarOfertal(<%=o.getIdOfertaEmpleo()%>,
                   '<%=o.getPuestoVacante()%>','<%=o.getTipoContratacion()%>',
                   '<%=o.getGenero()%>','<%=o.getEdad()%>','><%=o.getSalario()%>',
                   '<%=o.getIdEmpresa()%>','<%=o.getIdPais()%>','<%=o.getIdDepartamento()%>',
                   '<%=o.getDescripcionOferta()%>','<%=o.getNivelExperiencia()%>')">Seleccionar</a></td>
        </tr>
        <%
            }
        %>
    </tbody>
</table>
</body>
</html>

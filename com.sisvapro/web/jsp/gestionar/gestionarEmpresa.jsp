<%-- 
    Document   : empresa
    Created on : 10-06-2017, 05:37:08 PM
    Author     : Karen Escobar, David Sarmiento, Carlos Lopez
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
        CrudEmpresa crude = new CrudEmpresa();
        CrudPais crudp = new CrudPais();
        CrudDepartamento crudd = new CrudDepartamento();
        CrudSectorEmpresarial cruds = new CrudSectorEmpresarial();
        String imagen = null;
    %>
    <body> 
        <jsp:include page="menuGestionar.jsp"/>
    <center>
        <br>
        <div class="p-1 mb-1 bg-light text-black"><h1>Registro de Empresa</h1></div>
        
        <br>
        <div class="container">
            <div id="image" style="max-width: 20%;max-height: 20%;"></div>
            <form action="procesarEmpresa" method="POST" name="frmEmpresa" enctype="multipart/form-data">
                
                <div class="form-group row">
                    <label for="idempresa" class="col-sm-2 col-form-label"><strong>Id Empresa</strong></label>
                    <div class="col-sm-3">
                        <input type="text" class="form-control" id="txtIdEmpresa" name="txtIdEmpresa"placeholder="Id Empresa" value="0" readonly>
                    </div>
                </div>

                <div class="form-group row">
                    <label for="idusuario" class="col-sm-2 col-form-label"><strong>Id usuario</strong></label>
                    <div class="col-sm-3">
                        <input type="text" class="form-control" id="txtIdUsuario" name="txtIdUsuario"placeholder="Id Usuario">
                    </div>
                </div>

                <div class="form-group row">
                    <label for="nombreEmpresa" class="col-sm-2 col-form-label"><strong>Nombre de la Empresa</strong></label>
                    <div class="col-sm-5">
                        <input type="text" class="form-control" id="txtNombre" name="txtNombre" required="true" placeholder="Nombre de la Empresa">
                    </div>
                </div> 
                <div class="form-group row">

                    <label for="razonsocial" class="col-sm-2 col-form-label"><strong>Razón Social</strong></label>
                    <div class="col-sm-5">
                        <input type="text" class="form-control" id="txtRazon" name="txtRazon" required="true" placeholder="Razón Social de la Empresa">
                    </div>
                </div> 
                <div class="form-group row">
                    <label for="nit" class="col-sm-2 col-form-label"><strong>NIT</strong></label>
                    <div class="col-sm-5">
                        <input type="text" class="form-control" id="txtNit" name="txtNit" required="true" placeholder="############-##">
                    </div>
                </div> 
                <div class="form-group row">
                    <label for="DIRECCION" class="col-sm-2 col-form-label"><strong>Dirección de la Empresa</strong></label>
                    <div class="col-sm-10">
                        <textarea class="form-control" id="txtDireccion" required="true" name="txtDireccion" rows="1"></textarea>
                    </div>
                </div>
                <div class="form-group row">
                    <label for="lstpais" class="col-sm-2 col-form-label"><strong>Pais</strong></label>
                    <div class="col-auto">
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

                <div class="form-group row">
                    <label for="lstDepa" class="col-sm-2 col-form-label"><strong>Departamento</strong></label>
                    <div class="col-auto">
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

                <div class="form-group row">
                    <label for="logo" class="col-sm-2 col-form-label"><strong>Lodo de la Empresa</strong></label>
                    <div class="col-auto">
                        <input type="file" class="form-control-file" id="logo" name="logo">
                        <input type="text" id="logo2" name="logo2" style="display: none;">
                    </div>
                </div>

                <div class="form-group row">
                    <label for="pagina" class="col-sm-2 col-form-label"><strong>Pagina Web</strong></label>
                    <div class="col-sm-4">
                        <input type="text" class="form-control" id="txtPagina" name="txtPagina" placeholder="Página Web de la Empresa">
                    </div>
                </div> 
                <div class="form-group row">
                    <label for="sector" class="col-sm-2 col-form-label"><strong>Sector Empresarial</strong></label>
                    <div class="col-auto">
                        <select class="custom-select mb-2 mr-sm-2 mb-sm-0" id="idUsuario" name="lstSector" >
                            <%
                                List<SectorEmpresarial> lst3 = cruds.mostrarSectorEmpresarial();
                                for (SectorEmpresarial s : lst3) {
                            %>

                            <option value="<%=s.getIdSectorEmpresarial()%>"><%=s.getNombreSectorEmpresarial()%></option>
                            <%
                                }
                            %>
                        </select>
                    </div>
                </div>    
                     
                <div class="row">
                    <div class="col-auto">
                        <input type="submit" name="btnInsertar" class="btn btn-success" value="Insertar">
                    </div>
                    <div class="col-auto">
                        <input type="submit" name="btnModificar" class="btn btn-warning" value="Modificar" onclick="Modificar()"> 
                    </div>
                    <div class="col-auto">
                        <input type="submit" name="btnEliminar" class="btn btn-danger" value="Eliminar" onclick="Eliminar()">    
                    </div>
                    <div class="col-auto">
                        <input type="reset" name="btnLimpiar" class="btn btn-secondary" value="Limpiar" onclick="eliminarElemento()">           
                    </div>
                </div>  

            </form>
        </div>

        <br>
        <div class="table table-responsive" >
        <table id="grid" class="table table-responsive table-bordered" style="text-align: center">
            <thead  class="thead-inverse">
                <tr>
                    <th style="text-align: center">ID Empresa</th>
                    <th style="text-align: center">Nombre de la Empresa</th>
                    <th style="text-align: center">Razón Social</th>
                    <th style="text-align: center">Nit</th>
                    <th style="text-align: center">Dirección</th>
                    <th style="text-align: center">País</th>
                    <th style="text-align: center">Departamento</th>
                    <th style="text-align: center">Logo</th>
                    <th style="text-align: center">Página Web</th>
                    <th style="text-align: center">Sector Empresarial</th>
                    <th style="text-align: center">Id Usuario</th>
                    <th style="text-align: center">Seleccionar</th>
                </tr>
            </thead>
            <tbody>
                <%
                    List<Empresa> lst4 = crude.mostrarEmpresa();
                    for (Empresa em : lst4) {
                %>
                <tr class="table-primary">
                    <td><%=em.getIdEmpresa()%></td>
                    <td><%=em.getNombreEmpresa()%></td>
                    <td><%=em.getRazonSocial()%></td>
                    <td><%=em.getNit()%></td>
                    <td><%=em.getDireccion()%></td>
                    <%
                        List<Pais> lstpais = crudp.mostrarPais();
                        for (Pais pais : lstpais) {
                            if (em.getIdPais() == pais.getIdPais()) {
                    %>
                    <td><%=pais.getNombrePais()%></td>
                    <% }
                        }%>
                    <%
                        List<Departamento> lstdepa = crudd.mostrarDepartamento();
                        for (Departamento depar : lstdepa) {
                            if (em.getIdDepartamento() == depar.getIdDepartamento()) {
                    %>
                    <td><%=depar.getNombreDepartamento()%></td>
                    <% }
                        }%>
                    <td><%=em.getLogo()%></td>
                    <td><%=em.getPaginaWeb()%></td>
                    <%
                        CrudSectorEmpresarial crudsec = new CrudSectorEmpresarial();
                        List<SectorEmpresarial> lstsector = crudsec.mostrarSectorEmpresarial();
                        for (SectorEmpresarial sec : lstsector) {
                            if (em.getIdSectorEmpresiarial() == sec.getIdSectorEmpresarial()) {
                    %>
                    <td><%=sec.getNombreSectorEmpresarial()%></td>
                    <% }
                        }%>
                    <td><%=em.getIdUsuario()%></td>

                    <td><a href="javascript:cargarEmpresa(<%=em.getIdEmpresa()%>,
                           '<%=em.getNombreEmpresa()%>','<%=em.getRazonSocial()%>',
                           '<%=em.getNit()%>','<%=em.getDireccion()%>','<%=em.getIdPais()%>',
                           '<%=em.getIdDepartamento()%>','<%=em.getLogo()%>',
                           '<%=em.getPaginaWeb()%>','<%=em.getIdSectorEmpresiarial()%>','<%= em.getIdUsuario()%>')" onclick="cargarimagen('<%=em.getLogo()%>')">Seleccionar</a></td>
                </tr>
                <%
                    }
                %>
            </tbody>
        </table>
        </div>
    </center>
</body>
</html>

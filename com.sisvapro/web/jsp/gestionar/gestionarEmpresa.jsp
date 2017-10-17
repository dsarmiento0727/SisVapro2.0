<%-- 
    Document   : empresa
    Created on : 10-06-2017, 05:37:08 PM
    Author     : carlos xD
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="com.modelo.*" %>
<%@page import="java.util.*" %>
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
        
        <%
        if(request.getAttribute("valor")!=null){
        %>
        <script>
            alert('<%=request.getAttribute("valor")%>')
        </script>
        <%
        }
        %>
    </head>
    <%
        CrudEmpresa crude=new CrudEmpresa();
        CrudPais crudp=new CrudPais();
        CrudDepartamento crudd=new CrudDepartamento();
        CrudSectorEmpresarial cruds=new CrudSectorEmpresarial();
    %>
    <body> 
<jsp:include page="menuGestionar.jsp"/>
    <center>
        <div class="p-3 mb-2 bg-light text-black"><h1>Registro de Empresa</h1></div>
        <br><br>
        <table>
            <div class="container">
            <form action="" method="POST" name="frmEmpresa">
                 <div class="form-group row">
                    <label for="idempresa" class="col-sm-2 col-form-label">Id Empresa</label>
                <div class="col-sm-3">
                    <input type="text" class="form-control" id="txtIdEmpresa" name="txtIdEmpresa"placeholder="Id Empresa">
                </div>
                </div>
                <div class="form-group row">
                    <label for="nombreEmpresa" class="col-sm-2 col-form-label">Nombre de la Empresa</label>
                <div class="col-sm-5">
                    <input type="text" class="form-control" id="txtRazon" name="txtNombre"placeholder="Nombre de la Empresa">
                </div>
                </div> 
               <div class="form-group row">
                    <label for="razonsocial" class="col-sm-2 col-form-label">Razón Social</label>
                <div class="col-sm-5">
                    <input type="text" class="form-control" id="txtRazon" name="txtRazon"placeholder="Razón Social de la Empresa">
                </div>
                </div> 
                <div class="form-group row">
                    <label for="nit" class="col-sm-2 col-form-label">NIT</label>
                <div class="col-sm-5">
                    <input type="text" class="form-control" id="txtNit" name="txtNit"placeholder="############-##">
                </div>
                </div> 
                <div class="form-group row">
                    <label for="DIRECCION" class="col-sm-2 col-form-label">Dirección de la Empresa</label>
                <div class="col-sm-5">
                    <textarea class="form-control" id="txtDireccion" name="txtDireccion" rows="3"></textarea>
                </div>
                </div>
                <div class="col-10">
                <div class="form-group">
                     <label for="IdPais" class="col-form-label"><strong>Pais</strong></label>

                    <select class="custom-select mb-2 mr-sm-2 mb-sm-0" id="lstPais" name="lstPais">
                            <option>Seleccionar</option>
                        <%
                            List<Pais> lst=crudp.mostrarPais();
                            for(Pais pa:lst){
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
                            List<Departamento> lst2=crudd.mostrarDepartamento();
                            for(Departamento d:lst2){
                        %>
                                    <option value="<%=d.getIdDepartamento()%>"><%=d.getNombreDepartamento()%></option>
                        <%
                            }
                        %>
                        </select>
                </div>
                        </div>
            <div class="form-group"> 
                <label for="logo">Logo de la Empresa</label>
                <input type="file" class="form-control-file" id="logo" name="logo">
            </div>
                <div class="form-group row">
                    <label for="pagina" class="col-sm-2 col-form-label">Pagina Web</label>
                <div class="col-sm-4">
                    <input type="text" class="form-control" id="txtPagina" name="txtPagina"placeholder="Página Web de la Empresa">
                </div>
                </div> 
                <div class="form-row align-items-center">
                <div class="col-auto">
                  <label class="mr-sm-2" for="idSector">Sector Empresarial</label>
                  <select class="custom-select mb-2 mr-sm-2 mb-sm-0" id="idUsuario" name="lstSector" >
                  <%
                        List<SectorEmpresarial> lst3=cruds.mostrarSectorEmpresarial();
                        for(SectorEmpresarial s:lst3){
                  %>
                  
                  <option value="<%=s.getIdSectorEmpresarial()%>"><%=s.getNombreSectorEmpresarial()%></option>
                            <%
                            }
                            %>
                  </select>
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
        <br>
        <table id="grid" class="table table-bordered" style="text-align: center">
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
                    <th style="text-align: center">Seleccionar</th>
                </tr>
            </thead>
            <tbody>
                <%
                List<Empresa> lst4=crude.mostrarEmpresa();
                for(Empresa em:lst4){
                %>
                <tr class="table-primary">
                    <td><%=em.getIdEmpresa()%></td>
                    <td><%=em.getNombreEmpresa()%></td>
                    <td><%=em.getRazonSocial()%></td>
                    <td><%=em.getNit()%></td>
                    <td><%=em.getDireccion()%></td>
                    <td><%=em.getIdPais()%></td>
                    <td><%=em.getIdDepartamento()%></td>
                    <td><%=em.getLogo()%></td>
                    <td><%=em.getPaginaWeb()%></td>
                    <td><%=em.getIdSectorEmpresiarial()%></td>
                    <td><a href="javascript:cargarEmpresa(<%=em.getIdEmpresa()%>,
                           '<%=em.getNombreEmpresa()%>','<%=em.getRazonSocial()%>',
                           '<%=em.getNit()%>','<%=em.getDireccion()%>','<%=em.getIdPais()%>',
                           '<%=em.getIdDepartamento()%>','<%=em.getLogo()%>',
                           '<%=em.getPaginaWeb()%>','<%=em.getIdSectorEmpresiarial()%>')">Seleccionar</a></td>
                </tr>
                <%
                }
                %>
            </tbody>
        </table>
        </center>
    </body>
</html>

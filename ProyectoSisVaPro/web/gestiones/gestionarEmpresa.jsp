<%-- 
    Document   : empresa
    Created on : 10-06-2017, 05:37:08 PM
    Author     : carlos
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="com.modelo.*" %>
<%@page import="java.util.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css" integrity="sha384-/Y6pD6FV/Vv2HJnA6t+vslU6fwYXjCFtcEpHbNJ0lyAFsXTsjBbfaDjzALeQsN6M" crossorigin="anonymous">
        <link rel="stylesheet" type="text/css" href="CSS/style.css">
        <title>Gestionar Empresa</title>
        <script src="JavaScript/Procesos.js"></script>
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
        CrudEmpresa crudE=new CrudEmpresa();
        CrudUsuario crudU= new CrudUsuario();
    %>
    <body>
        <br><br><br>
    <center>
        <div class="p-3 mb-2 bg-light text-black"><h1>Registro de Empresa</h1></div>
        <br><br>
        <table>
            <div class="container">
            <form action="procesarEmpresa" method="POST" name="frmEmpresa">
                 <div class="form-group row">
                    <label for="idempresa" class="col-sm-2 col-form-label">Id Empresa</label>
                <div class="col-sm-3">
                    <input type="text" class="form-control" id="txtIdEmpresa" name="txtIdEmpresa"placeholder="Id Empresa">
                </div>
                </div>
               <div class="form-group row">
                    <label for="nombrejuridico" class="col-sm-2 col-form-label">Nombre Juridico</label>
                <div class="col-sm-5">
                    <input type="text" class="form-control" id="txtNombreJ" name="txtNombreJ"placeholder="Nombre Juridico de la Empresa">
                </div>
                </div> 
                <div class="form-group row">
                    <label for="nombrecomercial" class="col-sm-2 col-form-label">Nombre Comercial</label>
                <div class="col-sm-5">
                    <input type="text" class="form-control" id="txtNombreC" name="txtNombreC"placeholder="Nombre Comercial de la Empresa">
                </div>
                </div> 
                <div class="form-group row">
                    <label for="giro" class="col-sm-2 col-form-label">Giro</label>
                <div class="col-sm-4">
                    <input type="text" class="form-control" id="txtGiro" name="txtGiro"placeholder="Giro Comercial de la Empresa">
                </div>
                </div> 
               <div class="form-group row">
                    <label for="fecha" class="col-sm-2 col-form-label">Fecha de Inscripción</label>
                <div class="col-sm-3">
                    <input type="date" class="form-control" id="txtFechaInscripcion" name="txtFechaInscripcion">
                </div>
                </div> 
                <div class="form-group row">
                    <label for="nIT" class="col-sm-2 col-form-label">NIT</label>
                <div class="col-sm-5">
                    <input type="text" class="form-control" id="txtNIT" name="txtNIT"placeholder="############-##">
                </div>
                </div> 
                <div class="form-group row">
                    <label for="DIRECCION" class="col-sm-2 col-form-label">Dirección de la Empresa</label>
                <div class="col-sm-5">
                    <textarea class="form-control" id="txtDireccion" name="txtDireccion" rows="3"></textarea>
                </div>
                </div>
                <div class="form-row align-items-center">
                <div class="col-auto">
                  <label class="mr-sm-2" for="idUsuario">Usuario</label>
                  <select class="custom-select mb-2 mr-sm-2 mb-sm-0" id="idUsuario" name="lstUsuario" >
                  <%
                        List<Usuario> lst1=crudU.mostrarUsuario();
                        for(Usuario u:lst1){
                  %>
                  
                  <option value="<%=u.getIdUsuario()%>"><%=u.getUserName()%></option>
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
                            <input type="submit" name="btnModificar" class="btn btn-warning" value="Modificar">
                            <input type="submit" name="btnEliminar"  class="btn btn-danger" value="Eliminar">
                            <input type="reset" name="btnLimpiar" class="btn btn-secondary" value="Limpiar">
                        </div>
                    </td>
                </tr>
            </form>
            </div>
        </table>
        <br>
        <table class="table table-bordered" style="text-align: center; width: 1200px">
            <thead  class="thead-inverse">
                <tr>
                    <th style="text-align: center">ID Empresa</th>
                    <th style="text-align: center">Nombre Juridico</th>
                    <th style="text-align: center">Nombre Comercial</th>
                    <th style="text-align: center">Giro</th>
                    <th style="text-align: center">Fecha de Inscripcion</th>
                    <th style="text-align: center">NIT</th>
                    <th style="text-align: center">Dirección</th>
                    <th style="text-align: center">Usuario</th>
                    <th style="text-align: center">Seleccionar</th>
                </tr>
            </thead>
            <tbody>
                <%
                List<Empresa> lst2=crudE.mostrarEmpresa();
                for(Empresa em:lst2){
                %>
                <tr class="table-primary">
                    <td><%=em.getIdEmpresa()%></td>
                    <td><%=em.getNombreJuridico()%></td>
                    <td><%=em.getNombreComercial()%></td>
                    <td><%=em.getGiro()%></td>
                    <td><%=em.getFechaInscripcion()%></td>
                    <td><%=em.getNit()%></td>
                    <td><%=em.getDireccion()%></td>
                    <td><%=em.getIdUsuario()%></td>
                    <td><a href="javascript:cargarEmpresa(<%=em.getIdEmpresa()%>,
                           '<%=em.getNombreJuridico()%>','<%=em.getNombreComercial()%>',
                           '<%=em.getGiro()%>','<%=em.getFechaInscripcion()%>',
                           '<%=em.getNit()%>','<%=em.getDireccion()%>',
                           '<%=em.getIdUsuario()%>')">Seleccionar</a></td>
                </tr>
                <%
                }
                %>
            </tbody>
        </table>
        </center>
    </body>
</html>

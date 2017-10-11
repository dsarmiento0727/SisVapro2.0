<%-- 
    Document   : publicista
    Created on : 10-06-2017, 06:16:58 PM
    Author     : carlos
--%>

<%@page import="com.modelo.Empresa"%>
<%@page import="com.modelo.CrudEmpresa"%>
<%@page import="com.modelo.Publicista"%>
<%@page import="java.util.List"%>
<%@page import="com.modelo.CrudPublicista"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css" integrity="sha384-/Y6pD6FV/Vv2HJnA6t+vslU6fwYXjCFtcEpHbNJ0lyAFsXTsjBbfaDjzALeQsN6M" crossorigin="anonymous">
        <link rel="stylesheet" type="text/css" href="CSS/style.css">
        <title>Gestionar Publicista</title>
        <script src="JavaScript/Procesos.js"></script>
    </head>
    <%
    CrudPublicista crud=new CrudPublicista();
    CrudEmpresa crude=new CrudEmpresa();
    %>
  
    <body>
        <br><br>
        <center>
            <div class="p-3 mb-2 bg-light text-black"><h1>Registro de Publicista</h1></div>
        </center>
        <table>
            <form action="procesarPublicista" method="POST" name="frmPublicista">
                <div class="container">
                    <div class="row">
                        <div class="col align-self-start">
                            <div class="row justify-content-start">
                                    <div class="col-4">
                                        <div class="form-group">
                                            <label for="IdPublicista" class="col-form-label">Id Publicista</label>
                                            <input type="text" class="form-control" id="txtIdPublicista" name="txtIdPublicista" placeholder="Id Contratador">
                                        </div>
                                    </div>
                            </div>
                            <div class="form-row">
                                <div class="form-group col-md-6">
                                    <label for="NOMBRES" class="col-form-label">Nombres</label>
                                    <input type="text" class="form-control" id="txtNombres" name="txtNombres" placeholder="Nombres">
                                </div>
                                <div class="form-group col-md-6">
                                    <label for="apellidos" class="col-form-label">Apellidos</label>
                                    <input type="text" class="form-control" id="txtApellidos" name="txtApellidos" placeholder="Apellidos">
                                </div>
                            </div>
                            <div class="col-4">
                                <div class="form-group">
                                    <label for="correor" class="col-form-label">Correo Electronico</label>
                                    <input type="email" class="form-control" id="txtCorreo" name="txtCorreo" placeholder="nombre@ejemplo.com">
                                </div>
                            </div>
                  <label class="mr-sm-2" for="idEmpresa">Empresa</label>
                  <select class="custom-select mb-2 mr-sm-2 mb-sm-0" id="lstEmpresa" name="lstEmpresa" >
                             <%
                                List<Empresa> lst1 = crude.mostrarEmpresa();
                                for (Empresa em : lst1) {
                            %>

                            <option value="<%=em.getIdEmpresa()%>"><%=em.getNombreComercial()%></option>

                            <%
                                }
                            %>
                  </select>   
                </div>
                        </div>
                    <div class="row justify-content-center">
                        <div class="btn-group" role="group" aria-label="Basic example">
                            
                                    <input type="submit" name="btnInsertar" class="btn btn-success" value="Insertar">
                                    <input type="submit" name="btnModificar" class="btn btn-warning" value="Modificar">
                                    <input type="submit" name="btnEliminar"  class="btn btn-danger" value="Eliminar">
                                    <input type="reset" name="btnLimpiar" class="btn btn-secondary" value="Limpiar">
                            
                        </div>
                    </div>    
                </div>  
            </form>
       </table>
        <br>
        <center>
        <table class="table table-bordered" style="text-align: center" >
            <thead class="thead-inverse">
                <tr>
                    <th scope="row" style="text-align: center; width: 150px">Id Publicita</th>
                    <th style="text-align: center">Nombres</th>
                    <th style="text-align: center">Apellidos</th>
                    <th style="text-align: center; width: 300px">Correo Electronico</th>
                    <th style="text-align: center; width: 150px">Empresa</th>
                    <th style="text-align: center; width: 200px">Seleccionar</th>
                </tr>
            </thead>
            <tbody>
                <%
                    List<Publicista> lst=crud.mostrarPublicista();
                    for(Publicista pu:lst){
                %>
                <tr class="table-info">
                    <td><%=pu.getIdPublicista()%></td>
                    <td><%=pu.getNombresP()%></td>
                    <td><%=pu.getApellidosP()%></td>
                    <td><%=pu.getCorreoEllectronicoP()%></td>
                    <td><%=pu.getIdEmpresa()%></td>
                    <td><a href="javascript:cargarPublicista(<%=pu.getIdPublicista()%>,
                           '<%=pu.getNombresP()%>','<%=pu.getApellidosP()%>',
                          '<%=pu.getIdEmpresa()%>')">Seleccionar</a></td>
                </tr>
                <%
                    }
                %>
            </tbody
        </table>
        </center>
    </body>
</html>

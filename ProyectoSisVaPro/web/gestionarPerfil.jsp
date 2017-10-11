<%-- 
    Document   : perfil
    Created on : 10-06-2017, 06:47:30 PM
    Author     : carlos
--%>

<%@page import="com.modelo.Profesion"%>
<%@page import="com.modelo.Profesion"%>
<%@page import="com.modelo.Trabajo"%>
<%@page import="com.modelo.Trabajo"%>
<%@page import="com.modelo.Idioma"%>
<%@page import="com.modelo.Habilidad"%>
<%@page import="com.modelo.Usuario"%>
<%@page import="com.modelo.Municipio"%>
<%@page import="com.modelo.Municipio"%>
<%@page import="com.modelo.Perfil"%>
<%@page import="com.modelo.Perfil"%>
<%@page import="com.modelo.Departamento"%>
<%@page import="com.modelo.Pais"%>
<%@page import="java.util.List"%>
<%@page import="com.modelo.CrudUsuario"%>
<%@page import="com.modelo.CrudTrabajo"%>
<%@page import="com.modelo.CrudProfesion"%>
<%@page import="com.modelo.CrudHabilidad"%>
<%@page import="com.modelo.CrudIdioma"%>
<%@page import="com.modelo.CrudMunicipio"%>
<%@page import="com.modelo.CrudDepartamento"%>
<%@page import="com.modelo.CrudPais"%>
<%@page import="com.modelo.CrudPerfil"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Gestionar Perfil</title>
        <script src="JavaScript/Procesos.js"></script>
    </head>
    <%
    CrudPerfil crud=new CrudPerfil();
    CrudPais crudpa=new CrudPais();
    CrudDepartamento crudd=new CrudDepartamento();
    CrudMunicipio crudm=new CrudMunicipio();
    CrudIdioma crudi=new CrudIdioma();
    CrudHabilidad crudh=new CrudHabilidad();
    CrudProfesion crudpro=new CrudProfesion();
    CrudTrabajo crudtr=new CrudTrabajo();
    CrudUsuario crudu=new CrudUsuario();
    %>
    <body>
        <center>
            <div class="p-3 mb-2 bg-light text-black"><h1>Registro de Perfil</h1></div>
        </center>
        <table>
            <form action="procesarPerfil" method="POST" name="frmPerfil">
                <div class="container">
                    <div class="row">
                        <div class="col align-self-start">
                            <div class="row justify-content-start">
                                    <div class="col-4">
                                        <div class="form-group">
                                            <label for="Idperfil" class="col-form-label">Id Perfil</label>
                                            <input type="text" class="form-control" id="txtIdPerfil" name="txtIdPerfil" placeholder="Id Perfil">
                                        </div>
                                    </div>
                            </div>
                            <div class="form-row">
                                <div class="form-group col-md-6">
                                    <label for="nombres" class="col-form-label">Nombres</label>
                                    <input type="text" class="form-control" id="txtNombres" name="txtNombres" placeholder="Nombres">
                                </div>
                                <div class="form-group col-md-6">
                                    <label for="apellidos" class="col-form-label">Apellidos</label>
                                    <input type="text" class="form-control" id="txtApellidos" name="txtApellidos" placeholder="Apellidos">
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
                            <div class="col-4">
                                        <div class="form-group">
                                            <label for="fecha" class="col-form-label">Fecha de Nacimiento</label>
                                            <input type="date" class="form-control" id="txtFechaNac" name="txtFechaNac" >
                                        </div>
                                    </div>
                            <div class="col-4">
                                        <div class="form-group">
                                            <label for="DUI" class="col-form-label">DUI</label>
                                            <input type="text" class="form-control" id="txtDui" name="txtIdPerfil" placeholder="########-#">
                                        </div>
                                    </div>
                            <div class="col-5">
                                <div class="form-group">
                                    <label for="NIT" class="col-form-label">NIT</label>
                                    <input type="text" class="form-control" id="txtNit" name="txtNit" placeholder="###">
                                </div>
                            </div>
                            <label class="mr-sm-2">Estado Civil</label>
                  <select class="custom-select mb-2 mr-sm-2 mb-sm-0" id="Estado" name="Estado" >
                            <option>Casado/a</option>
                            <option>Soltero/a</option>
                            <option>Unión Libre</option>
                  </select> 
                            <div class="col-4">
                                        <div class="form-group">
                                            <label for="direccion" class="col-form-label">Direccion actual</label>
                                            <input type="text" class="form-control" id="txtDireccion" name="txtDireccion" placeholder="Direccion actual donde reside">
                                        </div>
                            </div>
                           
                  <label class="mr-sm-2" for="idPais">Pais</label>
                  <select class="custom-select mb-2 mr-sm-2 mb-sm-0" id="lstPais" name="lstPais" >
                             <%
                                List<Pais> lst1 = crudpa.mostrarPais();
                                for (Pais pa : lst1) {
                            %>

                            <option value="<%=pa.getIdPais()%>"><%=pa.getNombrePais()%></option>

                            <%
                                }
                            %>
                  </select>   
                <label class="mr-sm-2" for="idDepartamento">Departamento</label>
                  <select class="custom-select mb-2 mr-sm-2 mb-sm-0" id="lstDepartamento" name="lstDepartamento" >
                             <%
                                List<Departamento> lst2 = crudd.mostrarDepartamento();
                                for (Departamento d : lst2) {
                            %>

                            <option value="<%=d.getIdDepartamento()%>"><%=d.getNombreDepartamento()%></option>

                            <%
                                }
                            %>
                  </select> 
                  <label class="mr-sm-2" for="idDepartamento">Municipio</label>
                  <select class="custom-select mb-2 mr-sm-2 mb-sm-0" id="lstMunicipio" name="lstDepartamento" >
                             <%
                                List<Municipio> lst3 = crudm.mostrarMunicipio();
                                for (Municipio m : lst3) {
                            %>

                            <option value="<%=m.getIdMunicipio()%>"><%=m.getNombreMunicipio()%></option>

                            <%
                                }
                            %>
                  </select> 
                  <label class="mr-sm-2" for="idUsuario"> Usuario</label>
                  <select class="custom-select mb-2 mr-sm-2 mb-sm-0" id="lstUsuario" name="lstUsuario" >
                             <%
                                List<Usuario> lst4 = crudu.mostrarUsuario();
                                for (Usuario u : lst4) {
                            %>

                            <option value="<%=u.getIdUsuario()%>"><%=u.getUserName()%></option>

                            <%
                                }
                            %>
                  </select> 
                  <label class="mr-sm-2" for="idhabilidad">Habilidad</label>
                  <select class="custom-select mb-2 mr-sm-2 mb-sm-0" id="lstHabilidad" name="lstHabilidad" >
                             <%
                                List<Habilidad> lst5 = crudh.mostrarHabilidad();
                                for (Habilidad h : lst5) {
                            %>

                            <option value="<%=h.getIdHabilidad()%>"><%=h.getNombreHabilidad()%></option>

                            <%
                                }
                            %>
                  </select> 
                  <label class="mr-sm-2" for="idIdioma">Idioma</label>
                  <select class="custom-select mb-2 mr-sm-2 mb-sm-0" id="lstIdioma" name="lstIdioma" >
                             <%
                                List<Idioma> lst6 = crudi.mostrarIdioma();
                                for (Idioma i : lst6) {
                            %>

                            <option value="<%=i.getIdIdioma()%>"><%=i.getNombreIdioma()%></option>

                            <%
                                }
                            %>
                  </select> 
                  <label class="mr-sm-2" for="idProfesion">Profesion</label>
                  <select class="custom-select mb-2 mr-sm-2 mb-sm-0" id="lstProfesion" name="lstProfesion" >
                             <%
                                List<Profesion> lst8 = crudpro.mostrarProfesion();
                                for (Profesion pro : lst8) {
                            %>

                            <option value="<%=pro.getIdProfesion()%>"><%=pro.getNombreProfesion()%></option>

                            <%
                                }
                            %>
                  </select> 
                  <label class="mr-sm-2" for="idTrabajo">Trabajo</label>
                  <select class="custom-select mb-2 mr-sm-2 mb-sm-0" id="lstTrabajo" name="lstTrabajo" >
                             <%
                                List<Trabajo> lst7 = crudtr.mostrarTrabajo();
                                for (Trabajo tra : lst7) {
                            %>

                            <option value="<%=tra.getIdTrabajo()%>"><%=tra.getNombreEmpresa()%></option>

                            <%
                                }
                            %>
                  </select>
                   <div class="col-4">
                                <div class="form-group">
                                    <label for="correor" class="col-form-label">Correo Electronico</label>
                                    <input type="email" class="form-control" id="txtCorreo" name="txtCorreoE" placeholder="nombre@ejemplo.com">
                                </div>
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
        <table class="table table-bordered" style="text-align: center; width: 1200px" >
            <thead class="thead-inverse">
                <tr>
                    <th scope="row" style="text-align: center">Id Perfil</th>
                    <th style="text-align: center">Foto</th>
                    <th style="text-align: center">Nombres</th>
                    <th style="text-align: center">Apellidos</th>
                    <th style="text-align: center">Género</th>
                    <th style="text-align: center">Fecha de Nacimiento</th>
                    <th style="text-align: center">DUI</th>
                    <th style="text-align: center">NIT</th>
                    <th style="text-align: center">Estado Civil</th>
                    <th style="text-align: center">Dirección</th>
                    <th style="text-align: center">Pais</th>
                    <th style="text-align: center">Departamento</th>
                    <th style="text-align: center">Municipio</th>
                    <th style="text-align: center">Usuario</th>
                    <th style="text-align: center">Habilidad</th>
                    <th style="text-align: center">Idioma</th>
                    <th style="text-align: center">Profesión</th>
                    <th style="text-align: center">Trabajo</th>
                    <th style="text-align: center">Email</th>
                    <th style="text-align: center">Seleccionar</th>
                </tr>
            </thead>
            <tbody>
                <%
                    List<Perfil> lstp=crud.mostrarPerfil();
                    for(Perfil per:lstp){
                %>
                <tr class="table-info">
                    <td><%=per.getIdPerfil()%></td>
                    <td><%=per.getFoto()%></td>
                    <td><%=per.getNombres()%></td>
                    <td><%=per.getApellidos()%></td>
                    <td><%=per.getGenero()%></td>
                    <td><%=per.getFechaNacimiento()%></td>
                    <td><%=per.getDui()%></td>
                    <td><%=per.getNit()%></td>
                    <td><%=per.getEstadoCivil()%></td>
                    <td><%=per.getDireccion()%></td>
                    <td><%=per.getIdPais()%></td>
                    <td><%=per.getIdDepartamento()%></td>
                    <td><%=per.getIdMunicipio()%></td>
                    <td><%=per.getIdUsuario()%></td>
                    <td><%=per.getIdHabilidad()%></td>
                    <td><%=per.getIdIdioma()%></td>
                    <td><%=per.getIdProfesion()%></td>
                    <td><%=per.getIdTrabajo()%></td>
                    <td><%=per.getCorreoElectronico()%></td>
                    <td><a href="javascript:cargarArea(<%=per.getIdPerfil()%>,
                           '<%=per.getNombres()%>')">Seleccionar</a></td>
                </tr>
                <%
                    }
                %>
            </tbody
        </table>
    </body>
</html>

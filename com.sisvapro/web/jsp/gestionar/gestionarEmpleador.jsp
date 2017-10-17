<%-- 
    Document   : perfil
    Created on : 10-06-2017, 06:47:30 PM
    Author     : carlos
--%>


<%@page import="com.modelo.Empleador"%>
<%@page import="com.modelo.CrudEmpleador"%>
<%@page import="com.modelo.AreaProfesional"%>
<%@page import="com.modelo.ExperienciaLaboral"%>
<%@page import="com.modelo.FormacionAcademica"%>
<%@page import="com.modelo.CrudExperienciaLaboral"%>
<%@page import="com.modelo.CrudAreaProfesional"%>
<%@page import="com.modelo.CrudFormacionAcademica"%>
<%@page import="com.modelo.Habilidad"%>
<%@page import="com.modelo.Usuario"%>
<%@page import="com.modelo.Departamento"%>
<%@page import="com.modelo.Pais"%>
<%@page import="java.util.List"%>
<%@page import="com.modelo.CrudUsuario"%>
<%@page import="com.modelo.CrudHabilidad"%>
<%@page import="com.modelo.CrudDepartamento"%>
<%@page import="com.modelo.CrudPais"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Gestionar Perfil</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css" integrity="sha384-/Y6pD6FV/Vv2HJnA6t+vslU6fwYXjCFtcEpHbNJ0lyAFsXTsjBbfaDjzALeQsN6M" crossorigin="anonymous">
        <link rel="stylesheet" type="text/css" href="../CSS/style.css">
        <link rel="stylesheet" type="text/css" href="CSS/style.css">
        <script src="../JavaScript/Procesos.js"></script>
    </head>
    <%
 
    CrudPais crudpa=new CrudPais();
    CrudDepartamento crudd=new CrudDepartamento();
    CrudFormacionAcademica crudf=new CrudFormacionAcademica();
    CrudHabilidad crudh=new CrudHabilidad();
    CrudAreaProfesional cruda=new CrudAreaProfesional();
    CrudExperienciaLaboral crude=new CrudExperienciaLaboral();
    CrudUsuario crudu=new CrudUsuario();
    CrudEmpleador crud=new CrudEmpleador();
    %>
    <body>
         <center>
            <div class="p-3 mb-2 bg-light text-black"><h1>Registro de Empleador</h1></div>
        </center>
        <table>
            <form action="" method="POST" name="frmEmpleador">
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
                <div class="col-4">
                    <div class="form-group">
                        <label for="direccion" class="col-form-label">Direccion actual</label>
                        <input type="text" class="form-control" id="txtDireccion" name="txtDireccion" placeholder="Direccion actual donde reside">
                    </div>
                </div>
                <div class="col-4">
                    <div class="form-group">
                        <label for="telefono" class="col-form-label">Telefono</label>
                        <input type="text" class="form-control" id="txtTelefono" name="txtTelefono" placeholder="Telefono celular o de casa">
                    </div>
                </div>
                            <div class="col-4">
                                <div class="form-group">
                                    <label for="correor" class="col-form-label">Correo Electronico</label>
                                    <input type="email" class="form-control" id="txtCorreo" name="txtCorreoE" placeholder="nombre@ejemplo.com">
                                </div>
                            </div>
                            <div class="col-4">
                                        <div class="form-group">
                                            <label for="fecha" class="col-form-label">Fecha de Nacimiento</label>
                                            <input type="date" class="form-control" id="txtFechaNac" name="txtFechaNac" >
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
                    <div class="col-4">
                        <div class="form-group">
                            <label for="anios" class="col-form-label">Años de Experiencia</label>
                            <input type="number" class="form-control" id="txtAnio" name="txtAnio" >
                        </div>
                    </div>
                            <div class="form-group"> 
                                <label for="foto">Foto de Perfil</label>
                                <input type="file" class="form-control-file" id="foto" name="foto">
                            </div>
                                
                            
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
                 
                  <label class="mr-sm-2" for="idFormacion">Formación Academica</label>
                  <select class="custom-select mb-2 mr-sm-2 mb-sm-0" id="lstFormacion" name="lstFormacion" >
                             <%
                                List<FormacionAcademica> lst6 = crudf.mostrarFormacionAcademica();
                                for (FormacionAcademica f : lst6) {
                            %>

                            <option value="<%=f.getIdFormacion()%>"><%=f.getCarrera()%></option>

                            <%
                                }
                            %>
                  </select> 
                  <label class="mr-sm-2" for="idExperiencia">Experiencia Laboral</label>
                  <select class="custom-select mb-2 mr-sm-2 mb-sm-0" id="lstProfesion" name="lstProfesion" >
                             <%
                                List<ExperienciaLaboral> lst8 = crude.mostrarExperienciaLaboral();
                                for (ExperienciaLaboral ex : lst8) {
                            %>

                            <option value="<%=ex.getIdExperienciaLaboral()%>"><%=ex.getNombreEmpresa()%></option>

                            <%
                                }
                            %>
                  </select> 
                  <label class="mr-sm-2" for="idarea">Area Profesional</label>
                  <select class="custom-select mb-2 mr-sm-2 mb-sm-0" id="lstArea" name="lstArea" >
                             <%
                                List<AreaProfesional> lst7 = cruda.mostrarAreaProfesional();
                                for (AreaProfesional a : lst7) {
                            %>

                            <option value="<%=a.getIdAreaProfesional()%>"><%=a.getNombreAreaProfesional()%></option>

                            <%
                                }
                            %>
                  </select>
                   
                        </div>
                    <div class="row justify-content-center">
                        <div class="btn-group" role="group" aria-label="Basic example">
                            
                                    <input type="submit" name="btnInsertar" class="btn btn-success" value="Insertar">
                                    <input type="submit" name="btnModificar" class="btn btn-warning" value="Modificar" onclick="Modificar()">
                                    <input type="submit" name="btnEliminar"  class="btn btn-danger" value="Eliminar" onclick="Eliminar()">
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
                    <th scope="row" style="text-align: center">Id Empleador</th>
                    <th style="text-align: center">Nombres</th>
                    <th style="text-align: center">Apellidos</th>
                    <th style="text-align: center">Dirección</th>
                    <th style="text-align: center">Telefono</th>
                    <th style="text-align: center">Email</th>
                    <th style="text-align: center">Fecha de Nacimiento</th>
                    <th style="text-align: center">Género</th>
                    <th style="text-align: center">Años de Experiencia</th>
                    <th style="text-align: center">Foto</th>
                    <th style="text-align: center">DUI</th>
                    <th style="text-align: center">NIT</th>
                    <th style="text-align: center">Nacionalidad</th>
                    <th style="text-align: center">Usuario</th>
                    <th style="text-align: center">Pais</th>
                    <th style="text-align: center">Departamento</th>
                    <th style="text-align: center">Habilidad</th>
                    <th style="text-align: center">Formacion</th>
                    <th style="text-align: center">Experiencia</th>
                    <th style="text-align: center">Area</th>
                    <th style="text-align: center">Seleccionar</th>
                </tr>
            </thead>
            <tbody>
                <%
                    List<Empleador> lste=crud.mostrarEmpleador();
                    for(Empleador em:lste){
                %>
                <tr class="table-info">
                    <td><%=em.getIdEmpleador()%></td>
                    <td><%=em.getNombres()%></td>
                    <td><%=em.getApellidos()%></td>
                    <td><%=em.getDireccion()%></td>
                    <td><%=em.getTelefono()%></td>
                    <td><%=em.getCorreoElectronico()%></td>
                    <td><%=em.getFechaNac()%></td>
                    <td><%=em.getGenero()%></td>
                    <td><%=em.getAniosExperiencia()%></td>
                    <td><%=em.getFotoPerfil()%></td>
                    <td><%=em.getDui()%></td>
                    <td><%=em.getNit()%></td>
                    <td><%=em.getNacionalidad()%></td>
                    <td><%=em.getIdUsuario()%></td>
                    <td><%=em.getIdPais()%></td>
                    <td><%=em.getIdDepartamento()%></td>
                    <td><%=em.getIdHabilidad()%></td>
                    <td><%=em.getIdFormacion()%></td>
                    <td><%=em.getIdExperienciaLaboral()%></td>
                    <td><%=em.getIdAreaProfesional()%></td>
                    
                    <td><a href="javascript:cargarEmpleador(<%=em.getIdEmpleador()%>,'<%=em.getNombres()%>',
                    '<%=em.getApellidos()%>','<%=em.getDireccion()%>','<%=em.getTelefono()%>',
                    '<%=em.getCorreoElectronico()%>','<%=em.getFechaNac()%>','<%=em.getGenero()%>',
                    '<%=em.getAniosExperiencia()%>','<%=em.getFotoPerfil()%>','<%=em.getDui()%>',
                    '<%=em.getNit()%>','<%=em.getNacionalidad()%>','<%=em.getIdUsuario()%>',
                    '<%=em.getIdPais()%>','<%=em.getIdDepartamento()%>','<%=em.getIdHabilidad()%>',
                    '<%=em.getIdFormacion()%>','<%=em.getIdExperienciaLaboral()%>',
                    '<%=em.getIdAreaProfesional()%>')">Seleccionar</a></td>
                </tr>
                <%
                    }
                %>
            </tbody
        </table>
    </body>
</html>

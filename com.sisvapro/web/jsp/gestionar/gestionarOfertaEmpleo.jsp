<%-- 
    Document   : gestionarOfertaEmpleo
    Created on : 10-16-2017, 03:04:56 PM
    Author     : Gerardo
--%>

<%@page import="com.modelo.Departamento"%>
<%@page import="com.modelo.Pais"%>
<%@page import="java.util.List"%>
<%@page import="com.modelo.CrudEmpresa"%>
<%@page import="com.modelo.CrudDepartamento"%>
<%@page import="com.modelo.CrudPais"%>
<%@page import="com.modelo.CrudOfertaEmpleo"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
         <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css" integrity="sha384-/Y6pD6FV/Vv2HJnA6t+vslU6fwYXjCFtcEpHbNJ0lyAFsXTsjBbfaDjzALeQsN6M" crossorigin="anonymous">
        <link rel="stylesheet" type="text/css" href="../../css/style.css">
        <link rel="stylesheet" type="text/css" href="../css/style.css">
        <script src="../../js/Procesos.js"></script>
        <title>Gestionar Oferta de Empleo</title>
    </head>
    <%
    CrudOfertaEmpleo crud=new CrudOfertaEmpleo();
    CrudPais crudp= new CrudPais();
    CrudDepartamento crudd=new CrudDepartamento();
    CrudEmpresa crude= new CrudEmpresa();
    %>
    <body>
        <br>
        <center>
            <div class="p-3 mb-2 bg-light text-black"><MARQUEE BEHAVIOR=ALTERNATE><h1>Registro de Oferta de Empleo</h1></marquee></div>
        <br><br>
        
         <table>
            <div class="container">
            <form action="" method="POST" name="frmOferta">
                <div class="form-group row">
                    <label for="idprofesion" class="col-sm-2 col-form-label"><strong>Id Oferta de Empleo</strong></label>
                <div class="col-sm-3">
                    <input type="text" class="form-control" id="txtIdOferta" name="txtIdOferta"placeholder="Id de Oferta de Empleo">
                </div>
                </div>
                <div class="form-group row">
                    <label for="puesto" class="col-sm-2 col-form-label"><strong>Puesto Vacante</strong></label>
                <div class="col-sm-5">
                    <input type="text" class="form-control" id="txtPuestoVacante" name="txtPuestoVacante"placeholder="Puesto Vacante">
                </div>
                    <label for="IdTipoContrato" class="col-form-label"><strong>Tipo de Contratatación</strong></label>
                        <select class="custom-select mb-2 mr-sm-2 mb-sm-0" id="lstContratacion" name="lstContratacion" >
                            <option>Seleccionar</option>
                            <option>Tiempo Completo</option>
                            <option>Por horas</option>
                        </select>
                </div>
            <div class="form-group row">
                <label for="idprofesion" class="col-sm-2 col-form-label"><strong>Genero</strong></label>
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
                <label for="edad" class="col-sm-2 col-form-label"><strong>Edad requerida</strong></label>
                <div class="col-sm-2">
                    <input type="number" class="form-control" id="txtEdad" name="txtEdad"placeholder="Edad Requerida" max="65" min="18">
                </div>
            </div>  
            <div class="form-group row">
                <label for="salario" class="col-sm-2 col-form-label"><strong>Salario</strong></label>
                <div class="col-sm-3">
                    <input type="text" class="form-control" id="txtSalario" name="txtSalario"placeholder="Salario $0,000.00">
                </div>
            </div>  
            
            <div class="form-group row">
            <div class="col-sm-2">     
                    <label for="IdPais" class="col-form-label"><strong>Pais</strong></label>
            </div>
            <div class="col-sm-4">
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
                <div class="col-sm-2">
                    <label for="IdPais" class="col-form-label"><strong>Departamento</strong></label>
                 </div>
                        <select class="custom-select mb-2 mr-sm-2 mb-sm-0" id="lstPais" name="lstPais">
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
        </center>
        <br>
    </body>
</html>

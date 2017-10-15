<%-- 
    Document   : gestionarExperienciaLaboral
    Created on : 10-15-2017, 12:58:11 AM
    Author     : Gerardo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css" integrity="sha384-/Y6pD6FV/Vv2HJnA6t+vslU6fwYXjCFtcEpHbNJ0lyAFsXTsjBbfaDjzALeQsN6M" crossorigin="anonymous">
        <link rel="stylesheet" type="text/css" href="../../css/style.css">
        <link rel="stylesheet" type="text/css" href="../css/style.css">
        <script src="../../js/Procesos.js"></script>
        <title>Gestionar Experiencia Laboral</title>
    </head>
    <%--
    <%
    CrudExperienciaLaboral crud=new CrudExperienciaLaboral();
    %>
    --%>
    <body>
    <center>
        <br><br>
        <div class="p-3 mb-2 bg-light text-black">
            <MARQUEE BEHAVIOR=ALTERNATE><h1>Registro de Experiencia Laboral</h1></marquee>
        </div>
    </center>    
            <div class="container">
            <form action="" method="post" name="frmAreaProfesional">
                <div class="col align-self-star">
                   <div class="row justify-content-star">
                        <div class="col-4">
                            <div class="form-group">
                                <label for="IdAreaProfesional" class="col-form-label">Id Area Profesional</label>
                                <input type="text" class="form-control" id="txtIdPublicista" name="txtIdAreaProfesional" placeholder="Id Area Profesional">
                            </div>
                        </div>
                   </div>
                    
                    <div class="form-row">
                        <div class="form-group col-md-5">
                            <label for="nombreEmpresa" class="col-form-label">Nombre de la Empresa</label>
                            <input type="text" class="form-control" id="txtNombreEmpresa" name="txtNombreEmpresa" placeholder="Nombre de la Empresa">
                        </div>
                    <div class="col align-self-center">
                    <div class="row justify-content-center">
                       <div class="form-group col-md-8">
                            <label for="puesto" class="col-form-label">Puesto</label>
                            <input type="text" class="form-control" id="txtPuesto" name="txtPuesto" placeholder="Puesto ">
                        </div>
                    </div>
                    </div>
                    </div>
                    
                    <div class="form-row">
                        <div class="form-group col-md-5">
                            <label for="desde" class="col-form-label">Desde</label>
                            <input type="date" class="form-control" id="txtNombreEmpresa" name="txtDesde">
                        </div>
                    <div class="col align-self-end">
                    <div class="row justify-content-center">
                       <div class="form-group col-md-8">
                            <label for="hasta" class="col-form-label">Hasta</label>
                            <input type="date" class="form-control" id="txtPuesto" name="txtHasta">
                        </div>
                    </div>
                    </div>
                    </div>
                    
                   <div class="col align-self-star">
                   <div class="row justify-content-star">
                        <div class="col-8">
                            <div class="form-group">
                                <label for="IdTipoContrato" class="col-form-label">Tipo de Contrato</label>
                                <select class="custom-select mb-2 mr-sm-2 mb-sm-0" id="lstTipoContrato" name="lstTipoContrato" >
                                    <option>Tiempo Completo</option>
                                    <option>Por horas</option>
                                    <option>Practicas</option>
                                </select>
                            </div>
                        </div>
                   </div>
                   </div>
                </div>
                </div>
       <center>
           <table>
               <tr>
                <div class="btn-group" role="group" aria-label="Basic example">
                    <td colspan="2">    
                            <input type="submit" name="btnInsertar" class="btn btn-success" value="Insertar">
                            <input type="submit" name="btnModificar" class="btn btn-warning" value="Modificar" onclick="Modificar()">
                            <input type="submit" name="btnEliminar"  class="btn btn-danger" value="Eliminar" onclick="Eliminar()">
                            <input type="reset" name="btnLimpiar" class="btn btn-secondary" value="Limpiar">
                    </td>
                </div>
                </tr>
            </form>
            </div>
        </table>
       </center>
    </body>
</html>

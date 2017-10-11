<%-- 
    Document   : catalogo
    Created on : 10-06-2017, 05:17:37 PM
    Author     : carlos, karenn Escobar,david sarmiento
--%>

<%@page import="com.modelo.Contratador"%>
<%@page import="com.modelo.Area"%>
<%@page import="com.modelo.CrudArea"%>
<%@page import="com.modelo.CrudContratador"%>
<%@page import="com.modelo.Catalogo"%>
<%@page import="java.util.List"%>
<%@page import="com.modelo.CrudCatalogo"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css" integrity="sha384-/Y6pD6FV/Vv2HJnA6t+vslU6fwYXjCFtcEpHbNJ0lyAFsXTsjBbfaDjzALeQsN6M" crossorigin="anonymous">
        <link rel="stylesheet" type="text/css" href="CSS/style.css">
        <title>Gestionar Catalogo</title>
        <script src="JavaScript/Procesos.js"></script>
    </head>
    <%
    CrudCatalogo crud=new CrudCatalogo();
    CrudContratador crudc=new CrudContratador();
    CrudArea cruda=new CrudArea();
    %>
    </head>
    <body>
        <br><br>
        <center>
            <div class="p-3 mb-2 bg-light text-black"><h1>Registro de Catalogo</h1></div>
        </center>
        <br><br>
        <table>
            <div class="container">
            <form action="procesarCatalogo" method="POST" name="frmContratador">
                <center>
                <div class="form-group row">
                    <label for="idcatalogo" class="col-sm-2 col-form-label">Id Catalogo</label>
                <div class="col-sm-2">
                    <input type="text" class="form-control" id="txtIdCatalogo" name="txtIdCatalogo"placeholder="Id Catalogo">
                </div>
                </div>
                <div class="form-group row">
                    <label for="nombre" class="col-sm-2 col-form-label">Nombre del Catalogo</label>
                <div class="col-sm-4">
                    <input type="text" class="form-control" id="txtNombre" name="txtNombre"placeholder="Catalogo">
                </div>
                </div>
                <div class="form-row align-items-center">
                <div class="col-auto">
                  <label class="mr-sm-2" for="idAarea">Area</label>
                  <select class="custom-select mb-2 mr-sm-2 mb-sm-0" id="lstArea" name="lstArea" >
                        <%
                        List<Area> lst1=cruda.mostrarArea();
                        for(Area a:lst1){
                        %>
                        
                        <option value="<%=a.getIdArea()%>"><%=a.getNombreArea()%></option>
                   
                        <%
                          }
                        %>
                      </select>   
                </div>
                </div>
                <div class="form-row align-items-center">
                <div class="col-auto">
                  <label class="mr-sm-2" for="idContratador">Contratador</label>
                  <select class="custom-select mb-2 mr-sm-2 mb-sm-0" id="lstContratador" name="lstContratador" >
                  <%
                        List<Contratador> lst2=crudc.mostrarContratador();
                        for(Contratador c:lst2){
                  %>
                  
                      <option value="<%=c.getIdContratador()%>"><%=c.getNombresC()%></option>
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
                </center>  
            </form>
        <center>
        </table>
        <br>
        <table class="table table-bordered" style="text-align: center">
            <thead class="thead-inverse">
                <tr>
                    <th scope="row" style="text-align: center;width: 200px">Id Catalogo</th>
                    <th style="text-align: center">Nombre</th>
                    <th style="text-align: center;width: 300px">Area</th>
                    <th style="text-align: center">Contratador</th>
                    <th style="text-align: center;width: 200px">Seleccionar</th>
                </tr>
            </thead>
            <tbody>
                <%
                    List<Catalogo> lst=crud.mostrarCatalogo();
                    for(Catalogo c:lst){
                %>
                <tr class="table-info">
                    <td><%=c.getIdCatalogo()%></td>
                    <td><%=c.getNombreCatalogo()%></td>
                    <td><%=c.getIdArea()%></td>
                    <td><%=c.getIdContratador()%></td>
                    <td><a href="javascript:cargarCatalogo(<%=c.getIdCatalogo()%>,
                           '<%=c.getNombreCatalogo()%>','<%=c.getIdArea()%>',
                           '<%=c.getIdContratador()%>')">Seleccionar</a></td>
                </tr>
                <%
                    }
                %>
            </tbody>
        </table>
        </center> 
    </body>
</html>

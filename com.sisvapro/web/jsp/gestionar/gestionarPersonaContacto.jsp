<%-- 
    Document   : gestionarPersonaContacto
    Created on : 10-16-2017, 10:26:11 PM
    Author     : Karen Escobar, David Sarmiento, Carlos Lopez
--%>

<%@page import="com.modelo.PersonaContacto"%>
<%@page import="java.util.List"%>
<%@page import="com.modelo.Empresa"%>
<%@page import="com.modelo.CrudEmpresa"%>
<%@page import="com.modelo.CrudPersonaContacto"%>
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
        <title>Gestionar Persona Contacto</title>
    </head>
    <%
    CrudPersonaContacto crud=new CrudPersonaContacto();
    CrudEmpresa crude=new CrudEmpresa();
    %>
    <body>
         <jsp:include page="menuGestionar.jsp"/>
       <center>
        <br><br>
        <div class="p-3 mb-2 bg-light text-black">
            <MARQUEE BEHAVIOR=ALTERNATE><h1>Registro Persona Contacto</h1></marquee>
        </div>
        
            <div class="container">
            <form action="procesarPersonaContacto" method="post" name="frmContacto">
                
                <div class="col align-self-star">
                   <div class="row justify-content-star">
                        
                   </div>
                    
                    <div class="form-row">
                        <div class="form-group col-md-5">
                            <label for="niveles" class="col-form-label"><strong>Niveles de Estudio</strong></label>
                            <input type="text" class="form-control" id="txtNombres" name="txtNombres" placeholder="Nombres">
                        </div>
                    <div class="col align-self-center">
                    <div class="row justify-content-center">
                       <div class="form-group col-md-8">
                           <label for="apellidos" class="col-form-label"><strong>Apellidos</strong></label>
                            <input type="text" class="form-control" id="txtApellidos" name="txtApellidos" placeholder="Apellidos">
                        </div>
                    </div>
                    </div>
                    </div>
                    
                    <div class="form-row">
                        <div class="form-group col-md-5">
                            <label for="telefono1" class="col-form-label"><strong>Telefono 1</strong></label>
                            <input type="text" class="form-control" id="txtTelefono1" name="txtTelefono1" placeholder="Telefono 1">
                        </div>
                    <div class="col align-self-center">
                    <div class="row justify-content-center">
                       <div class="form-group col-md-8">
                           <label for="telefono2" class="col-form-label"><strong>Telefono 2</strong></label>
                            <input type="text" class="form-control" id="txtTelefono2" name="txtTelefono2" placeholder="Telefono 2">
                        </div>
                    </div>
                    </div>
                    </div>
                    
                   <div class="row justify-content-star">
                        <div class="col-5">
                            <div class="form-group">
                                <label for="cargo" class="col-form-label"><strong>Cargo</strong></label>
                                <input type="text" class="form-control" id="txtCargo" name="txtCargo" placeholder="Cargo">
                            </div>
                        
                            <div class="form-group">
                                <label for="IdEmpresa" class="col-form-label"><strong>Empresa</strong></label>
                                <select class="custom-select mb-2 mr-sm-2 mb-sm-1" id="lstEmpre" name="lstEmpresa" >
                                    <option>Seleccionar</option>
                                    <%
                                    List<Empresa> lst=crude.mostrarEmpresa();
                                    for(Empresa em:lst){
                                    %>
                                    <option value="<%=em.getIdEmpresa()%>"><%=em.getNombreEmpresa()%></option>
                                    <%
                                    }
                                    %>
                                </select>
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
                        </div>
                    </td>
                </tr>
        </table>
            </form>
            </div> <br>
            <table id="grid" class="table table-bordered" style="text-align: center">
            <thead class="thead-inverse">
                <tr>
                    <th style="text-align: center;width: 200px">Id Persona Contacto</th>
                    <th style="text-align: center;width: 200px">Nombres</th>
                    <th style="text-align: center;width: 200px">Apellidos</th>
                    <th style="text-align: center;width: 150px">Cargo</th>
                    <th style="text-align: center">Telefono 1</th>
                    <th style="text-align: center;width: 150px">Telefono 2</th>
                    <th style="text-align: center;width: 150px">Empresa</th>
                    <th style="text-align: center;width: 100px">Seleccionar</th>
                </tr>
            </thead>
            <tbody>
                <%
                    List<PersonaContacto> lst1=crud.mostrarPersonaContacto();
                    for(PersonaContacto p:lst1){
                %>
                <tr class="table-primary">
                    <td><%=p.getIdPersonaContacto()%></td>
                    <td><%=p.getNombres()%></td>
                    <td><%=p.getApellidos()%></td>
                    <td><%=p.getCargo()%></td>
                    <td><%=p.getTelefono1()%></td>
                    <td><%=p.getTelefono2()%></td>
                    <td><%=p.getIdEmpresa()%></td>
                    <td><a href="javascript:cargarContacto(<%=p.getIdPersonaContacto()%>,'<%=p.getNombres()%>',
                           '<%=p.getApellidos()%>','<%=p.getCargo()%>','<%=p.getTelefono1()%>',
                           '<%=p.getTelefono2()%>','<%=p.getIdEmpresa()%>')">Seleccionar</a></td>
                </tr>
                <%
                    }
                %>
            </tbody>
            </table>                    
    </center> 
    </body>
</html>

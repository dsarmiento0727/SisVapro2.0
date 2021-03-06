<%-- 
    Document   : habilidad
    Created on : 10-06-2017, 06:02:13 PM
    Author     : Karen Escobar, David Sarmiento
--%>

<%@page import="com.modelo.Habilidad"%>
<%@page import="java.util.List"%>
<%@page import="com.modelo.CrudHabilidad"%>
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

        response.sendRedirect("../../accesoDenegado.jsp");
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
        <title>Gestionar Habilidad</title>
        <script src="../../js/Procesos.js"></script>
    </head>
    <%        CrudHabilidad crud = new CrudHabilidad();
    %>
    <body>
        <jsp:include page="menuGestionar.jsp"/>
    <center>
        <br>
        <div class="p-2 mb-1 bg-light text-black"><h1>Registro de Habilidad</h1></div>
        <br><br>
        <div class="container">
        <form action="procesarHabilidad" method="POST" name="frmHabilidad">
        <table>
            
                
                    <div class="form-group row">
                        <label for="idhabilidad" class="col-sm-2 col-form-label"><strong>Id Habilidad</strong></label>
                        <div class="col-sm-3">
                            <input type="text" class="form-control" id="txtIdDepartamento" name="txtIdHabilidad" placeholder="Id Habilidad" value="0" readonly>
                        </div>
                    </div>
                    <div class="form-group row">
                        <label for="nombre" class="col-sm-2 col-form-label"><strong>Habilidad</strong></label>
                        <div class="col-sm-4">
                            <input type="text"type class="form-control" id="txtNombre" name="txtNombre" required="true" placeholder="Habilidad" pattern="[a-zA-ZñÑáéíóúÁÉÍÓÚ]{3,}">
                        </div>
                    </div>
                    <div class="form-group row">
                        <label for="idfor1" class="col-sm-2 col-form-label"><strong>Id Empleado</strong></label>
                        <div class="col-sm-4">
                            <input type="text"type class="form-control" id="idfor1" name="txtIdEmpleador" placeholder="Id Empleador" required="true">
                        </div>
                    </div>

                    <tr>
                        <td colspan="2">
                            <input type="submit" name="btnInsertar" class="btn btn-success" value="Insertar">
                            <input type="submit" name="btnModificar" class="btn btn-warning" value="Modificar" onclick="Modificar()">
                            <input type="submit" name="btnEliminar" class="btn btn-danger" value="Eliminar" onclick=" Eliminar()">
                            <input type="reset" name="btnLimpiar" class="btn btn-secondary" value="Limpiar">   
                        </td>
                    </tr>
                 
               
        
            
        </table>
           </form>
             </div>
        <br>
        <table id="grid" class="table table-bordered" style="text-align: center; width: 1000px">
            <thead class="thead-inverse">
                <tr>
                    <th style="text-align: center;width: 200px">Id Habilidad</th>
                    <th style="text-align: center">Habilidad</th>
                    <th style="text-align: center">Id Empleador</th>
                    <th style="text-align: center">Seleccionar</th>
                </tr>
            </thead>
            <tbody>
                <%
                    List<Habilidad> lst = crud.mostrarHabilidad();
                    for (Habilidad h : lst) {
                %>
                <tr class="table-primary">
                    <td><%=h.getIdHabilidad()%></td>
                    <td><%=h.getNombreHabilidad()%></td>
                    <td><%=h.getIdEmpleador()%></td>
                    <td><a href="javascript:cargarHabilidad(<%=h.getIdHabilidad()%>,
                           '<%=h.getNombreHabilidad()%>','<%=h.getIdEmpleador()%>')" style="color:black">Seleccionar</a></td>
                </tr>
                <%
                    }
                %>
            </tbody>
        </table>
    </center>
</body>
</html>

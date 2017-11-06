<%-- 
    Document   : pais
    Created on : 10-06-2017, 05:21:16 PM
    Author     : Karen Escobar, David Sarmiento, Carlos Lopez
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.*" %>
<%@page import="com.modelo.*" %>
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
        <title>Gestionar Pais</title>
        <script src="../../js/Procesos.js"></script>
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
    CrudPais crud=new CrudPais();
    %>
    <body>
         <jsp:include page="menuGestionar.jsp"/>
         <center>
             <div class="p-3 mb-2 bg-light text-black"><h1>Registro de País</h1></div>
        <table>
            
                <br><br>        
            <div class="container">
                <form action="procesarPais" method="POST" name="frmPais">
                <center>
                    <table>
                <div class="form-group row">
                    <label for="idpais" class="col-sm-2 col-form-label">Id Pais</label>
                <div class="col-sm-3">
                    <input type="text" class="form-control" id="txtIdPais" name="txtIdPais"placeholder="Id Pais" value="0" readonly>
                </div>
                </div>
                <div class="form-group row">
                    <label for="nombre" class="col-sm-2 col-form-label">Pais</label>
                <div class="col-sm-4">
                    <input type="text" class="form-control" id="txtNombre" name="txtNombre"placeholder="Pais" >
                </div>
                </div>
                <div class="btn-group" role="group" aria-label="Basic example">
                <tr>
                    <td colspan="2">
                <input type="submit" name="btnInsertar" class="btn btn-success" value="Insertar">
                <input type="submit" name="btnModificar" class="btn btn-warning" value="Modificar" onclick="Modificar()">
                <input type="submit" name="btnEliminar" class="btn btn-danger" value="Eliminar" onclick="Eliminar()">
                <input type="reset" name="btnLimpiar" class="btn btn-secondary" value="Limpiar">   
                    </td>
                </tr>    
            </form>
            </div>
        </table>
        
        <br><br>
        <table id="grid" class="table table-bordered" style="text-align: center; width: 1200px">
            <thead class="thead-inverse">
                <tr>
                    <th  style="text-align: center;width: 200px">Id País</th>
                    <th  style="text-align: center">Nombre</th>
                    <th  style="text-align: center">Seleccionar</th>
                </tr>
            </thead>
            <tbody>
                <%
                List<Pais> lst=crud.mostrarPais();
                for(Pais pa:lst){
                %>
                <tr class="table-primary">
                    <td scope="row"><%=pa.getIdPais()%></td>
                    <td><%=pa.getNombrePais()%></td>
                    <td><a href="javascript:cargarPais(<%=pa.getIdPais()%>,
                           '<%=pa.getNombrePais()%>')">Seleccionar</a></td>
                </tr>
                <%
                }
                %>
            </tbody>
        </table>
            </center>
    </body>
</html>

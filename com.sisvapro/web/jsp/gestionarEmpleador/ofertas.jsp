<%-- 
    Document   : ofertas
    Created on : Nov 7, 2017, 9:58:26 PM
    Author     : David Sarmiento
--%>

<%@page import="com.modelo.Departamento"%>
<%@page import="com.modelo.CrudDepartamento"%>
<%@page import="com.modelo.Pais"%>
<%@page import="com.modelo.CrudPais"%>
<%@page import="com.modelo.Empresa"%>
<%@page import="com.modelo.CrudEmpresa"%>
<%@page import="com.modelo.OfertaEmpleo"%>
<%@page import="java.util.List"%>
<%@page import="com.modelo.CrudOfertaEmpleo"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%

    String usuario = null;

    String tipoUsuario = null;

    String idUsuario = null;

    try {

        HttpSession objSesion = request.getSession(false);

        HttpSession objSesionTipo = request.getSession(false);

        usuario = (String) objSesion.getAttribute("usuario");

        tipoUsuario = (String) objSesionTipo.getAttribute("tipo");
        idUsuario = (String) objSesionTipo.getAttribute("id").toString();
        if (usuario == null) {
            response.sendRedirect("../accesoDenegado.jsp");
        }
        if (usuario.equals("Empleador")) {
            response.sendRedirect("menuEmpleador.jsp");
        } else if (usuario.equals("Empresa")) {
            response.sendRedirect("menuEmpresa.jsp");
        }

    } catch (Exception e) {

        out.print(e.toString());

    }
%>


<!DOCTYPE html>
<html>
    <%
        CrudOfertaEmpleo crudo = new CrudOfertaEmpleo();
        CrudPais crup = new CrudPais();
        CrudEmpresa crude = new CrudEmpresa();
        List<Empresa> listaa = crude.mostrarEmpresa();
        List<OfertaEmpleo> lst4 = crudo.mostrarOfertaEmpleo();
        CrudDepartamento crudepar = new CrudDepartamento();
    %>
    <head>
        <link rel="stylesheet" type="text/css" href="../../css/bootstrap.min.css">
        <link rel="stylesheet" type="text/css" href="../../css/dataTables.bootstrap4.min.css"/>
        <link rel="stylesheet" type="text/css" href="../../css/style.css"/>
        <script type="text/javascript" src="../../js/jquery-3.2.1.slim.min.js"></script>
        <script type="text/javascript" src="../../js/popper.min.js"></script>
        <script type="text/javascript" src="../../js/bootstrap.min.js"></script>
        <script type="text/javascript" src="../../js/datatables.min.js"></script>
        <script type="text/javascript" src="../../js/Procesos.js"></script>
        <script type="text/javascript" src="../../js/dataTable.js"></script>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <jsp:include page="menuGestionar.jsp"/>
        <div class="p-2 mb-1 bg-light text-black"><center><h1>Ofertas de Empleo</h1></center></div>
        <div class="container">
      
        </div>
        <div class="table table-responsive">
            <table id="grid" class="table table-responsive table-bordered" style="text-align: center">
                <thead class="thead-inverse">
                    <tr>
                        <th style="text-align: center">Puesto Vacante</th>
                        <th style="text-align: center">Tipo de Contratación</th>
                        <th style="text-align: center">Nivel de Experiencia</th>
                        <th style="text-align: center">Genero</th>
                        <th style="text-align: center">Edad</th>
                        <th style="text-align: center">Salario</th>
                        <th style="text-align: center">Empresa</th>
                        <th style="text-align: center">Pais</th>
                        <th style="text-align: center">Departamento</th>
                        <th style="text-align: center">Descripcion</th>
                        <th style="text-align: center">Seleccionar</th>
                    </tr>
                </thead>
                <tbody>
                    <%
                        for (OfertaEmpleo o : lst4) {
                    %>
                    <tr class="table-primary">
                        <td><%=o.getPuestoVacante()%></td>
                        <td><%=o.getTipoContratacion()%></td>
                        <td><%=o.getNivelExperiencia()%></td>
                        <td><%=o.getGenero()%></td>
                        <td><%=o.getEdad()%></td>
                        <td><%=o.getSalario()%></td>
                        <td><%=o.getIdEmpresa()%></td>
                        <td><%=o.getIdPais()%></td>
                        <td><%=o.getIdDepartamento()%></td>
                        <td><%=o.getDescripcionOferta()%></td>

                        <td><a class="badge badge-primary" href="javascript:cargarACarrito(<%=o.getIdOfertaEmpleo()%>,
                               '<%=o.getPuestoVacante()%>','<%=o.getTipoContratacion()%>',
                               '<%=o.getGenero()%>','<%=o.getEdad()%>','><%=o.getSalario()%>',
                               '<%=o.getIdEmpresa()%>','<%=o.getIdPais()%>','<%=o.getIdDepartamento()%>',
                               '<%=o.getDescripcionOferta()%>','<%=o.getNivelExperiencia()%>')">Seleccionar</a></td>
                    </tr>
                    <%
                        }
                    %>
                </tbody>
            </table>
        </div>

    </body>
</html>

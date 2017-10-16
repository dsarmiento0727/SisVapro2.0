<%-- 
    Document   : usuario
    Created on : 10-06-2017, 06:43:21 PM
    Author     : carlos
--%>

<%@page import="com.modelo.Usuario"%>
<%@page import="com.modelo.TipoUsuario"%>
<%@page import="java.util.List"%>
<%@page import="com.modelo.CrudTipoUsuario"%>
<%@page import="com.modelo.CrudUsuario"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Gestionar Usuario</title>
        <script src="../JavaScript/Procesos.js"></script>
        <link rel="stylesheet" type="text/css" href="../CSS/style.css">
         <link rel="stylesheet" type="text/css" href="CSS/style.css">
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
    CrudUsuario crud=new CrudUsuario();
    CrudTipoUsuario crudt= new CrudTipoUsuario();
    %>
    <body>
         <jsp:include page="navGestiones.jsp" />
        <center>
            <div class="p-3 mb-2 bg-light text-black"><h1>Registro de Usuario</h1></div>
        </center>
        <center>
        <table>
            <div class="container">
            <form action="../procesarUsuario" method="POST" name="frmUsuario">
                <div class="form-group row">
                    <label for="idusuario" class="col-sm-2 col-form-label">Id Usuario</label>
                <div class="col-sm-3">
                    <input type="text" class="form-control" id="txtIdEmpresa" name="txtIdUsuario"placeholder="Id Usuario">
                </div>
                </div>
               <div class="form-group row">
                    <label for="user" class="col-sm-2 col-form-label">UserName</label>
                <div class="col-sm-5">
                    <input type="text" class="form-control" id="txtNombreU" name="txtNombreU"placeholder="Nombre de Usuario">
                </div>
                </div> 
                <div class="form-group row">
                    <label for="pass" class="col-sm-2 col-form-label">Password</label>
                <div class="col-sm-5">
                    <input type="text" class="form-control" id="txtClave" name="txtClave"placeholder="Ingrese la Contraseña">
                </div>
                </div> 
              <div class="form-row align-items-center">
                <div class="col-auto">
                  <label class="mr-sm-2" for="idtipo">Tipo de Usuario</label>
                  <select class="custom-select mb-2 mr-sm-2 mb-sm-0" id="lstTipo" name="lstTipo" >
                  <%
                        List<TipoUsuario> lst1=crudt.mostrarTipoUsuario();
                        for(TipoUsuario t:lst1){
                  %>
                  
                  <option value="<%=t.getIdTipo()%>"><%=t.getNivel()%></option>
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
        <table class="table table-bordered" style="text-align: center" >
            <thead class="thead-inverse">
                <tr>
                    <th scope="row" style="text-align: center">Id Usuario</th>
                    <th style="text-align: center">UserName</th>
                    <th style="text-align: center">Password</th>
                    <th style="text-align: center">tipo Usuario</th>
                    <th style="text-align: center">Seleccionar</th>
                </tr>
            </thead>
            <tbody>
                <%
                    List<Usuario> lst=crud.mostrarUsuario();
                    for(Usuario u :lst){
                %>
                <tr class="table-info">
                    <td><%=u.getIdUsuario()%></td>
                    <td><%=u.getUserName()%></td>
                    <td><%=u.getPassword()%></td>
                    <td><%=u.getIdTipo()%></td>
                    <td><a href="javascript:cargarUsuario(<%=u.getIdUsuario()%>,
                           '<%=u.getUserName()%>','<%=u.getPassword()%>',
                           '<%=u.getIdTipo()%>')">Seleccionar</a></td>
                </tr>
                <%
                    }
                %>
            </tbody
        </table>
    </body>
</html>

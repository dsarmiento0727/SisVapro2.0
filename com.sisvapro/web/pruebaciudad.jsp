<%-- 
    Document   : pruebaciudad
    Created on : Nov 2, 2017, 8:56:16 PM
    Author     : David Sarmiento
--%>

<%@page import="com.modelo.Departamento"%>
<%@page import="com.modelo.CrudDepartamento"%>
<%@page import="com.modelo.Pais"%>
<%@page import="com.modelo.CrudPais"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    
    <% CrudPais crudPai = new CrudPais(); 
        Pais pai = new Pais();
        CrudDepartamento cruddepa = new CrudDepartamento();
        Departamento depa = new Departamento();
    %>
    <script> 
function cambio() 
{ 
var departamento;
pais = document.pp.pais.options[document.pp.pais.selectedIndex].value 
if(tmp == "<%= pai.getIdPais() %>")
{
document.pp.capital.options[1] = new Option(xd[1], tmp, true, true)
document.pp.capital.options[2] = new Option(xd[0], tmp, true, true) 
}
if(tmp == "Guatemala")
{
document.pp.capital.options[1] = new Option('guate', 'xd', true, true)
document.pp.capital.options[2] = new Option('loco', 'jojo', true, true) 
}
} 
</script> 

<body > 
<form name=pp> 
    
<select name=pais OnChange="cambio()"> 
    
    <%  
        for(Pais var:Pais)
        %>
<option value="El Salvador">El Salvador</option> 
<option value="Guatemala">Guatemala</option> 
<option value="Honduras">Honduras</option> 
<option value="Costa Rica">Costa Rica</option> 
</select> 

<select name=capital > 
</select> 
</form> 
</body></html> 
</html>

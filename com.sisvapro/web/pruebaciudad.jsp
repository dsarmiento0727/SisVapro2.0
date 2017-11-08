<%-- 
    Document   : pruebaciudad
    Created on : Nov 2, 2017, 8:56:16 PM
    Author     : David Sarmiento
--%>

<%@page import="java.util.List"%>
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
    

   <%
    CrudPais crud=new CrudPais();
    %>
<body > 
<form name=pp> 
    
<select name=pais OnChange="cambio()"> 

    <%
                List<Pais> lst=crud.mostrarPais();
                for(Pais pa:lst){
                %>
             <option value="<%=pa.getIdPais()%>"><%=pa.getNombrePais()%></option> 
                <%
                }
                %>


</select> 

<select name=capital > 
</select> 
                <input type="text" required="true" pattern="[A-Za-z]{10,}">
                <input type="submit">
</form> 
<script> 
function cambio() 
{ 
var departamento ;
pais = document.pp.pais.options[document.pp.pais.selectedIndex].value 
if(pais == 1)
{
document.pp.capital.options[1] = new Option(xd[1], tmp, true, true)
document.pp.capital.options[2] = new Option(xd[0], tmp, true, true) 
}
if(pais == 2)
{
document.pp.capital.options[1] = new Option('guate', 'xd', true, true)
document.pp.capital.options[2] = new Option('loco', 'jojo', true, true) 
}
} 
</script> 
</body>
</html>

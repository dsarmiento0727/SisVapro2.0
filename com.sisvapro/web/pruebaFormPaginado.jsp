<%-- 
    Document   : pruebaFormPaginado
    Created on : Nov 1, 2017, 2:23:29 PM
    Author     : David Sarmiento
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <script type="text/javascript" src="js/mostarOcultar.js"></script>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        <div id="pagina1" style="display:block;">
            <form>
                ID
                <input type="text">
                Nombre
                <input type="text">
                Wea
                <input type="text">
                Wea
                <input type="text">
                Wea esta es la pagina 1
                <input type="button" onclick="siguientePagina()" value="Siguiente">
            </form>
        </div>
         <div id="pagina2" style="display:none;">
            <form>
                Esta es la otra pagina :v
                <input type="text">
                Awebooo :V
                <input type="text">
                A ver si funciona
                <input type="text">
                xD
                <input type="text">
                <input type="button" onclick="anteriorPagina()" value="Anterior">
                <input type="button" onclick="siguientePagina()" value="Siguiente">
            </form>
        </div>
    </body>
</html>

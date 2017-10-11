<%-- 
    Document   : menuPrincipal
    Created on : Oct 11, 2017, 4:00:22 PM
    Author     : dsarm
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css" integrity="sha384-/Y6pD6FV/Vv2HJnA6t+vslU6fwYXjCFtcEpHbNJ0lyAFsXTsjBbfaDjzALeQsN6M" crossorigin="anonymous">
        <link rel="stylesheet" type="text/css" href="CSS/style.css">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>MenuPrincipal</title>
        <script src="JavaScript/Procesos.js"></script>
        
    </head>
    <body>
     <div id="contenedor">
     <div id="cabezera">Cabezera Y Titulo</div>
     <div id="menu"><jsp:include page="menu.jsp" /></div>
     <div id="izquierda">Contenido Principal</div>
     <div id="derecha">Publicidad y Enlaces</div>
     <div id="pie">Informacion de la pagina</div>
  </div>
    </body>
</html>

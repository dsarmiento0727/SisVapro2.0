<%-- 
    Document   : pruebaFormPaginado
    Created on : Nov 1, 2017, 2:23:29 PM
    Author     : David Sarmiento
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <!-- Se importa este JavaScript-->
        <script type="text/javascript" src="js/mostarOcultar.js"></script>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hola Mundo!</h1>
        <!-- Se crea un DIV y se le pone un ID en este caso pagina1
            Style = block (Se muestra)
            Style = none (Oculto)
            Se pone como "block" la primera pagina.
        -->
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
                <!-- Se manda a llamar la funcion siguiente pagina creada en el JS
                -->
                <input type="button" onclick="siguientePagina()" value="Siguiente">
            </form>
        </div>
        <!-- Esta parte esta como "None" pues se mostrara con el boton
        -->
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
                 <!-- se crean dos botones uno en el que se avanza y otro en el que se retrocede
                -->
                <input type="button" onclick="anteriorPagina()" value="Anterior">
                <input type="button" onclick="siguientePagina()" value="Siguiente">
            </form>
            <!-- Recordar insertar todo en diferentes div
                -->
        </div>
    </body>
</html>

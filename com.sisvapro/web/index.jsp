<%-- 
    Document   : index.jsp
    Created on : Oct 12, 2017, 9:28:42 PM
    Author     : David Sarmiento
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%

    String usuario = null;

    String tipoUsuario = null;

    try {

        HttpSession objSesion = request.getSession(false);

        HttpSession objSesionTipo = request.getSession(false);

        usuario = (String) objSesion.getAttribute("usuario");

        tipoUsuario = (String) objSesionTipo.getAttribute("tipo");

    } catch (Exception e) {

        out.print(e.toString());

    }

%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
        <script type="text/javascript" src="js/jquery-3.2.1.slim.min.js"></script>
        <script type="text/javascript" src="js/popper.min.js"></script>
        <script type="text/javascript" src="js/bootstrap.min.js"></script>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Index</title>
    </head>
    <body>
        <nav class="navbar navbar-expand-lg navbar-dark bg-dark">

            <a class="navbar-brand" href="#">
                <img src="imagenes/logo.png" width="30" height="30" class="d-inline-block align-top" alt="">
                SISVAPRO
            </a>

            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>



            <div class="collapse navbar-collapse" id="navbarSupportedContent">

                <ul class="navbar-nav mr-auto">

                    <li class="nav-item active">

                        <a class="nav-link" href="#">Menu Principal</a>

                    </li>

                    <li class="nav-item">

                        <a class="nav-link" href="#quienes">Contactanos</a>

                    </li>
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="http://example.com" id="navbarDropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            Dropdown link
                        </a>
                        <div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
                            <a class="dropdown-item" href="#">Action</a>
                            <a class="dropdown-item" href="#">Another action</a>
                            <a class="dropdown-item" href="#">Something else here</a>
                        </div>
                    </li>
                </ul>



                <%                 if (usuario == null) {
                %>
                <ul class="navbar-nav mr-right">
                    <li>
                        <div class="dropdown show">
                            <a class="btn btn-outline-danger my-2 my-sm-0" href="#" role="button" id="dropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                Iniciar Session
                            </a>

                            <div class="dropdown-menu dropdown-menu-right" aria-labelledby="dropdownMenuLink">
                                <form>
                                    <div class="form-group" >
                                        <label for="txtUsuario" style="text-align: center"><strong>Usuario</strong> </label>
                                        <input id="txtUsuario" class="form-control" type="text" name="txtusuario" required="true" style="text-align: center" placeholder="Ingrese su usuario.">
                                    </div>                            

                                    <div class="form-group" >
                                        <label for="txtcontra" style="text-align: center"><strong>Contrasenia</strong> </label>
                                        <input id="txtcontra" class="form-control" type="password" name="txtcontra" required="true" style="text-align: center" placeholder="Ingrese su clave.">
                                        <input type="checkbox" name="ck" value="recordar">Recordar Usuario</center>
                                        <div class="btn-group" role="group" aria-label="Basic example" >
                                            <input type="submit" name="btnIngresar" class="btn btn-primary" value="Ingresar">
                                            <input type="reset" name="btnCancelar" class="btn btn-danger" value="Cancelar"> 
                                        </div>
                                </form>

                            </div>
                        </div>
                        </div>
                    </li>
                </ul>
                <%
                } else {
                %>
                <form class="form-inline my-2 my-lg-0">

                    <span class="input-group-addon" id="basic-addon1">Usuario</span>
                    <a href="cerrarSession.jsp" class="btn btn-outline-danger my-2 my-sm-0">Cerrar Session</a>

                </form>
                <%
                    }
                %>

            </div>

        </nav>

        <div class="container-fluid">
            <div class="row">
                <div class="col-md-12">
                    <div class="jumbotron">
                        <h2>
                            Hello, world!
                        </h2>
                        <p>
                            This is a template for a simple marketing or informational website. It includes a large callout called the hero unit and three supporting pieces of content. Use it as a starting point to create something more unique.
                        </p>
                        <p>
                            <a class="btn btn-dark btn-large" href="#">Learn more</a>
                        </p>
                    </div>
                </div>
            </div>
        </div>
        <div class="container-fluid">
            <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
                <ol class="carousel-indicators">
                    <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
                    <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
                    <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
                </ol>
                <div class="carousel-inner">
                    <div class="carousel-item active">
                        <img class="d-block w-100" src="imagenes/15-oportunidades-laborales-para-peruanos.png" alt="First slide">
                        <div class="carousel-caption d-none d-md-block">
                            <h3>Titulo</h3>
                            <p>Contenido</p>
                        </div>

                    </div>
                    <div class="carousel-item">
                        <img class="d-block w-100" src="imagenes/3-ofertas-de-empleo-para-trabajar-desde-tu-casa.jpg" alt="Second slide">
                        <div class="carousel-caption d-none d-md-block">
                            <h3>Titulo</h3>
                            <p>Contenido</p>
                        </div>
                    </div>
                    <div class="carousel-item">
                        <img class="d-block w-100" src="imagenes/9-ofertas-de-practicas-profesionales-en-ingenieria-.jpg" alt="Third slide">
                        <div class="carousel-caption d-none d-md-block">
                            <h3>Titulo</h3>
                            <p>Contenido</p>
                        </div>
                    </div>
                </div>
                <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
                    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                    <span class="sr-only">Previous</span>
                </a>
                <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
                    <span class="carousel-control-next-icon" aria-hidden="true"></span>
                    <span class="sr-only">Next</span>
                </a>
            </div>
        </div>       
        <div class="container-fluid">
            <div class="row">
                <div class="col-md-12">
                    <div class="row">
                        <div class="col-md-4">
                            <div class="thumbnail">
                                <img alt="Bootstrap Thumbnail First" src="imagenes/9-ofertas-de-practicas-profesionales-en-ingenieria-.jpg" width="100%" />
                                <div class="caption">
                                    <h3>
                                        Mision
                                    </h3>
                                    <p>
                                        Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus. Nullam id dolor id nibh ultricies vehicula ut id elit.
                                    </p>
                                    <p>
                                        <a class="btn btn-dark" href="#">Action</a> <a class="btn" href="#">Action</a>
                                    </p>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-4">
                            <div class="thumbnail">
                                <img alt="Bootstrap Thumbnail Second" src="http://lorempixel.com/output/city-q-c-600-200-1.jpg" />
                                <div class="caption">
                                    <h3>
                                        Vision
                                    </h3>
                                    <p>
                                        Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus. Nullam id dolor id nibh ultricies vehicula ut id elit.
                                    </p>
                                    <p>
                                        <a class="btn btn-dark" href="#">Action</a> <a class="btn" href="#">Action</a>
                                    </p>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-4" id="quienes">
                            <div class="thumbnail">
                                <img alt="Bootstrap Thumbnail Third" src="http://lorempixel.com/output/sports-q-c-600-200-1.jpg" />
                                <div class="caption">
                                    <h3>
                                        Quienes somos
                                    </h3>
                                    <p>
                                        Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus. Nullam id dolor id nibh ultricies vehicula ut id elit.
                                    </p>
                                    <p>
                                        <a class="btn btn-dark" href="#">Action</a> <a class="btn" href="#">Action</a>
                                    </p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>


    </body>
</html>

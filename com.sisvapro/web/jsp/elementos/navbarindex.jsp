<%-- 
    Document   : navbarindex
    Created on : Oct 13, 2017, 8:49:51 PM
    Author     : Sarmiento
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    </head>
    <body>
        <nav class="navbar navbar-expand-lg navbar-dark bg-dark">

            <a class="navbar-brand" href="principal.jsp">
                <img src="../imagenes/man.png" width="30" height="30" class="d-inline-block align-top" alt="">
                SISVAPRO
            </a>

            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">

                <span class="navbar-toggler-icon"></span>

            </button>

            <div class="collapse navbar-collapse" id="navbarSupportedContent">

                <ul class="navbar-nav mr-auto">
                    <li class="nav-item dropdown show">
                        <a class="dropdown-toggle" data-toggle="dropdown" aria-expanded="true" href="#">Dropi</a>
                        <div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
                            <ul class="dropdown-menu show" aria-labelledby="test" role="menu">
                            <li><a class="dropdown-item" href="#">Actiodgadgn</a></li>
                            <li><a class="dropdown-item" href="#">Anothgadger action</a></li>
                            <li><a class="dropdown-item" href="#">Sometadhing else here</a></li>
                        </ul>
                        </div>
                    </li>
                    <li>
                    <a class="nav-link" href="#">Quienes Somos</a>

                    </li>

                    <li class="nav-item">

                        <a class="nav-link" href="#">Gestionar</a>
                    </li>


                </ul>

                <form class="form-inline my-2 my-lg-0">

                    <input class="form-control mr-sm-2" type="text" placeholder="" aria-label="Search" disabled="true">

                    <a href="#" class="btn btn-outline-danger my-2 my-sm-0">Cerrar Session</a>



                </form>

            </div>

        </nav>
    </body>
</html>

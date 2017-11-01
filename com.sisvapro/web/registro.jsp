<%-- 
    Document   : registro
    Created on : Oct 14, 2017, 10:47:26 PM
    Author     : Franklin Baires, David Sarmiento
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
        <link rel="stylesheet" type="text/css" href="css/style.css">
        <script type="text/javascript" src="js/jquery-3.2.1.slim.min.js"></script>
        <script type="text/javascript" src="js/popper.min.js"></script>
        <script type="text/javascript" src="js/bootstrap.min.js"></script>
        <title>Registro</title>
    </head>
    <body>

        <header>

        </header>
        <nav class="navbar navbar-expand-lg navbar-dark bg-dark">

            <a class="navbar-brand" href="index.jsp">
                <img src="imagenes/logo.png" width="30" height="30" class="d-inline-block align-top" alt="">
                MUNDO EMPLEO
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
                <ul class="navbar-nav mr-right">
                    <li>
                        <div class="dropdown show">
                            <a class="btn btn-outline-danger my-2 my-sm-0" href="#" role="button" id="dropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                Iniciar Session
                            </a>

                            <div class="dropdown-menu dropdown-menu-right" aria-labelledby="dropdownMenuLink">
                                <form action="iniciarSesion" method="post">
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

            </div>

        </nav>
        <div class="container">
            <section>
                <article>
                    <br>
                    <br>
                    <br>
                    <br>
                    <br>

                    <table class="table table-bordered">
                        <thead class="thead-default">
                            <tr>
                                <th><label>Registrate</label></th>
                            <tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td>
                                    <form method="POST" action="">
                                        <div class="form-group">
                                            <label for="txtUsuario">Nombre de usuario</label>
                                            <input type="email" class="form-control" id="txtUsuario" name="txtUsuario"
                                                   aria-describedby="emailHelp" placeholder="Ingrese su nombre de usuario aqui"
                                                   required maxlength="50">
                                        </div>
                                        <div class="form-row">    
                                            <div class="form-group col-md-6">
                                                <label for="txtPassword" class="col-form-label">Contrase&ntilde;a</label>
                                                <input type="password" class="form-control" id="txtPassword"
                                                       placeholder="Contrase&ntilde;a" maxlength="50">
                                            </div>
                                            <div class="form-group col-md-6">
                                                <label for="txtPassword" class="col-form-label">Vuelva a introducir su contrase&ntilde;a</label>
                                                <input type="password" class="form-control" id="txtPassword"
                                                       placeholder="Contrase&ntilde;a" maxlength="50">
                                            </div>
                                        </div>
                                        <button type="submit" class="btn btn-dark" name="btnRegistrarse">Registrarse</button>
                                    </form>
                                </td>
                            </tr>
                        </tbody>
                    </table>


                </article>
            </section>
            <aside>

            </aside>
            <footer>

            </footer>
        </div>
    </body>
</html>

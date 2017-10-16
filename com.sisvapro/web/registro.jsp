<%-- 
    Document   : registro
    Created on : Oct 14, 2017, 10:47:26 PM
    Author     : Sarmiento
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>

        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
        <script type="text/javascript" src="js/jquery-3.2.1.slim.min.js"></script>
        <script type="text/javascript" src="js/popper.min.js"></script>
        <script type="text/javascript" src="js/bootstrap.min.js"></script>
        <title>Registro</title>
    </head>
    <body bgcolor="#000033">
        <div class="container">
            <header>

            </header>
            <nav>

            </nav>
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
                                <th><label>Registrar una cuenta</label></th>
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
                                                       placeholder="Password" maxlength="50">
                                            </div>
                                            <div class="form-group col-md-6">
                                                <label for="txtPassword" class="col-form-label">Vuelva a introducir su contrase&ntilde;a</label>
                                                <input type="password" class="form-control" id="txtPassword"
                                                       placeholder="Password" maxlength="50">
                                            </div>
                                        </div>
                                        <button type="submit" class="btn btn-primary" name="btnRegistrarse">Registrarse</button>
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

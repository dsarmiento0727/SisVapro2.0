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
    <body>
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

                <form method="POST" action="">
                <div class="form-group">
                    <label for="txtUsuario">Nombre de usuario</label>
                    <input type="email" class="form-control" id="txtUsuario" name="txtUsuario" aria-describedby="emailHelp" placeholder="Ingrese su nombre de usuario aqui" required>
                </div>
                <div class="form-group">
                    <label for="txtPassword">Contrase&ntilde;a</label>
                    <input type="password" class="form-control" id="txtPassword" placeholder="Password">
                </div>
                <div class="form-group">
                    <label for="txtPassword">Vuelva a introducir su contrase&ntilde;a</label>
                    <input type="password" class="form-control" id="txtPassword" placeholder="Password">
                </div>
                    <button type="submit" class="btn btn-primary" name="btnRegistrarse">Registrarse</button>
                </form>

            </article>
        </section>
        <aside>

        </aside>
        <footer>

        </footer>
    </body>
</html>

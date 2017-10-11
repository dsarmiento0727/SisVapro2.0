<%-- 
    Document   : login
    Created on : 09-25-2017, 09:42:55 PM
    Author     : Karen Escobar, David Sramiento
--%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>

        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css" integrity="sha384-/Y6pD6FV/Vv2HJnA6t+vslU6fwYXjCFtcEpHbNJ0lyAFsXTsjBbfaDjzALeQsN6M" crossorigin="anonymous">
        <link rel="stylesheet" type="text/css" href="CSS/style.css">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Iniciar Sesión</title>
    </head>
    <body>
        <br><br>
    <center><h1><span class="badge badge-pill badge-secondary">Inicio de Sesión</span></h1></center>
    </div>
    <br><br>
    <center> 
        <table>
        <form action="" method="post"><table>
                <tr>
                    <td>
                        <div class="form-group" >
                            <label for="txtUsuario" style="text-align: center"><strong>Usuario</strong> </label>
                     </td>
                </tr>
                <tr>
                        <td>
                            <input id="txtUsuario" class="form-control" type="text" name="txtusuario" required="true" style="text-align: center" placeholder="Ingrese su Usuario">
                        </td>
                    </div>
                </tr>
                <tr>
                    <td>
                        <div class="form-group" >
                            <label for="txtPassword" style="text-align: center"><strong>Contraseña</strong></label>
                    </td>
                <tr/>
                <tr>
                    <td>
                            <input id="txtPassword" class="form-control" type="password" name="txtcontra" required="true" style="text-align: center" placeholder="Ingrese su contraseña">
                        </div>
                    </td>
                </tr>
                <tr>
                    <div class="btn-group" role="group" aria-label="Basic example" >
                        <td style="text-align: center">
                        <input type="submit" name="btnIngresar" class="btn btn-primary" value="Ingresar">
                        <input type="reset" name="btnCancelar" class="btn btn-danger" value="Cancelar">
                        </td>
                </tr>
                    <tr><td> <center><input type="checkbox" name="ck" value="recordar">Recordar Usuario</center></td></tr>
                </div>
        </form>
        </table>
    </center>
</body>
</html>
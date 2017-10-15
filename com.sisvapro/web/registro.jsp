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

                <div align="center">
                    <form method="POST" action="">
                        <table border="0" style="background-color: #99ff99" cellspacing="8" cellpadding="5">

                            <caption><label style="color: #333333; font-family: sans-serif; size: 15">Formulario De Registro</label></caption>
                            <tr>
                                <td><label style="color: #333333; font-family: sans-serif; size: 15">Nombres:</label></td>
                                <td><input type="text" name="txtNombreEmpleador" maxlength="60" required autocomplete="on" placeholder="Ingrese sus dos nombres" autofocus="on"></td>
                            </tr>
                            <tr>
                                <td><label style="color: #333333; font-family: sans-serif; size: 15">Apellidos:</label></td>
                                <td><input type="text" name="txtApellidosEmpleador" maxlength="60" required autocomplete="on" placeholder="Ingrese sus dos apellidos"></td>
                            </tr>
                            <tr>
                                <td><label style="color: #333333; font-family: sans-serif; size: 15">Direcci&oacute;n:</label></td>
                                <td><textarea rows="5" name="txtDireccionEmpleador" maxlength="80" placeholder="Direcci&oacute;n..."></textarea></td>
                            </tr>
                            <tr>
                                <td><label style="color: #333333; font-family: sans-serif; size: 15">Tel&eacute;fono:</label></td>
                                <td><input type="tel" name="txtTelefonoEmpleador" required placeholder="####-####" pattern="d\{4}[\-]d\{4}"></td>
                            </tr>
                            <tr>
                                <td><label style="color: #333333; font-family: sans-serif; size: 15">Correo:</label></td>
                                <td><input type="email" name="txtCorreoEmpleador" required placeholder="Correo Electronico"></td>
                            </tr>
                            <tr>
                                <td><label style="color: #333333; font-family: sans-serif; size: 15">Fecha De Nacimiento:</label></td>
                                <td><input type="date" name="txtFNacimientoEmpleador" required></td>
                            </tr>
                            <tr>
                                <th colspan="2"><label style="color: #333333; font-family: sans-serif; size: 15">Genero</label></th>
                            </tr>
                            <tr>
                                <td><label style="color: #333333; font-family: sans-serif; size: 15">Hombre</label><input type="radio" name="rdGeneroEmpleador" value="M" checked="checked"></td>
                                <td><label style="color: #333333; font-family: sans-serif; size: 15">Mujer</label><input type="radio" name="rdGeneroEmpleador" value="F"></td>
                            </tr>
                            <tr>
                                <td><label style="color: #333333; font-family: sans-serif; size: 15">A&ntilde;os De Experiencia:</label></td>
                                <td><input type="number" name="txtExperienciaEmpleador" min="1" max="65"></td>
                            </tr>
                            <tr>
                                <td><label style="color: #333333; font-family: sans-serif; size: 15">Foto De Perfil:</label></td>
                                <td><input type="file" name="txtFotoEmpleador" value="Seleccionar Foto" accept="image/*"></td>
                            </tr>
                            <tr>
                                <td><label style="color: #333333; font-family: sans-serif; size: 15">DUI:</label></td>
                                <td><input type="text" name="txtDuiEmpleador" required placeholder="########-#" pattern="d\{8}[\-]d\{1}"></td>
                            </tr>
                            <tr>
                                <td><label style="color: #333333; font-family: sans-serif; size: 15">NIT:</label></td>
                                <td><input type="text" name="txtNitEmpleador" required placeholder="####-######-###-#" pattern="d\{4}[\-]d\{6}[\-]d\{3}[\-]d\{1}"></td>
                            </tr>
                            <tr>
                                <td><label style="color: #333333; font-family: sans-serif; size: 15">Nacionalidad:</label></td>
                                <td><input type="text" name="txtNacionalidadEmpleador" required placeholder="Nacionalidad"></td>
                            </tr>
                            <tr>
                                <td colspan="2" align="center">
                                    <input type="submit" name="btnRegistrarEmpleador" value="Enviar Datos">
                                    <input type="reset" value="Cancelar">
                                </td>
                            </tr>

                        </table>
                    </form>
                </div>

            </article>
        </section>
        <aside>

        </aside>
        <footer>

        </footer>
    </body>
</html>

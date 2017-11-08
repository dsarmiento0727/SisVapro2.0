<%-- 
    Document   : index
    Created on : 10-16-2017, 09:56:37 PM
    Author     : David Sarmiento
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%

    String usuario = null;

    String tipoUsuario = null;
    
    String idUsuario = null;

    try {

        HttpSession objSesion = request.getSession(false);

        HttpSession objSesionTipo = request.getSession(false);

        usuario = (String) objSesion.getAttribute("usuario");

        tipoUsuario = (String) objSesionTipo.getAttribute("tipo");
        idUsuario = (String) objSesionTipo.getAttribute("id").toString();
        if (usuario == null) {
            response.sendRedirect("../accesoDenegado.jsp");
        }
        if (usuario.equals("Empleador")) {
            response.sendRedirect("menuEmpleador.jsp");
        } else if (usuario.equals("Empresa")) {
            response.sendRedirect("menuEmpresa.jsp");
        }

    } catch (Exception e) {

        out.print(e.toString());

    }

%>
<!DOCTYPE html>
<html>
    <head>

        <link rel="stylesheet" type="text/css" href="../css/bootstrap.min.css">
        <link rel="stylesheet" type="text/css" href="../css/style.css">
        <script type="text/javascript" src="../js/jquery-3.2.1.slim.min.js"></script>
        <script type="text/javascript" src="../js/popper.min.js"></script>
        <script type="text/javascript" src="../js/bootstrap.min.js"></script>
        <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
        <link rel="stylesheet" type="text/css" href="css/style.css">
        <script type="text/javascript" src="js/jquery-3.2.1.slim.min.js"></script>
        <script type="text/javascript" src="js/popper.min.js"></script>
        <script type="text/javascript" src="js/bootstrap.min.js"></script>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Inicio</title>
    </head>
    <body>
        <nav class="navbar navbar-expand-lg navbar-dark bg-dark">

            <a class="navbar-brand" href="../index.jsp">
                <img src="../imagenes/logo.png" width="30" height="30" class="d-inline-block align-top" alt="">
                Mundo Empleo
            </a>

            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>



            <div class="collapse navbar-collapse" id="navbarSupportedContent">

                <ul class="navbar-nav mr-auto">

                    <li class="nav-item active">

                        <a class="nav-link" href="#">Menu Principal</a>

                    </li>      
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            Gestionar
                        </a>
                        <div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
                            <a class="dropdown-item" href="gestionar/gestionarAdministrador.jsp">Administrador</a>
                            <a class="dropdown-item" href="gestionar/gestionarAreaProfesional.jsp">Area Profesional</a>
                            <a class="dropdown-item" href="gestionar/gestionarDepartamento.jsp">Departamento</a>
                            <a class="dropdown-item" href="gestionar/gestionarEmpleador.jsp">Empleador</a>
                            <a class="dropdown-item" href="gestionar/gestionarEmpresa.jsp">Empresa</a>
                            <a class="dropdown-item" href="gestionar/gestionarExperienciaLaboral.jsp">Experiencia Laboral</a>
                            <a class="dropdown-item" href="gestionar/gestionarFormacionAcademica.jsp">Formacion Academica</a>
                            <a class="dropdown-item" href="gestionar/gestionarHabilidad.jsp">Habilidad</a>
                            <a class="dropdown-item" href="gestionar/gestionarOfertaEmpleo.jsp">Oferta Empleo</a>
                            <a class="dropdown-item" href="gestionar/gestionarPais.jsp">Pais</a>
                            <a class="dropdown-item" href="gestionar/gestionarPersonaContacto.jsp">Persona Contacto</a>
                        </div>
                    </li>
                </ul>

                <form class="form-inline my-2 my-lg-0">

                    <span class="input-group-addon" id="basic-addon1"><%= usuario.toUpperCase()%></span>
                    <a href="../cerrarSession.jsp" class="btn btn-outline-danger my-2 my-sm-0">Cerrar Session</a>

                </form>


            </div>
        </nav>
        <div class="content-wrapper">
            <div class="container-fluid">
                <!-- Breadcrumbs-->
                <ol class="breadcrumb">
                    <li class="breadcrumb-item">
                        <a href="#">Inicio</a>
                    </li>
                    <li class="breadcrumb-item active">Mi Panel De control</li>
                </ol>
                <!-- Icon Cards-->
                <div class="row">
                    <div class="col-xl-3 col-sm-6 mb-3">
                        <div class="card text-white bg-primary o-hidden h-100">
                            <div class="card-body">
                                <div class="card-body-icon">
                                    <i class="fa fa-fw fa-comments"></i>
                                </div>
                                <div class="mr-5">26 Usuarios Registrados</div>
                            </div>
                            <a class="card-footer text-white clearfix small z-1" href="gestionar/gestionarUsuario.jsp">
                                <span class="float-left"><%= idUsuario %></span>
                                <span class="float-right">
                                    <i class="fa fa-angle-right"></i>
                                </span>
                            </a>
                        </div>
                    </div>
                    <div class="col-xl-3 col-sm-6 mb-3">
                        <div class="card text-white bg-warning o-hidden h-100">
                            <div class="card-body">
                                <div class="card-body-icon">
                                    <i class="fa fa-fw fa-list"></i>
                                </div>
                                <div class="mr-5">11 New Tasks!</div>
                            </div>
                            <a class="card-footer text-white clearfix small z-1" href="#">
                                <span class="float-left">View Details</span>
                                <span class="float-right">
                                    <i class="fa fa-angle-right"></i>
                                </span>
                            </a>
                        </div>
                    </div>
                    <div class="col-xl-3 col-sm-6 mb-3">
                        <div class="card text-white bg-success o-hidden h-100">
                            <div class="card-body">
                                <div class="card-body-icon">
                                    <i class="fa fa-fw fa-shopping-cart"></i>
                                </div>
                                <div class="mr-5">123 New Orders!</div>
                            </div>
                            <a class="card-footer text-white clearfix small z-1" href="#">
                                <span class="float-left">View Details</span>
                                <span class="float-right">
                                    <i class="fa fa-angle-right"></i>
                                </span>
                            </a>
                        </div>
                    </div>
                    <div class="col-xl-3 col-sm-6 mb-3">
                        <div class="card text-white bg-danger o-hidden h-100">
                            <div class="card-body">
                                <div class="card-body-icon">
                                    <i class="fa fa-fw fa-support"></i>
                                </div>
                                <div class="mr-5">13 New Tickets!</div>
                            </div>
                            <a class="card-footer text-white clearfix small z-1" href="#">
                                <span class="float-left">View Details</span>
                                <span class="float-right">
                                    <i class="fa fa-angle-right"></i>
                                </span>
                            </a>
                        </div>
                    </div>
                </div>
                <!-- Area Chart Example-->
                <div class="card mb-3">
                    <div class="card-header">
                        <i class="fa fa-area-chart"></i> Area Chart Example</div>
                    <div class="card-body">
                        <canvas id="myAreaChart" width="100%" height="30"></canvas>
                    </div>
                    <div class="card-footer small text-muted">Updated yesterday at 11:59 PM</div>
                </div>
                <div class="row">
                    <div class="col-lg-8">
                        <!-- Example Bar Chart Card-->
                        <div class="card mb-3">
                            <div class="card-header">
                                <i class="fa fa-bar-chart"></i> Bar Chart Example</div>
                            <div class="card-body">
                                <div class="row">
                                    <div class="col-sm-8 my-auto">
                                        <canvas id="myBarChart" width="100" height="50"></canvas>
                                    </div>
                                    <div class="col-sm-4 text-center my-auto">
                                        <div class="h4 mb-0 text-primary">$34,693</div>
                                        <div class="small text-muted">YTD Revenue</div>
                                        <hr>
                                        <div class="h4 mb-0 text-warning">$18,474</div>
                                        <div class="small text-muted">YTD Expenses</div>
                                        <hr>
                                        <div class="h4 mb-0 text-success">$16,219</div>
                                        <div class="small text-muted">YTD Margin</div>
                                    </div>
                                </div>
                            </div>
                            <div class="card-footer small text-muted">Updated yesterday at 11:59 PM</div>
                        </div>
                        <!-- Card Columns Example Social Feed-->
                        <div class="mb-0 mt-4">
                            <i class="fa fa-newspaper-o"></i> News Feed</div>
                        <hr class="mt-2">
                        <div class="card-columns">
                            <!-- Example Social Card-->
                            <div class="card mb-3">
                                <a href="#">
                                    <img class="card-img-top img-fluid w-100" src="https://unsplash.it/700/450?image=610" alt="">
                                </a>
                                <div class="card-body">
                                    <h6 class="card-title mb-1"><a href="#">David Miller</a></h6>
                                    <p class="card-text small">These waves are looking pretty good today!
                                        <a href="#">#surfsup</a>
                                    </p>
                                </div>
                                <hr class="my-0">
                                <div class="card-body py-2 small">
                                    <a class="mr-3 d-inline-block" href="#">
                                        <i class="fa fa-fw fa-thumbs-up"></i>Like</a>
                                    <a class="mr-3 d-inline-block" href="#">
                                        <i class="fa fa-fw fa-comment"></i>Comment</a>
                                    <a class="d-inline-block" href="#">
                                        <i class="fa fa-fw fa-share"></i>Share</a>
                                </div>
                                <hr class="my-0">
                                <div class="card-body small bg-faded">
                                    <div class="media">
                                        <img class="d-flex mr-3" src="http://placehold.it/45x45" alt="">
                                        <div class="media-body">
                                            <h6 class="mt-0 mb-1"><a href="#">John Smith</a></h6>Very nice! I wish I was there! That looks amazing!
                                            <ul class="list-inline mb-0">
                                                <li class="list-inline-item">
                                                    <a href="#">Like</a>
                                                </li>
                                                <li class="list-inline-item">·</li>
                                                <li class="list-inline-item">
                                                    <a href="#">Reply</a>
                                                </li>
                                            </ul>
                                            <div class="media mt-3">
                                                <a class="d-flex pr-3" href="#">
                                                    <img src="http://placehold.it/45x45" alt="">
                                                </a>
                                                <div class="media-body">
                                                    <h6 class="mt-0 mb-1"><a href="#">David Miller</a></h6>Next time for sure!
                                                    <ul class="list-inline mb-0">
                                                        <li class="list-inline-item">
                                                            <a href="#">Like</a>
                                                        </li>
                                                        <li class="list-inline-item">·</li>
                                                        <li class="list-inline-item">
                                                            <a href="#">Reply</a>
                                                        </li>
                                                    </ul>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="card-footer small text-muted">Posted 32 mins ago</div>
                            </div>
                            <!-- Example Social Card-->
                            <div class="card mb-3">
                                <a href="#">
                                    <img class="card-img-top img-fluid w-100" src="https://unsplash.it/700/450?image=180" alt="">
                                </a>
                                <div class="card-body">
                                    <h6 class="card-title mb-1"><a href="#">John Smith</a></h6>
                                    <p class="card-text small">Another day at the office...
                                        <a href="#">#workinghardorhardlyworking</a>
                                    </p>
                                </div>
                                <hr class="my-0">
                                <div class="card-body py-2 small">
                                    <a class="mr-3 d-inline-block" href="#">
                                        <i class="fa fa-fw fa-thumbs-up"></i>Like</a>
                                    <a class="mr-3 d-inline-block" href="#">
                                        <i class="fa fa-fw fa-comment"></i>Comment</a>
                                    <a class="d-inline-block" href="#">
                                        <i class="fa fa-fw fa-share"></i>Share</a>
                                </div>
                                <hr class="my-0">
                                <div class="card-body small bg-faded">
                                    <div class="media">
                                        <img class="d-flex mr-3" src="http://placehold.it/45x45" alt="">
                                        <div class="media-body">
                                            <h6 class="mt-0 mb-1"><a href="#">Jessy Lucas</a></h6>Where did you get that camera?! I want one!
                                            <ul class="list-inline mb-0">
                                                <li class="list-inline-item">
                                                    <a href="#">Like</a>
                                                </li>
                                                <li class="list-inline-item">·</li>
                                                <li class="list-inline-item">
                                                    <a href="#">Reply</a>
                                                </li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                                <div class="card-footer small text-muted">Posted 46 mins ago</div>
                            </div>
                            <!-- Example Social Card-->
                            <div class="card mb-3">
                                <a href="#">
                                    <img class="card-img-top img-fluid w-100" src="https://unsplash.it/700/450?image=281" alt="">
                                </a>
                                <div class="card-body">
                                    <h6 class="card-title mb-1"><a href="#">Jeffery Wellings</a></h6>
                                    <p class="card-text small">Nice shot from the skate park!
                                        <a href="#">#kickflip</a>
                                        <a href="#">#holdmybeer</a>
                                        <a href="#">#igotthis</a>
                                    </p>
                                </div>
                                <hr class="my-0">
                                <div class="card-body py-2 small">
                                    <a class="mr-3 d-inline-block" href="#">
                                        <i class="fa fa-fw fa-thumbs-up"></i>Like</a>
                                    <a class="mr-3 d-inline-block" href="#">
                                        <i class="fa fa-fw fa-comment"></i>Comment</a>
                                    <a class="d-inline-block" href="#">
                                        <i class="fa fa-fw fa-share"></i>Share</a>
                                </div>
                                <div class="card-footer small text-muted">Posted 1 hr ago</div>
                            </div>
                            <!-- Example Social Card-->
                            <div class="card mb-3">
                                <a href="#">
                                    <img class="card-img-top img-fluid w-100" src="https://unsplash.it/700/450?image=185" alt="">
                                </a>
                                <div class="card-body">
                                    <h6 class="card-title mb-1"><a href="#">David Miller</a></h6>
                                    <p class="card-text small">It's hot, and I might be lost...
                                        <a href="#">#desert</a>
                                        <a href="#">#water</a>
                                        <a href="#">#anyonehavesomewater</a>
                                        <a href="#">#noreally</a>
                                        <a href="#">#thirsty</a>
                                        <a href="#">#dehydration</a>
                                    </p>
                                </div>
                                <hr class="my-0">
                                <div class="card-body py-2 small">
                                    <a class="mr-3 d-inline-block" href="#">
                                        <i class="fa fa-fw fa-thumbs-up"></i>Like</a>
                                    <a class="mr-3 d-inline-block" href="#">
                                        <i class="fa fa-fw fa-comment"></i>Comment</a>
                                    <a class="d-inline-block" href="#">
                                        <i class="fa fa-fw fa-share"></i>Share</a>
                                </div>
                                <hr class="my-0">
                                <div class="card-body small bg-faded">
                                    <div class="media">
                                        <img class="d-flex mr-3" src="http://placehold.it/45x45" alt="">
                                        <div class="media-body">
                                            <h6 class="mt-0 mb-1"><a href="#">John Smith</a></h6>The oasis is a mile that way, or is that just a mirage?
                                            <ul class="list-inline mb-0">
                                                <li class="list-inline-item">
                                                    <a href="#">Like</a>
                                                </li>
                                                <li class="list-inline-item">·</li>
                                                <li class="list-inline-item">
                                                    <a href="#">Reply</a>
                                                </li>
                                            </ul>
                                            <div class="media mt-3">
                                                <a class="d-flex pr-3" href="#">
                                                    <img src="http://placehold.it/45x45" alt="">
                                                </a>
                                                <div class="media-body">
                                                    <h6 class="mt-0 mb-1"><a href="#">David Miller</a></h6>
                                                    <img class="img-fluid w-100 mb-1" src="https://unsplash.it/700/450?image=789" alt="">I'm saved, I found a cactus. How do I open this thing?
                                                    <ul class="list-inline mb-0">
                                                        <li class="list-inline-item">
                                                            <a href="#">Like</a>
                                                        </li>
                                                        <li class="list-inline-item">·</li>
                                                        <li class="list-inline-item">
                                                            <a href="#">Reply</a>
                                                        </li>
                                                    </ul>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="card-footer small text-muted">Posted yesterday</div>
                            </div>
                        </div>
                        <!-- /Card Columns-->
                    </div>
                    <div class="col-lg-4">
                        <!-- Example Pie Chart Card-->
                        <div class="card mb-3">
                            <div class="card-header">
                                <i class="fa fa-pie-chart"></i> Pie Chart Example</div>
                            <div class="card-body">
                                <canvas id="myPieChart" width="100%" height="100"></canvas>
                            </div>
                            <div class="card-footer small text-muted">Updated yesterday at 11:59 PM</div>
                        </div>
                        <!-- Example Notifications Card-->
                        <div class="card mb-3">
                            <div class="card-header">
                                <i class="fa fa-bell-o"></i> Feed Example</div>
                            <div class="list-group list-group-flush small">
                                <a class="list-group-item list-group-item-action" href="#">
                                    <div class="media">
                                        <img class="d-flex mr-3 rounded-circle" src="http://placehold.it/45x45" alt="">
                                        <div class="media-body">
                                            <strong>David Miller</strong>posted a new article to
                                            <strong>David Miller Website</strong>.
                                            <div class="text-muted smaller">Today at 5:43 PM - 5m ago</div>
                                        </div>
                                    </div>
                                </a>
                                <a class="list-group-item list-group-item-action" href="#">
                                    <div class="media">
                                        <img class="d-flex mr-3 rounded-circle" src="http://placehold.it/45x45" alt="">
                                        <div class="media-body">
                                            <strong>Samantha King</strong>sent you a new message!
                                            <div class="text-muted smaller">Today at 4:37 PM - 1hr ago</div>
                                        </div>
                                    </div>
                                </a>
                                <a class="list-group-item list-group-item-action" href="#">
                                    <div class="media">
                                        <img class="d-flex mr-3 rounded-circle" src="http://placehold.it/45x45" alt="">
                                        <div class="media-body">
                                            <strong>Jeffery Wellings</strong>added a new photo to the album
                                            <strong>Beach</strong>.
                                            <div class="text-muted smaller">Today at 4:31 PM - 1hr ago</div>
                                        </div>
                                    </div>
                                </a>
                                <a class="list-group-item list-group-item-action" href="#">
                                    <div class="media">
                                        <img class="d-flex mr-3 rounded-circle" src="http://placehold.it/45x45" alt="">
                                        <div class="media-body">
                                            <i class="fa fa-code-fork"></i>
                                            <strong>Monica Dennis</strong>forked the
                                            <strong>startbootstrap-sb-admin</strong>repository on
                                            <strong>GitHub</strong>.
                                            <div class="text-muted smaller">Today at 3:54 PM - 2hrs ago</div>
                                        </div>
                                    </div>
                                </a>
                                <a class="list-group-item list-group-item-action" href="#">View all activity...</a>
                            </div>
                            <div class="card-footer small text-muted">Updated yesterday at 11:59 PM</div>
                        </div>
                    </div>
                </div>
                <!-- Example DataTables Card-->
                <div class="card mb-3">
                    <div class="card-header">
                        <i class="fa fa-table"></i> Data Table Example</div>
                    <div class="card-body">
                        <div class="table-responsive">
                            <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                                <thead>
                                    <tr>
                                        <th>Name</th>
                                        <th>Position</th>
                                        <th>Office</th>
                                        <th>Age</th>
                                        <th>Start date</th>
                                        <th>Salary</th>
                                    </tr>
                                </thead>
                                <tfoot>
                                    <tr>
                                        <th>Name</th>
                                        <th>Position</th>
                                        <th>Office</th>
                                        <th>Age</th>
                                        <th>Start date</th>
                                        <th>Salary</th>
                                    </tr>
                                </tfoot>
                                <tbody>
                                    <tr>
                                        <td>Tiger Nixon</td>
                                        <td>System Architect</td>
                                        <td>Edinburgh</td>
                                        <td>61</td>
                                        <td>2011/04/25</td>
                                        <td>$320,800</td>
                                    </tr>
                                    <tr>
                                        <td>Garrett Winters</td>
                                        <td>Accountant</td>
                                        <td>Tokyo</td>
                                        <td>63</td>
                                        <td>2011/07/25</td>
                                        <td>$170,750</td>
                                    </tr>
                                    <tr>
                                        <td>Ashton Cox</td>
                                        <td>Junior Technical Author</td>
                                        <td>San Francisco</td>
                                        <td>66</td>
                                        <td>2009/01/12</td>
                                        <td>$86,000</td>
                                    </tr>
                                    <tr>
                                        <td>Cedric Kelly</td>
                                        <td>Senior Javascript Developer</td>
                                        <td>Edinburgh</td>
                                        <td>22</td>
                                        <td>2012/03/29</td>
                                        <td>$433,060</td>
                                    </tr>
                                   
    
                                    <tr>
                                        <td>Vivian Harrell</td>
                                        <td>Financial Controller</td>
                                        <td>San Francisco</td>
                                        <td>62</td>
                                        <td>2009/02/14</td>
                                        <td>$452,500</td>
                                    </tr>
                                    <tr>
                                        <td>Timothy Mooney</td>
                                        <td>Office Manager</td>
                                        <td>London</td>
                                        <td>37</td>
                                        <td>2008/12/11</td>
                                        <td>$136,200</td>
                                    </tr>
                                    <tr>
                                        <td>Jackson Bradshaw</td>
                                        <td>Director</td>
                                        <td>New York</td>
                                        <td>65</td>
                                        <td>2008/09/26</td>
                                        <td>$645,750</td>
                                    </tr>
                                    <tr>
                                        <td>Olivia Liang</td>
                                        <td>Support Engineer</td>
                                        <td>Singapore</td>
                                        <td>64</td>
                                        <td>2011/02/03</td>
                                        <td>$234,500</td>
                                    </tr>
                                    <tr>
                                        <td>Bruno Nash</td>
                                        <td>Software Engineer</td>
                                        <td>London</td>
                                        <td>38</td>
                                        <td>2011/05/03</td>
                                        <td>$163,500</td>
                                    </tr>
                                    <tr>
                                        <td>Sakura Yamamoto</td>
                                        <td>Support Engineer</td>
                                        <td>Tokyo</td>
                                        <td>37</td>
                                        <td>2009/08/19</td>
                                        <td>$139,575</td>
                                    </tr>
                                    <tr>
                                        <td>Thor Walton</td>
                                        <td>Developer</td>
                                        <td>New York</td>
                                        <td>61</td>
                                        <td>2013/08/11</td>
                                        <td>$98,540</td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                    <div class="card-footer small text-muted">Updated yesterday at 11:59 PM</div>
                </div>
            </div>
            <!-- /.container-fluid-->
            <!-- /.content-wrapper-->
            <footer class="sticky-footer">
                <div class="container">
                    <div class="text-center">
                        <small>Copyright © Your Website 2017</small>
                    </div>
                </div>
            </footer>
            <!-- Scroll to Top Button-->
            <a class="scroll-to-top rounded" href="#page-top">
                <i class="fa fa-angle-up"></i>
            </a>
            <!-- Logout Modal-->
            <div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
                <div class="modal-dialog" role="document">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h5 class="modal-title" id="exampleModalLabel">Ready to Leave?</h5>
                            <button class="close" type="button" data-dismiss="modal" aria-label="Close">
                                <span aria-hidden="true">×</span>
                            </button>
                        </div>
                        <div class="modal-body">Select "Logout" below if you are ready to end your current session.</div>
                        <div class="modal-footer">
                            <button class="btn btn-secondary" type="button" data-dismiss="modal">Cancel</button>
                            <a class="btn btn-primary" href="login.html">Logout</a>
                        </div>
                    </div>
                </div>
            </div>

    </body>
</html>
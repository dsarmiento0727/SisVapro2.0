/* 
 * 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
function cargarTipoUsuario(id, nivel) {
    document.frmTipoUsuario.txtIdTipoU.value = id;

    document.frmTipoUsuario.txtNivel.value = nivel;
}
function cargarPais(id, nombre) {
    document.frmPais.txtIdPais.value = id;
    document.frmPais.txtNombre.value = nombre;
}
function cargarDepartamento(id, nombre, pa) {
    document.frmDepartamento.txtIdDepartamento.value = id;
    document.frmDepartamento.txtNombre.value = nombre;
    document.frmDepartamento.lstPais.value = pa;
}
function cargarMunicipio(id, nombre) {
    document.frmMunicipio.txtIdMunicipio.value = id;
    document.frmMunicipio.txtNombre.value = nombre;
}
function cargarArea(id, nombre) {
    document.frmArea.txtIdArea.value = id;
    document.frmArea.txtNombre.value = nombre;
}
function cargarEmpresa(id, nombre, razon, nit, direccion, pais, depa, log, pagina, sector, idu) {

    //Ni se como funciona pero funciona att.Sarmiento :v
    const blb = new Blob([log], {type: "text/plain"});
    const reader = new FileReader();
    const foto = null;

// This fires after the blob has been read/loaded.
    reader.addEventListener('loadend', (e) => {
        const text = e.srcElement.result;
        document.frmEmpresa.logo2.value = text;
        console.log(text);
    });

// Start reading the blob as text.
    reader.readAsText(blb);


    document.frmEmpresa.txtIdEmpresa.value = id;
    document.frmEmpresa.txtNombre.value = nombre;
    document.frmEmpresa.txtRazon.value = razon;
    document.frmEmpresa.txtNit.value = nit;
    document.frmEmpresa.txtDireccion.value = direccion;
    document.frmEmpresa.lstPais.value = pais;
    document.frmEmpresa.lstDepartamento.value = depa;
    document.frmEmpresa.txtPagina.value = pagina;
    document.frmEmpresa.lstSector.value = sector;
    document.frmEmpresa.txtIdUsuario.value = idu;
}
function cargarIdioma(id, nombre) {
    document.frmIdioma.txtIdIdioma.value = id;
    document.frmIdioma.txtNombre.value = nombre;
}
function cargarMunicipio(id, nombre) {
    document.frmMunicipio.txtIdMunicipio.value = id;
    document.frmMunicipio.txtNombre.value = nombre;
}
function cargarHabilidad(id, nombre, ide) {
    document.frmHabilidad.txtIdHabilidad.value = id;
    document.frmHabilidad.txtNombre.value = nombre;
    document.frmHabilidad.txtIdEmpleador.value = ide;
}
function cargarAreaProfesional(id, nombre) {
    document.frmProfesion.txtIdProfesion.value = id;
    document.frmProfesion.txtNombre.value = nombre;
}
function cargarRanking(id, clasi, usuario) {
    document.frmRanking.txtIdRanking.value = id;
    document.frmRanking.txtClasificacion.value = clasi;
    document.frmRanking.lstUsuario.value = usuario;
}
function cargarExperienciaLaboral(id, empresa, jefe, telefono, puesto, desde, hasta, tipo, idEmpleado) {
    document.frmExperienciaLaboral.txtIdExperienciaLaboral.value = id;
    document.frmExperienciaLaboral.txtNombreEmpresa.value = empresa;
    document.frmExperienciaLaboral.txtJefe.value = jefe;
    document.frmExperienciaLaboral.txtTelefono.value = telefono;
    document.frmExperienciaLaboral.txtPuesto.value = puesto;
    document.frmExperienciaLaboral.txtDesde.value = desde;
    document.frmExperienciaLaboral.txtHasta.value = hasta;
    document.frmExperienciaLaboral.lstTipoContrato.value = tipo;
    document.frmExperienciaLaboral.txtIdEmpleador.value = idEmpleado;
}

function cargarFormacionAcademica(id, nivel, estado, car, ide) {
    document.frmFormacion.txtIdFormacionAcademica.value = id;
    document.frmFormacion.lstNivel.value = nivel;
    document.frmFormacion.lstEstado.value = estado;
    document.frmFormacion.txtCarrera.value = car;
    document.frmFormacion.txtIdEmpleador.value = ide;
}

function cargarOferta(id, puesto, canti, tipo, experiencia, genero, edad, salario, empresa, pais, departamento, descripcion) {
    document.frmOferta.txtIdOferta.value = id;
    document.frmOferta.txtPuesto.value = puesto;
    document.frmOferta.txtCanti.value = canti;
    document.frmOferta.lstContratacion.value = tipo;
    document.frmOferta.experiencia.value = experiencia;
    document.frmOferta.genero.value = genero;
    document.frmOferta.txtedad.value = edad;
    document.frmOferta.txtsalario.value = salario;
    document.frmOferta.lstEmpresa.value = empresa;
    document.frmOferta.lstPais.value = pais;
    document.frmOferta.lstDepartamento.value = departamento;
    document.frmOferta.txtDescripcion.value = descripcion;

}
function cargarContacto(id, nombres, apellidos, cargo, telefono1, telefono2, empresa) {
    document.frmContacto.txtIdContacto.value = id;
    document.frmContacto.txtNombres.value = nombres;
    document.frmContacto.txtApellidos.value = apellidos;
    document.frmContacto.txtCargo.value = cargo;
    document.frmContacto.txtTelefono1.value = telefono1;
    document.frmContacto.txtTelefono2.value = telefono2;
    document.frmContacto.lstEmpresa.value = empresa;
}
function cargarEmpleador(id, nombres, apellidos, direccion, telefono, correo, fecha,
        genero, anio, foto, dui, nit, nacionalidad, user, pais, depa, habilidad, formacion, expe, area) {
    document.frmEmpleador.txtIdPerfil.value = id;
    document.frmEmpleador.txtNombres.values = nombres;
    document.frmEmpleador.txtApellidos.values = apellidos;
    document.frmEmpleador.txtDirecciom.values = direccion;
    document.frmEmpleador.txtTelefono.values = telefono;
    document.frmEmpleador.txtCorreoE.values = correo;
    document.frmEmpleador.txtFechaNac.values = fecha;
    document.frmEmpleador.genero.values = genero;
    document.frmEmpleador.txtAnio.values = anio;
    document.frmEmpleador.foto.values = foto;
    document.frmEmpleador.txtDui.values = dui;
    document.frmEmpleador.txtNit.values = nit;
    document.frmEmpleador.txtNacionalidad.values = nacionalidad;
    document.frmEmpleador.lstUsuario.values = user;
    document.frmEmpleador.lstPais.values = pais;
    document.frmEmpleador.lstDepartamento.values = depa;
    document.frmEmpleador.lstHabilidad.values = habilidad;
    document.frmEmpleador.lstFormacion.values = formacion;
    document.frmEmpleador.lstProfesion.values = expe;
    document.frmEmpleador.lstArea.values = area;

}

function cargarAdmin(ida, nom, ape, dui, nit, tele, dir, ge, cor, pa, de, idu) {
    document.frmAdministrador.txtIdAdministrador.value = ida;
    document.frmAdministrador.txtNombres.value = nom;
    document.frmAdministrador.txtApellidos.value = ape;
    document.frmAdministrador.txtDui.value = dui;
    document.frmAdministrador.txtNit.value = nit;
    document.frmAdministrador.txtTelefono.value = tele;
    document.frmAdministrador.txtDireccion.value = dir;
    document.frmAdministrador.genero.value = ge;
    document.frmAdministrador.txtCorreo.value = cor;
    document.frmAdministrador.lstPais.value = pa;
    document.frmAdministrador.lstDepartamento.value = de;
    document.frmAdministrador.txtIdUsuario.value = idu;
}

function cargarUsuario(idu, nom, cla, idt) {
    document.frmUsuario.txtIdUsuario.value = idu;
    document.frmUsuario.txtNombreUsuario.value = nom;
    document.frmUsuario.txtClave.value = cla;
    document.frmUsuario.lstTipoUsuario.value = idt;
}

function Modificar() {
    confirmar = confirm("¿Desea Modificar el registro?");
    if (confirmar)
// si pulsamos en aceptar
        alert('Datos Modificados correctamente');
    else
// si pulsamos en cancelar
        alert('No se ha realizado ningun cambio');
}
function Eliminar() {
    confirmar = confirm("¿Desea Eliminar el registro?");
    if (confirmar)
// si pulsamos en aceptar
        alert('Datos Eliminado correctamente');
    else
// si pulsamos en cancelar
        alert('No se ha realizado ningun cambio');

}

function cargarimagen(imagenvar) {

    var image = new Image();

    var src = '../../imagenes/fotosperfiles/' + imagenvar; //Esta es la variable que contiene la url de una imagen ejemplo, luego puedes poner la que quieras
    image.src = src;

    $('#image').append(image);
}


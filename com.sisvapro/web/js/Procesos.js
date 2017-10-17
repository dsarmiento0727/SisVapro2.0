/* 
 * 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */function cargarTipoUsuario(id,nivel){
    document.frmTipoUsuario.txtIdTipoU.value=id;

    document.frmTipoUsuario.txtNivel.value=nivel;
}
function cargarPais(id,nombre){
    document.frmPais.txtIdPais.value=id;
    document.frmPais.txtNombre.value=nombre;
}
function cargarDepartamento(id,nombre){
    document.frmDepartamento.txtIdDepartamento.value=id;
    document.frmDepartamento.txtNombre.value=nombre;
}
function cargarMunicipio(id,nombre){
    document.frmMunicipio.txtIdMunicipio.value=id;
    document.frmMunicipio.txtNombre.value=nombre;
}
function cargarArea(id,nombre){
    document.frmArea.txtIdArea.value=id;
    document.frmArea.txtNombre.value=nombre;
}
function cargarEmpresa(id,juridico,comercial,giro,fecha,nit,direccion,usuario){
    document.frmEmpresa.txtIdEmpresa.value=id;
    document.frmEmpresa.txtNombreJ.value=juridico;
    document.frmEmpresa.txtNombreC.value=comercial;
    document.frmEmpresa.txtFechaInscripcion.value=fecha;
    document.frmEmpresa.txtDireccion.value=direccion;
    document.frmEmpresa.txtNit.value=nit;
    document.frmEmpresa.lstUsuario.value=usuario;
}
function cargarIdioma(id,nombre){
    document.frmIdioma.txtIdIdioma.value=id;
    document.frmIdioma.txtNombre.value=nombre;
}
function cargarMunicipio(id,nombre){
    document.frmMunicipio.txtIdMunicipio.value=id;
    document.frmMunicipio.txtNombre.value=nombre;
}
function cargarHabilidad(id,nombre){
    document.frmHabilidad.txtIdHabilidad.value=id;
    document.frmHabilidad.txtNombre.value=nombre;
}
function cargarAreaProfesional(id,nombre){
    document.frmProfesion.txtIdProfesion.value=id;
    document.frmProfesion.txtNombre.value=nombre;
}
function cargarRanking(id,clasi,usuario){
    document.frmRanking.txtIdRanking.value=id;
    document.frmRanking.txtClasificacion.value=clasi;
    document.frmRanking.lstUsuario.value=usuario;
}
function cargarExperienciaLaboral(id,empresa,jefe,telefono,puesto,desde, hasta,tipo){
    document.frmExperienciaLaboral.txtIdExperienciaLaboral.value=id;
    document.frmExperienciaLaboral.txtNombreEmpresa.value=empresa;
    document.frmExperienciaLaboral.txtJefe.value=jefe;
    document.frmExperienciaLaboral.txtTelefono.value=telefono;
    document.frmExperienciaLaboral.txtPuesto.value=puesto;
    document.frmExperienciaLaboral.txtDesde.value=desde;
    document.frmExperienciaLaboral.txtHasta.value=hasta;
    document.frmExperienciaLaboral.lstTipoContrato.value=tipo;
}
function cargarOferta(id,puesto,tipo,genero,edad,salario,empresa,pais,departamento,descripcion,experiencia){
    document.frmOferta.txtIdOferta.value=id;
    document.frmOferta.txtPuesto.value=puesto;
    document.frmOferta.lstContratacion.value=tipo;
    document.frmOferta.genero.value=genero;
    document.frmOferta.txtedad.value=edad;
    document.frmOferta.txtsalario.value=salario;
    document.frmOferta.lstEmpresa.value=empresa;
    document.frmOferta.lstPais.value=pais;
    document.frmOferta.lstDepartamento.value=departamento;
    document.frmOferta.txtDescripcion.value=descripcion;
    document.frmOferta.experiencia.value=experiencia;
}
function cargarContrtador(id,nombres,apellidos,descripcion,correo,empresa){
    document.frmContratador.txtIdContratador.value=id;
    document.frmContratador.txtNombres.value=nombres;
    document.frmContratador.txtApellidos.value=apellidos;
    document.frmContratador.txtDescripcion.value=descripcion;
    document.frmContratadortxtCorreo.value=correo;
    document.frmContratador.lstEmpresa.value=empresa;
}
function cargarPublicista(id,nombres,apellidos,correo,empresa){
    document.frmContratador.txtIdContratador.value=id;
    document.frmContratador.txtNombres.value=nombres;
    document.frmContratador.txtApellidos.value=apellidos;
    document.frmContratadortxtCorreo.value=correo;
    document.frmContratador.lstEmpresa.value=empresa;
}

// Con esto Funciona DataTable
$(document).ready(function () {
        $('#grid').DataTable();
    });
function Modificar(){ 
confirmar=confirm("¿Desea Modificar el registro?"); 
if (confirmar) 
// si pulsamos en aceptar
alert('Datos Modificados correctamente');
else 
// si pulsamos en cancelar
alert('No se ha realizado ningun cambio'); 
} 
function Eliminar(){ 
confirmar=confirm("¿Desea Eliminar el registro?"); 
if (confirmar) 
// si pulsamos en aceptar
alert('Datos Eliminado correctamente');
else 
// si pulsamos en cancelar
alert('No se ha realizado ningun cambio'); 
}


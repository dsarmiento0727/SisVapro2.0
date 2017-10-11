/* 
 * 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
function cargarTipoUsuario(id,nivel){
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
function cargarProfesion(id,nombre){
    document.frmProfesion.txtIdProfesion.value=id;
    document.frmProfesion.txtNombre.value=nombre;
}
function cargarRanking(id,clasi,usuario){
    document.frmRanking.txtIdRanking.value=id;
    document.frmRanking.txtClasificacion.value=clasi;
    document.frmRanking.lstUsuario.value=usuario;
}
function cargarTrabajo(id,empresa,jefe,puesto,tiempo){
    document.frmTrabajo.txtIdEmpresa.value=id;
    document.frmTrabajo.txtNombre.value=empresa;
    document.frmTrabajo.txtEncargado.value=jefe;
    document.frmTrabajo.txtPuestoD.value=puesto;
    document.frmTrabajo.txtTiempoL.value=tiempo;
}
function cargarCatalogo(id,nombre,area,contratador){
    document.frmCatalogo.txtIdCatalogo.value=id;
    document.frmCatalogo.txtNombre.value=nombre;
    document.frmCatalogo.lstArea.value=area;
    document.frmCatalogo.lstContratador.value=contratador;
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


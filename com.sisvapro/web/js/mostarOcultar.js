/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/*
 * FUNCION DE EJEMPLO NO TOCAR!!!!
 */
function mostrar() {
    document.getElementById('oculto').style.display = 'block';
}
/*
 * Primera funcion en esta funcion de avanzara de pagina,
 * Se mostrata la paguina siguiente y se ocultara la pagina actual.
 */
function siguientePagina() {
    document.getElementById('pagina1').style.display = 'none';
    document.getElementById('pagina2').style.display = 'block';
    }
/*
 * Segunda funcion en esta funcion de retrocedera de pagina,
 * Se mostrata la paguina anterior y se ocultara la pagina actual.
 */
function anteriorPagina() {
    document.getElementById('pagina2').style.display = 'none';
    document.getElementById('pagina1').style.display = 'block';
    
     
     
}
function anteriorPagina2() {
    document.getElementById('pagina3').style.display = 'none';
    document.getElementById('pagina2').style.display = 'block';
    
     
     
}

function siguientePagina2() {
    document.getElementById('pagina2').style.display = 'none';
    document.getElementById('pagina3').style.display = 'block';
}
/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

function mostrar() {
    document.getElementById('oculto').style.display = 'block';
}

function siguientePagina() {
    document.getElementById('pagina1').style.display = 'none';
    document.getElementById('pagina2').style.display = 'block';
}

function anteriorPagina() {
    document.getElementById('pagina2').style.display = 'none';
    document.getElementById('pagina1').style.display = 'block';
}


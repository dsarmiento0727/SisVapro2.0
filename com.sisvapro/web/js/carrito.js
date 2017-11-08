/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
 var carritoI = [];

function cargarACarrito(id,puesto, canti, tipo, experiencia, genero, edad, salario, empresa, pais, departamento, descripcion) {
   var carritoC = [id,puesto, canti, tipo, experiencia, genero, edad, salario, empresa, pais, departamento, descripcion];
  
    carritoI.push(carritoC);
}

funcion impirmirCarrito()
{
    document.write(carritoI);
}



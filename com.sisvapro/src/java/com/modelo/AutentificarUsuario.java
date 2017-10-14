/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.modelo;

import com.conexion.Conexion;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

/**
 * Nombre de la Clase: Usuario
 * Fecha: 12 de Octubre de 2017
 * CopyRight: MundoEmpleo SA. De CV.
 * @author David Sarmiento
 */
public class AutentificarUsuario {
        
    
    Conexion objConexion = new Conexion();
    
    
    public int autenticarUsuario(String user, String contra) throws Exception {
        Conexion objConexion = new Conexion();
        ResultSet res;
        int tipoU=0;

        try {
            objConexion.conectar();
            String sql = "select * from public.usuario where username=? and password=?";
            PreparedStatement pre = objConexion.getCon().prepareStatement(sql,ResultSet.TYPE_SCROLL_INSENSITIVE,ResultSet.CONCUR_READ_ONLY);
            pre.setString(1, user);
            pre.setString(2, contra);
            res = pre.executeQuery();

          if(res.absolute(1))
          {
              tipoU= res.getInt("idTipo");
              
          }
          
             return tipoU; 
          
        } catch (Exception e) {
            
            throw e;
        } finally {
            objConexion.desconectar();
        }
       

    }
}

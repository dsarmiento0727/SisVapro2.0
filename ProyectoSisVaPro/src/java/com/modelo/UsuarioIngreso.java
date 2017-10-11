package com.modelo;

import com.conexion.Conexion;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

/**
 * Nombre de la clase:UsuarioIngreso Versión:1.0 Fecha:10/10/2017
 * Copyright:SISVAPRO
 *
 * @author Karen Escobar, David Sarmiento
 */
public class UsuarioIngreso extends Conexion {

    public int autenticarUsuario(String user, String contra) throws Exception {
        ResultSet res;
        int tipoU=2;

        try {
            this.conectar();
            String sql = "select * from usuario where username=? and password=?";
            PreparedStatement pre = this.getCon().prepareStatement(sql);
            pre.setString(1, user);
            pre.setString(2, contra);
            res = pre.executeQuery();

          if(res.absolute(1))
          {
              tipoU = res.getInt("idTipo");
              
              return tipoU;
          }
              
          
        } catch (Exception e) {

            throw e;
        } finally {
            this.desconectar();
        }
        return tipoU;
    }
}

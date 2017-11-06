/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.modelo;

import com.conexion.Conexion;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author carlos
 */
public class CrudTipoUsuario extends Conexion{
      public void insertarTipoUsuario(TipoUsuario ti)throws Exception{
        try {
            this.conectar();
            String sql="insert into tipoUsuario(nivel) values(?)";
            PreparedStatement pre=this.getCon().prepareStatement(sql);
            pre.setString(1, ti.getNivel());
            pre.executeUpdate();
        } catch (Exception e) {
            throw e;
        }
        finally{
            this.desconectar();
        }
    }
    
    public void modificarTipoUsuario(TipoUsuario ti)throws Exception{
        try {
            this.conectar();
            String sql="update tipoUsuario set nivel=? where idTipoUsuario=?";
            PreparedStatement pre=this.getCon().prepareStatement(sql);
            pre.setString(1, ti.getNivel());
            pre.setInt(2, ti.getIdTipoUsuario());
            pre.executeUpdate();
        } catch (Exception e) {
            throw e;
        }
        finally{
            this.desconectar();
        }
    }
    
    public void eliminarTipoUsuario(TipoUsuario ti)throws Exception{
        try {
            this.conectar();
            String sql="delete from tipoUsuario where idTipoUsuario=?";
            PreparedStatement pre=this.getCon().prepareStatement(sql);
            pre.setInt(1, ti.getIdTipoUsuario());
            pre.executeUpdate();
        } catch (Exception e) {
            throw e;
        }
        finally{
            this.desconectar();
        }
    }
    
    public List<TipoUsuario> mostrarTipoUsuario()throws Exception{
        List<TipoUsuario> listaTipoUsuario=new ArrayList();
        ResultSet res;
        try {
           this.conectar();
            String sql="select*from tipoUsuario";
            PreparedStatement pre =this.getCon().prepareCall(sql);
            res=pre.executeQuery();
            while(res.next()){
                TipoUsuario ti=new TipoUsuario();
                ti.setIdTipoUsuario(res.getInt("idTipoUsuario"));
                ti.setNivel(res.getString("nivel"));
                listaTipoUsuario.add(ti);
            }
        } catch (Exception e) {
            throw e;
        }
        finally{
            this.desconectar();
        }
        return listaTipoUsuario;
    }
    
}

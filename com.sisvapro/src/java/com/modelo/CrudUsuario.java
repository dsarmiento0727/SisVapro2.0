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
public class CrudUsuario extends Conexion{
    public void insertarUsuario(Usuario u)throws Exception{
        try {
            this.conectar();
            String sql="insert into usuario values(?,?,?,?)";
            PreparedStatement pre=this.getCon().prepareStatement(sql);
            pre.setInt(1, u.getIdUsuario());
            pre.setString(2, u.getNombreUsuario());
            pre.setString(3, u.getClave());
            pre.setInt(4, u.getIdTipoUsuario());
            pre.executeUpdate();
        } catch (Exception e) {
            throw e;
        }
        finally{
            this.desconectar();
        }
    }
    
    public void modificarUsuario(Usuario u)throws Exception{
        try {
            this.conectar();
            String sql="update usuario set usuarioUsuario=?, clave=?, idTipoUsuario=? where idUsuario=?";
            PreparedStatement pre=this.getCon().prepareStatement(sql);
            pre.setString(1, u.getNombreUsuario());
            pre.setString(2, u.getClave());
            pre.setInt(3, u.getIdTipoUsuario());
            pre.setInt(4, u.getIdUsuario());
            pre.executeUpdate();
        } catch (Exception e) {
            throw e;
        }
        finally{
            this.desconectar();
        }
    }
    
    public void eliminarUsuario(Usuario u)throws Exception{
        try {
            this.conectar();
            String sql="delete from usuario where idUsuario=?";
            PreparedStatement pre=this.getCon().prepareStatement(sql);
            pre.setInt(1, u.getIdUsuario());
            pre.executeUpdate();
        } catch (Exception e) {
            throw e;
        }
        finally{
            this.desconectar();
        }
    }
    
    public List<Usuario> mostrarUsuario()throws Exception{
        List<Usuario> listaUsuario=new ArrayList();
        ResultSet res;
        try {
           this.conectar();
            String sql="select*from usuario";
            PreparedStatement pre =this.getCon().prepareCall(sql);
            res=pre.executeQuery();
            while(res.next()){
                Usuario u=new Usuario();
                u.setIdUsuario(res.getInt("idUsuario"));
                u.setNombreUsuario(res.getString("nombreUsuario"));
                u.setClave(res.getString("clave"));
                u.setIdTipoUsuario(res.getInt("idTipoUsuario"));
                listaUsuario.add(u);
            }
        } catch (Exception e) {
            throw e;
        }
        finally{
            this.desconectar();
        }
        return listaUsuario;
    }
}
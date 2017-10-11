package com.modelo;
import com.conexion.Conexion;
import java.util.*;
import java.sql.*;
/**
 * Nombre de la clase:CrudUsuario
 * Version:1.0
 * Fecha:01/10/2017
 * Copyright:Sisvapro
 * @author Karen Escobar
 */
public class CrudUsuario extends Conexion{
    public List<Usuario> mostrarUsuario() throws Exception{
        ResultSet res;
        List<Usuario> listaUsuario= new ArrayList();
        try {
            this.conectar();
            String sql="select * from usuario";
            PreparedStatement pre=this.getCon().prepareStatement(sql);
            res=pre.executeQuery();
            while (res.next()) {                
                Usuario u=new Usuario();
                u.setIdUsuario(res.getInt("idUsuario"));
                u.setUserName(res.getString("userName"));
                u.setPassword(res.getString("password"));
                u.setIdTipo(res.getInt("idTipo"));
                listaUsuario.add(u);
            }
        } catch (Exception e) {
            throw e;
        }finally{
        this.desconectar();
        }
        return listaUsuario;
    }
    public void insertarUsuario(Usuario u)throws Exception{
        try {
            this.conectar();
            String sql="insert into usuario(idUsuario,userName,password,idTipo) values(?,?,?,?)";
            PreparedStatement pre=this.getCon().prepareStatement(sql);
            pre.setInt(1, u.getIdUsuario());
            pre.setString(2, u.getUserName());
            pre.setString(3, u.getPassword());
            pre.setInt(4, u.getIdTipo());
            pre.executeUpdate();
        } catch (Exception e) {
            throw e;
        }finally{
        this.desconectar();
        }
    }
    public void modificarUsuario(Usuario u)throws Exception{
        try {
            this.conectar();
            String sql="update usuario set userName=?,password=?,idTipo=? where idUsuario=?";
            PreparedStatement pre=this.getCon().prepareStatement(sql);
            pre.setString(1, u.getUserName());
            pre.setString(2, u.getPassword());
            pre.setInt(3, u.getIdTipo());
            pre.setInt(4, u.getIdUsuario());
            pre.executeUpdate();
        } catch (Exception e) {
            throw e;
        }finally{
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
        }finally{
        this.desconectar();
        }
    }
}

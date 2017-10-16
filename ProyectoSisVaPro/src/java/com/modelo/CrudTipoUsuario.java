package com.modelo;
import com.conexion.Conexion;
import java.util.*;
import java.sql.*;
/**
 * Nombre de la clase:CrudTipoUsuario
 * Version:1.0
 * Fecha:01/10/2017
 * Copyright:Sisvapro
 * @author Karen Escobar
 */
public class CrudTipoUsuario extends Conexion{
    public List<TipoUsuario> mostrarTipoUsuario() throws Exception{
        ResultSet res;
        List<TipoUsuario> listaTipoU= new ArrayList();
        try {
            this.conectar();
            String sql="select * from tipoUsuario";
            PreparedStatement pre=this.getCon().prepareStatement(sql);
            res=pre.executeQuery();
            while (res.next()) {                
                TipoUsuario tu=new TipoUsuario();
                tu.setIdTipo(res.getInt("idTipo"));
                tu.setNivel(res.getString("nivel"));
                listaTipoU.add(tu);
            }
        } catch (Exception e) {
            throw e;
        }finally{
        this.desconectar();
        }
        return listaTipoU;
    }
    
    public void insertarTipoUsuario(TipoUsuario tu)throws Exception{
        try {
            this.conectar();
            String sql="insert into tipoUsuario(idTipo,nivel) values(?,?);";
            PreparedStatement pre=this.getCon().prepareStatement(sql);
            pre.setInt(1, tu.getIdTipo());
            pre.setString(2, tu.getNivel());
            pre.executeUpdate();
        } catch (Exception e) {
            throw e;
        }finally{
        this.desconectar();
        }
    }
    
    public void modificarTipoUsuario(TipoUsuario tu)throws Exception{
        try {
            this.conectar();
            String sql="update tipoUsuario set nivel=? where idTipo=?";
            PreparedStatement pre=this.getCon().prepareStatement(sql);
            pre.setString(1, tu.getNivel());
            pre.setInt(2, tu.getIdTipo());
            pre.executeUpdate();
        } catch (Exception e) {
            throw e;
        }finally{
        this.desconectar();
        }
    }
    public void eliminarTipoUsuario(TipoUsuario tu)throws Exception{
        try {
            this.conectar();
            String sql="delete from tipoUsuario where idTipo=?";
            PreparedStatement pre=this.getCon().prepareStatement(sql);
            pre.setInt(1, tu.getIdTipo());
            pre.executeUpdate();
        } catch (Exception e) {
            throw e;
        }finally{
        this.desconectar();
        }
    }
}

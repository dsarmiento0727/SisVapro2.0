package com.modelo;
import com.conexion.Conexion;
import java.util.*;
import java.sql.*;
/**
 * Nombre de la clase:CrudHabilidad
 * Version:1.0
 * Fecha:01/10/2017
 * Copyright:Sisvapro
 * @author Karen Escobar
 */
public class CrudHabilidad extends Conexion{
    public List<Habilidad> mostrarHabilidad() throws Exception{
        ResultSet res;
        List<Habilidad> listaHabilidad= new ArrayList();
        try {
            this.conectar();
            String sql="select * from habilidad";
            PreparedStatement pre=this.getCon().prepareStatement(sql);
            res=pre.executeQuery();
            while (res.next()) {                
                Habilidad h=new Habilidad();
                h.setIdHabilidad(res.getInt("idHabilidad"));
                h.setNombreHabilidad(res.getString("nombre"));
                listaHabilidad.add(h);
            }
        } catch (Exception e) {
            throw e;
        }finally{
        this.desconectar();
        }
        return listaHabilidad;
    }
    
    public void insertarHabilidad(Habilidad h)throws Exception{
        try {
            this.conectar();
            String sql="insert into habilidad(idHabilidad,nombre) values(?,?)";
            PreparedStatement pre=this.getCon().prepareStatement(sql);
            pre.setInt(1, h.getIdHabilidad());
            pre.setString(2, h.getNombreHabilidad());
            pre.executeUpdate();
        } catch (Exception e) {
            throw e;
        }finally{
        this.desconectar();
        }
    }
    public void modificarHabilidad(Habilidad h)throws Exception{
        try {
            this.conectar();
            String sql="update habilidad set nombre=? where idHabilidad=?";
            PreparedStatement pre=this.getCon().prepareStatement(sql);
            pre.setString(1, h.getNombreHabilidad());
            pre.setInt(2, h.getIdHabilidad());
            pre.executeUpdate();
        } catch (Exception e) {
            throw e;
        }finally{
        this.desconectar();
        }
    }
    public void eliminarHabilidad(Habilidad h)throws Exception{
        try {
            this.conectar();
            String sql="delete from habilidad where idHabilidad=?";
            PreparedStatement pre=this.getCon().prepareStatement(sql);
            pre.setInt(1, h.getIdHabilidad());
            pre.executeUpdate();
        } catch (Exception e) {
            throw e;
        }finally{
        this.desconectar();
        }
    }
}

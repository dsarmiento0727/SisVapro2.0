package com.modelo;
import com.conexion.Conexion;
import java.util.*;
import java.sql.*;
/**
 * Nombre de la clase:CrudProfesion
 * Version:1.0
 * Fecha:01/10/2017
 * Copyright:Sisvapro
 * @author Karen Escobar
 */
public class CrudProfesion extends Conexion{
    public List<Profesion> mostrarProfesion() throws Exception{
        ResultSet res;
        List<Profesion> listaProfesion= new ArrayList();
        try {
            this.conectar();
            String sql="select * from profesion";
            PreparedStatement pre=this.getCon().prepareStatement(sql);
            res=pre.executeQuery();
            while (res.next()) {                
                Profesion pro=new Profesion();
                pro.setIdProfesion(res.getInt("idProfesion"));
                pro.setNombreProfesion(res.getString("nombre"));
                listaProfesion.add(pro);
            }
        } catch (Exception e) {
            throw e;
        }finally{
        this.desconectar();
        }
        return listaProfesion;
    }
    
    public void insertarProfesion(Profesion pro)throws Exception{
        try {
            this.conectar();
            String sql="insert into profesion(idProfesion,nombre) values(?,?)";
            PreparedStatement pre=this.getCon().prepareStatement(sql);
            pre.setInt(1, pro.getIdProfesion());
            pre.setString(2, pro.getNombreProfesion());
            pre.executeUpdate();
        } catch (Exception e) {
            throw e;
        }finally{
        this.desconectar();
        }
    }
    public void modificarProfesion(Profesion pro)throws Exception{
        try {
            this.conectar();
            String sql="update profesion set nombre=? where idProfesion=?";
            PreparedStatement pre=this.getCon().prepareStatement(sql);
            pre.setString(1, pro.getNombreProfesion());
            pre.setInt(2, pro.getIdProfesion());
            pre.executeUpdate();
        } catch (Exception e) {
            throw e;
        }finally{
        this.desconectar();
        }
    }
    public void eliminarProfesion(Profesion pro)throws Exception{
        try {
            this.conectar();
            String sql="delete from profesion where idProfesion=?";
            PreparedStatement pre=this.getCon().prepareStatement(sql);
            pre.setInt(1, pro.getIdProfesion());
            pre.executeUpdate();
        } catch (Exception e) {
            throw e;
        }finally{
        this.desconectar();
        }
    }
}

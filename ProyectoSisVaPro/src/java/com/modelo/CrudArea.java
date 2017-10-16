package com.modelo;
import com.conexion.Conexion;
import java.util.*;
import java.sql.*;

/**
 * Nombre de la clase:CrudArea
 * Version:1.0
 * Fecha:01/10/2017
 * Copyright:Sisvapro
 * @author Karen Escobar
 */
public class CrudArea extends Conexion{
    public List<Area> mostrarArea() throws Exception{
        ResultSet res;
        List<Area> listaArea=new ArrayList();
        try {
            this.conectar();
            String sql="select * from area";
            PreparedStatement pre=this.getCon().prepareStatement(sql);
            res=pre.executeQuery();
            while (res.next()) {                
                Area a= new Area();
                a.setIdArea(res.getInt("idArea"));
                a.setNombreArea(res.getString("nombre"));
                listaArea.add(a);
            }
        } catch (Exception e) {
            throw e;
        }finally{
        this.desconectar();
        }
        return listaArea;
    }
    
    public void insertarArea(Area a) throws Exception{
        try {
            this.conectar();
            String sql="insert into area(idArea,nombre) values(?,?)";
            PreparedStatement pre=this.getCon().prepareStatement(sql);
            pre.setInt(1, a.getIdArea());
            pre.setString(2, a.getNombreArea());
            pre.executeUpdate();
        } catch (Exception e) {
            throw e;
        }finally{
        this.desconectar();
        }
    }
    
    public void modificarArea(Area a) throws Exception{
        try {
            this.conectar();
            String sql="update area set nombre=? where idArea=?";
            PreparedStatement pre=this.getCon().prepareStatement(sql);           
            pre.setString(1, a.getNombreArea());
            pre.setInt(2, a.getIdArea());
            pre.executeUpdate();
        } catch (Exception e) {
            throw e;
        }finally{
        this.desconectar();
        }
    }
    
    public void eliminarArea(Area a) throws Exception{
        try {
            this.conectar();
            String sql="delete from area where idArea=?";
            PreparedStatement pre=this.getCon().prepareStatement(sql);           
            pre.setInt(1, a.getIdArea());
            pre.executeUpdate();
        } catch (Exception e) {
            throw e;
        }finally{
        this.desconectar();
        }
    }
}

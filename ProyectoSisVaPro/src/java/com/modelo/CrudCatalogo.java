package com.modelo;
import com.conexion.Conexion;
import java.util.*;
import java.sql.*;

/**
 * Nombre de la clase:CrudCatalogo
 * Version:1.0
 * Fecha:01/10/2017
 * Copyright:Sisvapro
 * @author Karen Escobar
 */
public class CrudCatalogo extends Conexion{
    public List<Catalogo> mostrarCatalogo() throws Exception{
        ResultSet res;
        List<Catalogo> listaCatalogo=new ArrayList();
        try {
            this.conectar();
            String sql="select * from catalogo";
            PreparedStatement pre=this.getCon().prepareStatement(sql);
            res=pre.executeQuery();
            while (res.next()) {                
                Catalogo c= new Catalogo();
                c.setIdCatalogo(res.getInt("idCatalogo"));
                c.setNombreCatalogo(res.getString("nombre"));
                c.setIdArea(res.getInt("idArea"));
                c.setIdContratador(res.getInt("idContratador"));
                listaCatalogo.add(c);
            }
        } catch (Exception e) {
            throw e;
        }finally{
        this.desconectar();
        }
        return listaCatalogo;
    }
    
    public void insertarCatalogo(Catalogo c) throws Exception{
        try {
            this.conectar();
            String sql="insert into catalogo(idCatalogo,nombre, idArea,idContratador) values(?,?,?,?)";
            PreparedStatement pre=this.getCon().prepareStatement(sql);
            pre.setInt(1, c.getIdCatalogo());
            pre.setString(2, c.getNombreCatalogo());
            pre.setInt(3, c.getIdArea());
            pre.setInt(4, c.getIdContratador());
            pre.executeUpdate();
        } catch (Exception e) {
            throw e;
        }finally{
        this.desconectar();
        }
    }
    public void modificarCatalogo(Catalogo c) throws Exception{
        try {
            this.conectar();
            String sql="update catalogo set nombre=?, idArea=?,idContratador=? where idCatalogo=?";
            PreparedStatement pre=this.getCon().prepareStatement(sql);
            pre.setString(1, c.getNombreCatalogo());
            pre.setInt(2, c.getIdArea());
            pre.setInt(3, c.getIdContratador());
            pre.setInt(4, c.getIdCatalogo());
            pre.executeUpdate();
        } catch (Exception e) {
            throw e;
        }finally{
        this.desconectar();
        }
    }
    public void eliminarCatalogo(Catalogo c) throws Exception{
        try {
            this.conectar();
            String sql="delete from catalogo where idCatalogo=?";
            PreparedStatement pre=this.getCon().prepareStatement(sql);
            pre.setInt(1, c.getIdCatalogo());
            pre.executeUpdate();
        } catch (Exception e) {
            throw e;
        }finally{
        this.desconectar();
        }
    }
}

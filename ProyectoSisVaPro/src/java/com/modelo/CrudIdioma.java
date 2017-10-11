package com.modelo;
import com.conexion.Conexion;
import java.util.*;
import java.sql.*;
/**
 * Nombre de la clase:CrudIdioma
 * Version:1.0
 * Fecha:01/10/2017
 * Copyright:Sisvapro
 * @author Karen Escobar
 */
public class CrudIdioma extends Conexion{
    public List<Idioma> mostrarIdioma() throws Exception{
        ResultSet res;
        List<Idioma> listaIdioma= new ArrayList();
        try {
            this.conectar();
            String sql="select * from idioma";
            PreparedStatement pre=this.getCon().prepareStatement(sql);
            res=pre.executeQuery();
            while (res.next()) {                
                Idioma i=new Idioma();
                i.setIdIdioma(res.getInt("idIdioma"));
                i.setNombreIdioma(res.getString("nombre"));
                listaIdioma.add(i);
            }
        } catch (Exception e) {
            throw e;
        }finally{
        this.desconectar();
        }
        return listaIdioma;
    }
    
    public void insertarIdioma(Idioma i)throws Exception{
        try {
            this.conectar();
            String sql="insert into idioma(idIdioma,nombre) values(?,?)";
            PreparedStatement pre=this.getCon().prepareStatement(sql);
            pre.setInt(1, i.getIdIdioma());
            pre.setString(2, i.getNombreIdioma());
            pre.executeUpdate();
        } catch (Exception e) {
            throw e;
        }finally{
        this.desconectar();
        }
    }
    public void modificarIdioma(Idioma i)throws Exception{
        try {
            this.conectar();
            String sql="update idioma set nombre=? where idIdioma=?";
            PreparedStatement pre=this.getCon().prepareStatement(sql);
            pre.setString(1, i.getNombreIdioma());
            pre.setInt(2, i.getIdIdioma());
            pre.executeUpdate();
        } catch (Exception e) {
            throw e;
        }finally{
        this.desconectar();
        }
    }
    public void eliminarIdioma(Idioma i)throws Exception{
        try {
            this.conectar();
            String sql="delete from idioma where idIdioma=?";
            PreparedStatement pre=this.getCon().prepareStatement(sql);
            pre.setInt(1, i.getIdIdioma());
            pre.executeUpdate();
        } catch (Exception e) {
            throw e;
        }finally{
        this.desconectar();
        }
    }
}

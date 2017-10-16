package com.modelo;
import com.conexion.Conexion;
import java.util.*;
import java.sql.*;
/**
 * Nombre de la clase:CrudPais
 * Version:1.0
 * Fecha:01/10/2017
 * Copyright:Sisvapro
 * @author Karen Escobar
 */
public class CrudMunicipio extends Conexion{
    public List<Municipio> mostrarMunicipio() throws Exception{
        ResultSet res;
        List<Municipio> listaMunicipio= new ArrayList();
        try {
            this.conectar();
            String sql="select * from municipio";
            PreparedStatement pre=this.getCon().prepareStatement(sql);
            res=pre.executeQuery();
            while (res.next()) {                
                Municipio m=new Municipio();
                m.setIdMunicipio(res.getInt("idMunicipio"));
                m.setNombreMunicipio(res.getString("nombre"));
                listaMunicipio.add(m);
            }
        } catch (Exception e) {
            throw e;
        }finally{
        this.desconectar();
        }
        return listaMunicipio;
    }
    
    public void insertarMunicipio(Municipio m)throws Exception{
        try {
            this.conectar();
            String sql="insert into municipio(idMunicipio,nombre) values(?,?)";
            PreparedStatement pre=this.getCon().prepareStatement(sql);
            pre.setInt(1, m.getIdMunicipio());
            pre.setString(2, m.getNombreMunicipio());
            pre.executeUpdate();
        } catch (Exception e) {
            throw e;
        }finally{
        this.desconectar();
        }
    }
    public void modificarMunicipio(Municipio m)throws Exception{
        try {
            this.conectar();
            String sql="update idioma set nombre=? where idMunicipio=?";
            PreparedStatement pre=this.getCon().prepareStatement(sql);
            pre.setString(1, m.getNombreMunicipio());
            pre.setInt(2, m.getIdMunicipio());
            pre.executeUpdate();
        } catch (Exception e) {
            throw e;
        }finally{
        this.desconectar();
        }
    }
    public void eliminarMunicipio(Municipio m)throws Exception{
        try {
            this.conectar();
            String sql="delete from municipio where idMunicipio=?";
            PreparedStatement pre=this.getCon().prepareStatement(sql);
            pre.setInt(1, m.getIdMunicipio());
            pre.executeUpdate();
        } catch (Exception e) {
            throw e;
        }finally{
        this.desconectar();
        }
    }
}

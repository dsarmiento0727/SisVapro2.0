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
public class CrudPais extends Conexion{
    public List<Pais> mostrarPais() throws Exception{
        ResultSet res;
        List<Pais> listaPais= new ArrayList();
        try {
            this.conectar();
            String sql="select * from pais";
            PreparedStatement pre=this.getCon().prepareStatement(sql);
            res=pre.executeQuery();
            while (res.next()) {                
                Pais pa=new Pais();
                pa.setIdPais(res.getInt("idPais"));
                pa.setNombrePais(res.getString("nombre"));
                listaPais.add(pa);
            }
        } catch (Exception e) {
            throw e;
        }finally{
        this.desconectar();
        }
        return listaPais;
    }
    
    public void insertarPais(Pais pa)throws Exception{
        try {
            this.conectar();
            String sql="insert into pais(idPais,nombre) values(?,?)";
            PreparedStatement pre=this.getCon().prepareStatement(sql);
            pre.setInt(1, pa.getIdPais());
            pre.setString(2, pa.getNombrePais());
            pre.executeUpdate();
        } catch (Exception e) {
            throw e;
        }finally{
        this.desconectar();
        }
    }
    public void modificarPais(Pais pa)throws Exception{
        try {
            this.conectar();
            String sql="update pais set nombre=? where idPais=?";
            PreparedStatement pre=this.getCon().prepareStatement(sql);
            pre.setString(1, pa.getNombrePais());
            pre.setInt(2, pa.getIdPais());
            pre.executeUpdate();
        } catch (Exception e) {
            throw e;
        }finally{
        this.desconectar();
        }
    }
    public void eliminarPais(Pais pa)throws Exception{
        try {
            this.conectar();
            String sql="delete from pais where idPais=?";
            PreparedStatement pre=this.getCon().prepareStatement(sql);
            pre.setInt(1, pa.getIdPais());
            pre.executeUpdate();
        } catch (Exception e) {
            throw e;
        }finally{
        this.desconectar();
        }
    }
}

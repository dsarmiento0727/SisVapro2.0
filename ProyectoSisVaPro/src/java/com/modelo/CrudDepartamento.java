package com.modelo;
import com.conexion.Conexion;
import java.util.*;
import java.sql.*;
/**
 * Nombre de la clase:CrudDepartamento
 * Version:1.0
 * Fecha:01/10/2017
 * Copyright:Sisvapro
 * @author Karen Escobar
 */
public class CrudDepartamento extends Conexion{
    public List<Departamento> mostrarDepartamento() throws Exception{
        ResultSet res;
        List<Departamento> listaDepartamento=new ArrayList();
        try {
            this.conectar();
            String sql="select * from departamento";
            PreparedStatement pre=this.getCon().prepareStatement(sql);
            res=pre.executeQuery();
            while (res.next()) {                
                Departamento d= new Departamento();
                d.setIdDepartamento(res.getInt("idDepartamento"));
                d.setNombreDepartamento(res.getString("nombre"));
                listaDepartamento.add(d);
            }
        } catch (Exception e) {
            throw e;
        }finally{
        this.desconectar();
        }
        return listaDepartamento;
    }
    
    public void insertarDepartamento(Departamento d) throws Exception{
        try {
            this.conectar();
            String sql="insert into departamento(idDepartamento,nombre) values(?,?)";
            PreparedStatement pre=this.getCon().prepareStatement(sql);
            pre.setInt(1, d.getIdDepartamento());
            pre.setString(2, d.getNombreDepartamento());
            pre.executeUpdate();
        } catch (Exception e) {
            throw e;
        }finally{
        this.desconectar();
        }
    }
    
    public void modificarDepartamento(Departamento d) throws Exception{
        try {
            this.conectar();
            String sql="update departamento set nombre=? where idDepartamento=?";
            PreparedStatement pre=this.getCon().prepareStatement(sql);           
            pre.setString(1, d.getNombreDepartamento());
            pre.setInt(2, d.getIdDepartamento());
            pre.executeUpdate();
        } catch (Exception e) {
            throw e;
        }finally{
        this.desconectar();
        }
    }
    
    public void eliminarDepartamento(Departamento d) throws Exception{
        try {
            this.conectar();
            String sql="delete from departamento where idDepartamento=?";
            PreparedStatement pre=this.getCon().prepareStatement(sql);           
            pre.setInt(1, d.getIdDepartamento());
            pre.executeUpdate();
        } catch (Exception e) {
            throw e;
        }finally{
        this.desconectar();
        }
    }
}

package com.modelo;
import com.conexion.Conexion;
import java.util.*;
import java.sql.*;
/**
 * Nombre de la clase:CrudEmpresa
 * Version:1.0
 * Fecha:01/10/2017
 * Copyright:Sisvapro
 * @author Karen Escobar
 */
public class CrudEmpresa extends Conexion{
    
    public List<Empresa> mostrarEmpresa() throws Exception{
        ResultSet res;
        List<Empresa> listaEmp=new ArrayList<>();
        try {
            this.conectar();
            String sql="select * from empresa";
            PreparedStatement pre=this.getCon().prepareStatement(sql);
            res=pre.executeQuery();
            while (res.next()) {                
                Empresa em= new Empresa();
                em.setIdEmpresa(res.getInt("idEmpresa"));
                em.setNombreJuridico(res.getString("nombreJuridico"));
                em.setNombreComercial(res.getString("nombreComercial"));
                em.setGiro(res.getString("giro"));
                em.setFechaInscripcion(res.getString("fechaInscripcion"));
                em.setNit(res.getString("nit"));
                em.setDireccion(res.getString("direccion"));
                em.setIdUsuario(res.getInt("idUsuario"));
                listaEmp.add(em);
            }
        } catch (Exception e) {
            throw e;
        }finally{
        this.desconectar();
        }
        return listaEmp;
    }
    
    public void insertarEmpresa(Empresa em) throws Exception{
        try {
            this.conectar();
            String sql="insert into empresa values(?,?,?,?,?,?,?)";
            PreparedStatement pre=this.getCon().prepareStatement(sql);
            pre.setInt(1, em.getIdEmpresa());
            pre.setString(2, em.getNombreJuridico());
            pre.setString(3, em.getNombreComercial());
            pre.setString(4, em.getGiro());
            pre.setString(4, em.getFechaInscripcion());
            pre.setString(5, em.getNit());
            pre.setString(6, em.getDireccion());
            pre.setInt(7, em.getIdEmpresa());
            pre.executeUpdate();
        } catch (Exception e) {
            throw e;
        }finally{
        this.desconectar();
        }
    }
    public void modificarEmpresa(Empresa em) throws Exception{
        try {
            this.conectar();
            String sql="update empresa set nombreJuridico=?,nombreComercial=?,giro=?,"
                    + "fechaInscripcion=?,nit=?,direccion=?,idUsuario=? where idEmpresa=?";
            PreparedStatement pre=this.getCon().prepareStatement(sql);
            pre.setString(1, em.getNombreJuridico());
            pre.setString(2, em.getNombreComercial());
            pre.setString(3, em.getGiro());
            pre.setString(4, em.getFechaInscripcion());
            pre.setString(5, em.getNit());
            pre.setString(6, em.getDireccion()); 
            pre.setInt(7, em.getIdEmpresa());
            pre.executeUpdate();
        } catch (Exception e) {
            throw e;
        }finally{
        this.desconectar();
        }
    }
    public void eliminarEmpresa(Empresa em) throws Exception{
        try {
            this.conectar();
            String sql="delete from empresa where idEmpresa=?";
            PreparedStatement pre=this.getCon().prepareStatement(sql); 
            pre.setInt(1, em.getIdEmpresa());
            pre.executeUpdate();
        } catch (Exception e) {
            throw e;
        }finally{
        this.desconectar();
        }
    }

}

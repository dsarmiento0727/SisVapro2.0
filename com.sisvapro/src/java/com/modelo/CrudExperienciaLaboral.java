/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.modelo;
import com.conexion.Conexion;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List; 
/**
 *
 * @author HENRY
 */
public class CrudExperienciaLaboral {
     public void insertarExperienciaLaboral(ExperienciaLaboral ap)throws Exception{
        this.conectar();
        String sql="insert into  experienciaLaboral values(?,?,?,?,?,?,?,?)";
        PreparedStatement pre=this.getCon().prepareStatement(sql);
        try {
            pre.setInt(1, ap.getIdExperienciaLaboral());
            pre.setString(2, ap.getNombreEmpresa());
            pre.setString(3, ap.getNombreJefe());
            pre.setString(4, ap.getTelefonoJefe();
            pre.setString(5. ap.getPuesto();
            pre.setString(6, ap.getDesde());
            pre.setString(7, ap.getHasta());
            pre.setString(8, ap.getTipoContrato());
            pre.executeUpdate();
        } catch (Exception e) {
            throw e;
        }
        finally{
            this.desconectar();
        }
    }
     public void modificarExperienciaLaboral(ExperienciaLaboral ap)throws Exception{
        this.conectar();
        String sql="update experienciaLaboral set nombre=? where idExperienciaLaboral=?";
        PreparedStatement pre=this.getCon().prepareStatement(sql);
        try {
            pre.setString(1, ap.getIdExperienciaLaboral());
            pre.setInt(2, ap.getIdExperienciaLaboral());
            pre.executeUpdate();
        } catch (Exception e) {
            throw e;
        }
        finally{
            this.desconectar();
        }
    }
    
    public void eliminarExperienciaLaboral(ExperienciaLaboral ap)throws Exception{
        this.conectar();
        String sql="delete from experienciaLaboral where idExperienciaLaboral=?";
        PreparedStatement pre=this.getCon().prepareStatement(sql);
        try {
            pre.setInt(1, ap.getIdExperienciaLaboral());
            pre.executeUpdate();
        } catch (Exception e) {
            throw e;
        }
        finally{
            this.desconectar();
        }
    }
    
    public List<ExperienciaLaboral> mostrarExperienciaLaboral()throws Exception{
        List<ExperienciaLaboral> listaExperienciaLaboral=new ArrayList();
        ResultSet res;
        try {
            this.conectar();
            String sql="select*from experienciaLaboral";
            PreparedStatement pre =this.getCon().prepareCall(sql);
            res=pre.executeQuery();
            while(res.next()){
                experienciaLaboral ap=new experienciaLaboral();
                ap.setidExperienciaLaboral(res.getInt("idExperienciaLaboral"));
                ap.setnombreEmpresa(res.getString("nombre"));
                listaExperienciaLaboral.add(ap);
            }
        } catch (Exception e) {
            throw e;
        }
        finally{
            this.desconectar();
        }
        return listaExperienciaLaboral;
    }
}


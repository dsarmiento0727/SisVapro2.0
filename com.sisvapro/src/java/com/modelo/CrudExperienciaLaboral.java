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
public class CrudExperienciaLaboral extends Conexion{
     public void insertarExperienciaLaboral(ExperienciaLaboral ap)throws Exception{
        try {
            this.conectar();
            String sql="insert into experienciaLaboral(nombreEmpresa,nombreJefe,telefonoJefe,puesto,desde,hasta,tipoContrato,idEmpleador) values(?,?,?,?,?,?,?,?)";
            PreparedStatement pre=this.getCon().prepareStatement(sql);
            pre.setString(1, ap.getNombreEmpresa());
            pre.setString(2, ap.getNombreJefe());
            pre.setString(3, ap.getTelefonoJefe());
            pre.setString(4, ap.getPuesto());            
            pre.setString(5, ap.getDesde());
            pre.setString(6, ap.getHasta());
            pre.setString(7, ap.getTipoContrato());
            pre.setInt(8, ap.getIdEmpleador());
            pre.executeUpdate();
        } catch (Exception e) {
            throw e;
        }
        finally{
            this.desconectar();
        }
    }
     
     public void modificarExperienciaLaboral(ExperienciaLaboral ap)throws Exception{
        try {
            this.conectar();
            String sql="update experienciaLaboral set nombreEmpresa=?,nombreJefe=?,telefonoJefe=?,puesto=?,desde=?,hasta=?,tipoContrato=?,idEmpleador=? where idExperienciaLaboral=?";
            PreparedStatement pre=this.getCon().prepareStatement(sql);
            pre.setString(1, ap.getNombreEmpresa());
            pre.setString(2, ap.getNombreJefe());
            pre.setString(3, ap.getTelefonoJefe());
            pre.setString(4, ap.getPuesto());
            pre.setString(5, ap.getDesde());
            pre.setString(6, ap.getHasta());
            pre.setString(7, ap.getTipoContrato());
            pre.setInt(8, ap.getIdEmpleador());
            pre.setInt(9, ap.getIdExperienciaLaboral());
            pre.executeUpdate();
        } catch (Exception e) {
            throw e;
        }
        finally{
            this.desconectar();
        }
    }
    
    public void eliminarExperienciaLaboral(ExperienciaLaboral ap)throws Exception{
       try {
            this.conectar();
            String sql="delete from experienciaLaboral where idExperienciaLaboral=?";
            PreparedStatement pre=this.getCon().prepareStatement(sql);
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
                ExperienciaLaboral ap=new ExperienciaLaboral();
                ap.setIdExperienciaLaboral(res.getInt("idExperienciaLaboral"));
                ap.setNombreEmpresa(res.getString("nombreEmpresa"));
                ap.setNombreJefe(res.getString("nombreJefe"));
                ap.setTelefonoJefe(res.getString("telefonoJefe"));
                ap.setPuesto(res.getString("puesto"));                
                ap.setDesde(res.getString("desde"));
                ap.setHasta(res.getString("hasta"));
                ap.setTipoContrato(res.getString("tipoContrato"));
                ap.setIdEmpleador(res.getInt("idEmpleador"));
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


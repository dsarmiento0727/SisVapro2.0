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
 * @author henry
 */
public class CrudFormacionAcademica  extends Conexion{
    public void insertarFormacionAcademica(FormacionAcademica d)throws Exception{
        try {
            this.conectar();
            String sql="insert into formacionAcademica(nivelEstudios,estado,carrera,idEmpleador) values(?,?,?,?)";
            PreparedStatement pre=this.getCon().prepareStatement(sql);
            pre.setString(1, d.getNivelEstudio());
            pre.setString(2, d.getEstado());
            pre.setString(3, d.getCarrera());
            pre.setInt(4, d.getIdEmpleador());
            pre.executeUpdate();
        } catch (Exception e) {
            throw e; 
        }
        finally{
            this.desconectar();
        }
    }
    
    public void modificarFormacionAcademica(FormacionAcademica d)throws Exception{
        try {
            this.conectar();
            String sql="update formacionAcademica set nivelEstudios=?,estado=?,carrera=?,idEmpleador=? where idFormacion=?";
            PreparedStatement pre=this.getCon().prepareStatement(sql);
            pre.setString(1, d.getNivelEstudio());
            pre.setString(2, d.getEstado());
            pre.setString(3, d.getCarrera());
            pre.setInt(4, d.getIdEmpleador());
            pre.setInt(5, d.getIdFormacion());
            pre.executeUpdate();
        } catch (Exception e) {
            throw e;
        }
        finally{
            this.desconectar();
        }
    }
    
    public void eliminarFormacionAcademica(FormacionAcademica d)throws Exception{
        try {
            this.conectar();
            String sql="delete from formacionAcademica where idFormacion=?";
            PreparedStatement pre=this.getCon().prepareStatement(sql);
            pre.setInt(1, d.getIdFormacion());
            pre.executeUpdate();
        } catch (Exception e) {
            throw e;
        }
        finally{
            this.desconectar();
        }
    }
    
    public List<FormacionAcademica> mostrarFormacionAcademica()throws Exception{
        List<FormacionAcademica> listaFormacionAcademica=new ArrayList();
        ResultSet res;
        try {
           this.conectar();
            String sql="select*from formacionAcademica";
            PreparedStatement pre =this.getCon().prepareCall(sql);
            res=pre.executeQuery();
            while(res.next()){
                FormacionAcademica d=new FormacionAcademica();
                d.setIdFormacion(res.getInt("idFormacion"));
                d.setNivelEstudio(res.getString("nivelEstudios"));
                d.setEstado(res.getString("estado"));
                d.setCarrera(res.getString("carrera"));
                d.setIdEmpleador(res.getInt("idEmpleador"));
                listaFormacionAcademica.add(d);
            }
        } catch (Exception e) {
            throw e;
        }
        finally{
            this.desconectar();
        }
        return listaFormacionAcademica;
    }
    
     public List<FormacionAcademica> seleccionarFormacionAcademica(int idEmpleador)throws Exception{
        List<FormacionAcademica> listaFormacionAcademica=new ArrayList();
        ResultSet res;
        try {
           this.conectar();
            String sql="select*from formacionAcademica where idEmpleador=?";
            PreparedStatement pre =this.getCon().prepareCall(sql);
            pre.setInt(1, idEmpleador);
            res=pre.executeQuery();
            while(res.next()){
                FormacionAcademica d=new FormacionAcademica();
                d.setIdFormacion(res.getInt("idFormacion"));
                d.setNivelEstudio(res.getString("nivelEstudios"));
                d.setEstado(res.getString("estado"));
                d.setCarrera(res.getString("carrera"));
                d.setIdEmpleador(res.getInt("idEmpleador"));
                listaFormacionAcademica.add(d);
            }
        } catch (Exception e) {
            throw e;
        }
        finally{
            this.desconectar();
        }
        return listaFormacionAcademica;
    }
}

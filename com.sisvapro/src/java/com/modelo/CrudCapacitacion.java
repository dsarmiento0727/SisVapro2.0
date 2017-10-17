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
 * @author carlos
 */
public class CrudCapacitacion extends Conexion{
    public void insertarCapacitacion(Capacitacion ca)throws Exception{
        try {
            this.conectar();
            String sql="insert into capacitacion values(?,?,?,?,?)";
            PreparedStatement pre=this.getCon().prepareStatement(sql);
            pre.setInt(1, ca.getIdCapacitacion());
            pre.setString(2, ca.getNombre());
            pre.setString(3, ca.getDescripcion());
            pre.setString(4, ca.getFechaInicio());
            pre.setString(5, ca.getFechaFinal());
            pre.executeUpdate();
        } catch (Exception e) {
            throw e;
        }
        finally{
            this.desconectar();
        }
    }
    
    public void modificarFormacionCapacitacion(Capacitacion ca)throws Exception{
        try {
            this.conectar();
            String sql="update capacitacion set nombre=?, descripcion=?, fechaInicio=?, fechaFinal=? where idCapacitacion=?";
            PreparedStatement pre=this.getCon().prepareStatement(sql);
            pre.setString(1, ca.getNombre());
            pre.setString(2, ca.getDescripcion());
            pre.setString(3, ca.getFechaInicio());
            pre.setString(4, ca.getFechaFinal());
            pre.setInt(5, ca.getIdCapacitacion());
            pre.executeUpdate();
        } catch (Exception e) {
            throw e;
        }
        finally{
            this.desconectar();
        }
    }
    
    public void eliminaridCapacitacion(Capacitacion ca)throws Exception{
        try {
            this.conectar();
            String sql="delete from capacitacion where idCapacitacion=?";
            PreparedStatement pre=this.getCon().prepareStatement(sql);
            pre.setInt(1, ca.getIdCapacitacion());
            pre.executeUpdate();
        } catch (Exception e) {
            throw e;
        }
        finally{
            this.desconectar();
        }
    }
    
    public List<Capacitacion> mostrarCapacitacion()throws Exception{
        List<Capacitacion> listaCapacitacion=new ArrayList();
        ResultSet res;
        try {
           this.conectar();
            String sql="select*from capacitacion";
            PreparedStatement pre =this.getCon().prepareCall(sql);
            res=pre.executeQuery();
            while(res.next()){
                Capacitacion ca=new Capacitacion();
                ca.setIdCapacitacion(res.getInt("idCapacitacion"));
                ca.setNombre(res.getString("nombre"));
                ca.setDescripcion(res.getString("descripcion"));
                ca.setFechaInicio(res.getString("fechaInicio"));
                ca.setFechaFinal(res.getString("fechaFinal"));
                listaCapacitacion.add(ca);
            }
        } catch (Exception e) {
            throw e;
        }
        finally{
            this.desconectar();
        }
        return listaCapacitacion;
    }
}

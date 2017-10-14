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
public class CrudHabilidad extends Conexion{
    public void insertarHabilidad(Habilidad ha)throws Exception{
        this.conectar();
        String sql="insert into habilidad values(?,?)";
        PreparedStatement pre=this.getCon().prepareStatement(sql);
        try {
            pre.setInt(1, ha.getIdHabilidad());
            pre.setString(2, ha.getNombreHabilidad());
            pre.executeUpdate();
        } catch (Exception e) {
            throw e;
        }
        finally{
            this.desconectar();
        }
    }
    
    public void modificarHabilidad(Habilidad ha)throws Exception{
        this.conectar();
        String sql="update habilidad set nombreHabilidad=? where idHabilidad=?";
        PreparedStatement pre=this.getCon().prepareStatement(sql);
        try {
            pre.setString(1, ha.getNombreHabilidad());
            pre.setInt(2, ha.getIdHabilidad());
            pre.executeUpdate();
        } catch (Exception e) {
            throw e;
        }
        finally{
            this.desconectar();
        }
    }
    
    public void eliminarHabilidad(Habilidad ha)throws Exception{
        this.conectar();
        String sql="delete from habilidad where idHabilidad=?";
        PreparedStatement pre=this.getCon().prepareStatement(sql);
        try {
            pre.setInt(1, ha.getIdHabilidad());
            pre.executeUpdate();
        } catch (Exception e) {
            throw e;
        }
        finally{
            this.desconectar();
        }
    }
    
    public List<Habilidad> mostrarHabilidad()throws Exception{
        List<Habilidad> listaHabilidad=new ArrayList();
        ResultSet res;
        try {
            this.conectar();
            String sql="select*from habilidad";
            PreparedStatement pre =this.getCon().prepareCall(sql);
            res=pre.executeQuery();
            while(res.next()){
                Habilidad ha=new Habilidad();
                ha.setIdHabilidad(res.getInt("idHabilidad"));
                ha.setNombreHabilidad(res.getString("nombreHabilidad"));
                listaHabilidad.add(ha);
            }
        } catch (Exception e) {
            throw e;
        }
        finally{
            this.desconectar();
        }
        return listaHabilidad;
    }
}

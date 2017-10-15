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
public class CrudAreaProfesional extends  Conexion{
    public void insertarAreaProfesional(AreaProfesional ap)throws Exception{
        
        try {
            this.conectar();
            String sql="insert into areaProfesional(idAreaProfesional,nombreAreaProfesional) values(?,?)";
            PreparedStatement pre=this.getCon().prepareStatement(sql);
            pre.setInt(1, ap.getIdAreaProfesional());
            pre.setString(2, ap.getNombreAreaProfesional());
            pre.executeUpdate();
        } catch (Exception e) {
            throw e;
        }
        finally{
            this.desconectar();
        }
    }
    
    public void modificarAreaProfesional(AreaProfesional ap)throws Exception{
        
        try {
            this.conectar();
            String sql="update areaProfesional set nombreAreaProfesional=? where idAreaProfesional=?";
            PreparedStatement pre=this.getCon().prepareStatement(sql);
            pre.setString(1, ap.getNombreAreaProfesional());
            pre.setInt(2, ap.getIdAreaProfesional());
            pre.executeUpdate();
        } catch (Exception e) {
            throw e;
        }
        finally{
            this.desconectar();
        }
    }
    
    public void eliminarAreaProfesional(AreaProfesional ap)throws Exception{
        
        try {
            this.conectar();
            String sql="delete from areaProfesional where idAreaProfesional=?";
            PreparedStatement pre=this.getCon().prepareStatement(sql);
            pre.setInt(1, ap.getIdAreaProfesional());
            pre.executeUpdate();
        } catch (Exception e) {
            throw e;
        }
        finally{
            this.desconectar();
        }
    }
    
    public List<AreaProfesional> mostrarAreaProfesional()throws Exception{
        List<AreaProfesional> listaAreaProfesional=new ArrayList();
        ResultSet res;
        try {
            this.conectar();
            String sql="select * from areaProfesional";
            PreparedStatement pre =this.getCon().prepareCall(sql);
            res=pre.executeQuery();
            while(res.next()){
                AreaProfesional ap=new AreaProfesional();
                ap.setIdAreaProfesional(res.getInt("idAreaProfesional"));
                ap.setNombreAreaProfesional(res.getString("nombreAreaProfesional"));
                listaAreaProfesional.add(ap);
            }
        } catch (Exception e) {
            throw e;
        }
        finally{
            this.desconectar();
        }
        return listaAreaProfesional;
    }
}

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
public class CrubPais extends Conexion{
    public void insertarPais(Pais pa)throws Exception{
        this.conectar();
        String sql="insert into pais values(?,?)";
        PreparedStatement pre=this.getCon().prepareStatement(sql);
        try {
            pre.setInt(1, pa.getIdPais());
            pre.setString(2, pa.getNombrePais());
            pre.executeUpdate();
        } catch (Exception e) {
            throw e;
        }
        finally{
            this.desconectar();
        }
    }
    
    public void modificarPais(Pais pa)throws Exception{
        this.conectar();
        String sql="update pais set nombre=? where idPais=?";
        PreparedStatement pre=this.getCon().prepareStatement(sql);
        try {
            pre.setString(1, pa.getNombrePais());
            pre.setInt(2, pa.getIdPais());
            pre.executeUpdate();
        } catch (Exception e) {
            throw e;
        }
        finally{
            this.desconectar();
        }
    }
    
    public void eliminarPais(Pais pa)throws Exception{
        this.conectar();
        String sql="delete from pais where idPais=?";
        PreparedStatement pre=this.getCon().prepareStatement(sql);
        try {
            pre.setInt(1, pa.getIdPais());
            pre.executeUpdate();
        } catch (Exception e) {
            throw e;
        }
        finally{
            this.desconectar();
        }
    }
    
    public List<Pais> mostrarPais()throws Exception{
        List<Pais> listaPais=new ArrayList();
        ResultSet res;
        try {
            this.conectar();
            String sql="select*from pais";
            PreparedStatement pre =this.getCon().prepareCall(sql);
            res=pre.executeQuery();
            while(res.next()){
                Pais pa=new Pais();
                pa.setIdPais(res.getInt("idPais"));
                pa.setNombrePais(res.getString("nombre"));
                listaPais.add(pa);
            }
        } catch (Exception e) {
            throw e;
        }
        finally{
            this.desconectar();
        }
        return listaPais;
    }
}

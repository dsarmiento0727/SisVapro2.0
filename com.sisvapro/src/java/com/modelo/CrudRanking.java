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
public class CrudRanking extends Conexion{
     public void insertarRanking(Ranking ra)throws Exception{
        this.conectar();
        String sql="insert into ranking(cantidadPuntos,idUsuario) values(?,?)";
        PreparedStatement pre=this.getCon().prepareStatement(sql);
        try {
            pre.setInt(1, ra.getCantidadPuntos());
            pre.setInt(2, ra.getIdUsuario());
            pre.executeUpdate();
        } catch (Exception e) {
            throw e;
        }
        finally{
            this.desconectar();
        }
    }
    
    public void modificarRanking(Ranking ra)throws Exception{
        this.conectar();
        String sql="update ranking set cantidadPuntos=?, idUsuario=? where idRanking=?";
        PreparedStatement pre=this.getCon().prepareStatement(sql);
        try {
            pre.setInt(1, ra.getCantidadPuntos());
            pre.setInt(2, ra.getIdUsuario());
            pre.setInt(3, ra.getIdRanking());
            pre.executeUpdate();
        } catch (Exception e) {
            throw e;
        }
        finally{
            this.desconectar();
        }
    }
    
    public void eliminarRanking(Ranking ra)throws Exception{
        this.conectar();
        String sql="delete from ranking where idRanking=?";
        PreparedStatement pre=this.getCon().prepareStatement(sql);
        try {
            pre.setInt(1, ra.getIdRanking());
            pre.executeUpdate();
        } catch (Exception e) {
            throw e;
        }
        finally{
            this.desconectar();
        }
    }
    
    public List<Ranking> mostrarRanking()throws Exception{
        List<Ranking> listaRanking=new ArrayList();
        ResultSet res;
        try {
            this.conectar();
            String sql="select*from ranking";
            PreparedStatement pre =this.getCon().prepareCall(sql);
            res=pre.executeQuery();
            while(res.next()){
                Ranking ra=new Ranking();
                ra.setIdRanking(res.getInt("idRanking"));
                ra.setCantidadPuntos(res.getInt("cantidadPuntos"));
                ra.setIdUsuario(res.getInt("idUsuario"));
                listaRanking.add(ra);
            }
        } catch (Exception e) {
            throw e;
        }
        finally{
            this.desconectar();
        }
        return listaRanking;
    }
}

package com.modelo;
import com.conexion.Conexion;
import java.util.*;
import java.sql.*;
/**
 * Nombre de la clase:CrudRanking
 * Version:1.0
 * Fecha:01/10/2017
 * Copyright:Sisvapro
 * @author Karen Escobar
 */
public class CrudRanking extends Conexion{
    public List<Ranking> mostrarRanking() throws Exception{
        ResultSet res;
        List<Ranking> listaRanking= new ArrayList();
        try {
            this.conectar();
            String sql="select * from ranking";
            PreparedStatement pre=this.getCon().prepareStatement(sql);
            res=pre.executeQuery();
            while (res.next()) {                
                Ranking r=new Ranking();
                r.setIdRanking(res.getInt("idRanking"));
                r.setClasificacion(res.getString("clasificacion"));
                r.setIdUsuario(res.getInt("idUsuario"));
                listaRanking.add(r);
            }
        } catch (Exception e) {
            throw e;
        }finally{
        this.desconectar();
        }
        return listaRanking;
    }
    
    public void insertarRanking(Ranking r)throws Exception{
        try {
            this.conectar();
            String sql="insert into ranking(idRanking,clasificacion,idUsuario) values(?,?,?)";
            PreparedStatement pre=this.getCon().prepareStatement(sql);
            pre.setInt(1, r.getIdRanking());
            pre.setString(2, r.getClasificacion());
            pre.setInt(3, r.getIdUsuario());
            pre.executeUpdate();
        } catch (Exception e) {
            throw e;
        }finally{
        this.desconectar();
        }
    }
    public void modificarRanking(Ranking r)throws Exception{
        try {
            this.conectar();
            String sql="update ranking set clasificacion=?,idUsuario=? where idRanking=?";
            PreparedStatement pre=this.getCon().prepareStatement(sql);
            pre.setString(1, r.getClasificacion());
            pre.setInt(2, r.getIdUsuario());
            pre.setInt(3, r.getIdRanking());
            pre.executeUpdate();
        } catch (Exception e) {
            throw e;
        }finally{
        this.desconectar();
        }
    }
    public void eliminarRanking(Ranking r)throws Exception{
        try {
            this.conectar();
            String sql="delete from ranking where idRanking=?";
            PreparedStatement pre=this.getCon().prepareStatement(sql);
            pre.setInt(1, r.getIdRanking());
            pre.executeUpdate();
        } catch (Exception e) {
            throw e;
        }finally{
        this.desconectar();
        }
    }
}

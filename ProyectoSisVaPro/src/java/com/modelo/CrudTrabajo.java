package com.modelo;
import com.conexion.Conexion;
import java.util.*;
import java.sql.*;
/**
 * Nombre de la clase:CrudTrabajo
 * Version:1.0
 * Fecha:01/10/2017
 * Copyright:Sisvapro
 * @author Karen Escobar
 */
public class CrudTrabajo extends Conexion{
    public List<Trabajo> mostrarTrabajo() throws Exception{
        ResultSet res;
        List<Trabajo> listaTrabajo= new ArrayList();
        try {
            this.conectar();
            String sql="select * from trabajo";
            PreparedStatement pre=this.getCon().prepareStatement(sql);
            res=pre.executeQuery();
            while (res.next()) {                
                Trabajo t=new Trabajo();
                t.setIdTrabajo(res.getInt("idTrabajo"));
                t.setNombreEmpresa(res.getString("nombreEmpresa"));
                t.setEncargadoEmpresa(res.getString("encargadoEmpresa"));
                t.setPuestoDesempenado(res.getString("puestoDesempeñado"));
                t.setTiempoLaborado(res.getString("tiempoLaborado"));
                listaTrabajo.add(t);
            }
        } catch (Exception e) {
            throw e;
        }finally{
        this.desconectar();
        }
        return listaTrabajo;
    }
    
    public void insertarTrabajo(Trabajo t)throws Exception{
        try {
            this.conectar();
            String sql="insert into trabajo(idTrabajo,nombreEmpresa,encargadoEmpresa,puestoDesemplenado,tiempoLaborado) values(?,?,?,?,?)";
            PreparedStatement pre=this.getCon().prepareStatement(sql);
            pre.setInt(1, t.getIdTrabajo());
            pre.setString(2, t.getNombreEmpresa());
            pre.setString(3, t.getEncargadoEmpresa());
            pre.setString(4, t.getPuestoDesempenado());
            pre.setString(5, t.getTiempoLaborado());
            pre.executeUpdate();
        } catch (Exception e) {
            throw e;
        }finally{
        this.desconectar();
        }
    }
    public void modificarTrabajo(Trabajo t)throws Exception{
        try {
            this.conectar();
            String sql="update trabajo set nombreEmpresa=?,encargadoEmpresa=?,puestoDesemplenado=?,tiempoLaborado=? where idTrabajo=?";
            PreparedStatement pre=this.getCon().prepareStatement(sql);
            pre.setString(1, t.getNombreEmpresa());
            pre.setString(2, t.getEncargadoEmpresa());
            pre.setString(3, t.getPuestoDesempenado());
            pre.setString(4, t.getTiempoLaborado());
            pre.setInt(5, t.getIdTrabajo());
            pre.executeUpdate();
        } catch (Exception e) {
            throw e;
        }finally{
        this.desconectar();
        }
    }
    public void eliminarTrabajo(Trabajo t)throws Exception{
        try {
            this.conectar();
            String sql="delete from trabajo where idTrabajo=?";
            PreparedStatement pre=this.getCon().prepareStatement(sql);
            pre.setInt(1, t.getIdTrabajo());
            pre.executeUpdate();
        } catch (Exception e) {
            throw e;
        }finally{
        this.desconectar();
        }
    }
}

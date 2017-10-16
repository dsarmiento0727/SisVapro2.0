package com.modelo;
import com.conexion.Conexion;
import java.util.*;
import java.sql.*;
/**
 * Nombre de la clase:CrudContratador
 * Version:1.0
 * Fecha:01/10/2017
 * Copyright:Sisvapro
 * @author Karen Escobar,David Sarmiento
 */
public class CrudContratador extends Conexion{
    public List<Contratador> mostrarContratador() throws Exception{
        ResultSet res;
        List<Contratador> listaContratador= new ArrayList<>();
        try {
            this.conectar();
            String sql="select * from contratador";
            PreparedStatement pre=this.getCon().prepareStatement(sql);
            res=pre.executeQuery();
            while (res.next()) {                
                Contratador c= new Contratador();
                c.setIdContratador(res.getInt("idContratador"));
                c.setNombresC(res.getString("nombres"));
                c.setApellidosC(res.getString("apellidos"));
                c.setDescripcion(res.getString("descripcion"));
                c.setCorreoElectronicoC(res.getString("correoElectronico"));
                c.setIdEmpresa(res.getInt("idEmpresa"));
                listaContratador.add(c);
            }
        } catch (Exception e) {
            throw e;
        }finally{
        this.desconectar();
        }
        return listaContratador;
    }
    public void insertarContratador(Contratador c) throws Exception{
        try {
            this.conectar();
            String sql="insert into contratador values(?,?,?,?,?,?)";
            PreparedStatement pre=this.getCon().prepareStatement(sql);
            pre.setInt(1, c.getIdContratador());
            pre.setString(2, c.getNombresC());
            pre.setString(3, c.getApellidosC());
            pre.setString(4, c.getDescripcion());
            pre.setString(5, c.getCorreoElectronicoC());
            pre.setInt(6, c.getIdEmpresa());
            pre.executeUpdate();
        } catch (Exception e) {
            throw e;
        }finally{
        this.desconectar();
        }
    }
    public void modificarContratador(Contratador c) throws Exception{
        try {
            this.conectar();
            String sql="update contratador set nombres=?,apellidos=?,descripcion=?,correoElectronico=?,idEmpresa=? where idContratador=?";
            PreparedStatement pre=this.getCon().prepareStatement(sql);
            pre.setString(1, c.getNombresC());
            pre.setString(2, c.getApellidosC());
            pre.setString(3, c.getDescripcion());
            pre.setString(4, c.getCorreoElectronicoC());
            pre.setInt(5, c.getIdEmpresa());
             pre.setInt(6, c.getIdContratador());
            pre.executeUpdate();
        } catch (Exception e) {
            throw e;
        }finally{
        this.desconectar();
        }
    }
    public void eliminarContratador(Contratador c) throws Exception{
        try {
            this.conectar();
            String sql="delete from contratador where idContratador=?";
            PreparedStatement pre=this.getCon().prepareStatement(sql);
             pre.setInt(1, c.getIdContratador());
            pre.executeUpdate();
        } catch (Exception e) {
            throw e;
        }finally{
        this.desconectar();
        }
    }
}

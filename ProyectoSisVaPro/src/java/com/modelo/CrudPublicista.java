package com.modelo;
import com.conexion.Conexion;
import java.util.*;
import java.sql.*;
/**
 * Nombre de la clase:CrudPublicista
 * Version:1.0
 * Fecha:01/10/2017
 * Copyright:Sisvapro
 * @author Karen Escobar
 */
public class CrudPublicista  extends Conexion{
    public List<Publicista> mostrarPublicista() throws Exception{
        ResultSet res;
        List<Publicista> listaPublicista= new ArrayList();
        try {
            this.conectar();
            String sql="select * from publicista";
            PreparedStatement pre=this.getCon().prepareStatement(sql);
            res=pre.executeQuery();
            while (res.next()) {                
                Publicista pu=new Publicista();
                pu.setIdPublicista(res.getInt("idPublicista"));
                pu.setNombresP(res.getString("nombres"));
                pu.setApellidosP(res.getString("apellidos"));
                pu.setCorreoEllectronicoP(res.getString("correoElectronico"));
                pu.setIdEmpresa(res.getInt("idEmpresa"));
                listaPublicista.add(pu);
            }
        } catch (Exception e) {
            throw e;
        }finally{
        this.desconectar();
        }
        return listaPublicista;
    }
    
    public void insertarPublicista(Publicista pu)throws Exception{
        try {
            this.conectar();
            String sql="insert into publicista(idPublicista,nombres,apellidos.correoElectronico,idEmpresa) values(?,?,?,?,?)";
            PreparedStatement pre=this.getCon().prepareStatement(sql);
            pre.setInt(1, pu.getIdPublicista());
            pre.setString(2, pu.getNombresP());
            pre.setString(3, pu.getApellidosP());
            pre.setString(4, pu.getCorreoEllectronicoP());
            pre.setInt(5, pu.getIdEmpresa());
            pre.executeUpdate();
        } catch (Exception e) {
            throw e;
        }finally{
        this.desconectar();
        }
    }
    public void modificarPublicista(Publicista pu)throws Exception{
        try {
            this.conectar();
            String sql="update publicista set nombres=?,apellidos=?,correoElectronico=?,idEmpresa=? where idPublicista=?";
            PreparedStatement pre=this.getCon().prepareStatement(sql);
            pre.setString(1, pu.getNombresP());
            pre.setString(2, pu.getApellidosP());
            pre.setString(3, pu.getCorreoEllectronicoP());
            pre.setInt(4, pu.getIdEmpresa());
            pre.setInt(5, pu.getIdPublicista());
            pre.executeUpdate();
        } catch (Exception e) {
            throw e;
        }finally{
        this.desconectar();
        }
    }
    public void eliminarPublicista(Publicista pu)throws Exception{
        try {
            this.conectar();
            String sql="delete from publicista where idPublicista=?";
            PreparedStatement pre=this.getCon().prepareStatement(sql);
            pre.setInt(1, pu.getIdPublicista());
            pre.executeUpdate();
        } catch (Exception e) {
            throw e;
        }finally{
        this.desconectar();
        }
    }
}

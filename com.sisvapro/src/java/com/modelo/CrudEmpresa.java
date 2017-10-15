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
 * @author informatica4
 */
public class CrudEmpresa extends Conexion {
      public void insertarEmpresa(Empresa d)throws Exception{
        try {
            this.conectar();
            String sql="insert into Empresa(idEmpresa,nombre) values(?,?,?,?,?,?,?,?,?,?,?)";
            PreparedStatement pre=this.getCon().prepareStatement(sql);
            pre.setInt(1, d.getIdEmpresa());
            pre.setString(2, d.getNombreEmpresa());
            pre.setString(3, d.getRazonSocial());
            pre.setString(4, d.getNit());
            pre.setString(5, d.getDireccion());
            pre.setInt(6, d.getIdPais());
            pre.setInt(7, d.getIdDepartamento());
            pre.setString(8, d.getLogo());
            pre.setString(9, d.getPaginaWeb());
            pre.setInt(10, d.getIdUsuario());
            pre.setInt(11, d.getIdSectorEmpresiarial());
            pre.executeUpdate();
        } catch (Exception e) {
            throw e;
        }
        finally{
            this.desconectar();
        }
    }
    
    public void modificarEmpresa(Empresa d)throws Exception{
        try {
            this.conectar();
            String sql="update Empresa set nombre=? where idEmpresa =?";
            PreparedStatement pre=this.getCon().prepareStatement(sql);
            pre.setInt(1, d.getIdEmpresa());
            pre.setString(2, d.getNombreEmpresa());
            pre.setString(3, d.getRazonSocial());
            pre.setString(4, d.getNit());
            pre.setString(5, d.getDireccion());
            pre.setInt(6, d.getIdPais());
            pre.setInt(7, d.getIdDepartamento());
            pre.setString(8, d.getLogo());
            pre.setString(9, d.getPaginaWeb());
            pre.setInt(10, d.getIdUsuario());
            pre.setInt(11, d.getIdSectorEmpresiarial());
            pre.executeUpdate();
        } catch (Exception e) {
            throw e;
        }
        finally{
            this.desconectar();
        }
    }
    
    public void eliminarEmpresa(Empresa d)throws Exception{
        try {
            this.conectar();
            String sql="delete from Empresa where idEmpresa =?";
            PreparedStatement pre=this.getCon().prepareStatement(sql);
            pre.setInt(1, d.getIdEmpresa());
            pre.executeUpdate();
        } catch (Exception e) {
            throw e;
        }
        finally{
            this.desconectar();
        }
    }
    
    public List<Empresa> mostrarEmpresa()throws Exception{
        List<Empresa> listaEmpresa=new ArrayList();
        ResultSet res;
        try {
           this.conectar();
            String sql="select*from Empresa";
            PreparedStatement pre =this.getCon().prepareCall(sql);
            res=pre.executeQuery();
            while(res.next()){
                Empresa d=new Empresa();
                d.setIdEmpresa(res.getInt("idEmpresa"));
                d.setNombreEmpresa(res.getString("nombre"));
                listaEmpresa.add(d);
            }
        } catch (Exception e) {
            throw e;
        }
        finally{
            this.desconectar();
        }
        return listaEmpresa;
    }
}

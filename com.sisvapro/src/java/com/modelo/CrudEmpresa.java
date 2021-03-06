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
            String sql="insert into empresa(nombreEmpresa,razonSocial,nit,direccion,idPais,idDepartamento,logo,paginaWeb,idSectorEmpresarial,idUsuario) values(?,?,?,?,?,?,?,?,?,?)";
            PreparedStatement pre=this.getCon().prepareStatement(sql);
            pre.setString(1, d.getNombreEmpresa());
            pre.setString(2, d.getRazonSocial());
            pre.setString(3, d.getNit());
            pre.setString(4, d.getDireccion());
            pre.setInt(5, d.getIdPais());
            pre.setInt(6, d.getIdDepartamento());
            pre.setString(7, d.getLogo());
            pre.setString(8, d.getPaginaWeb());
            pre.setInt(9, d.getIdSectorEmpresiarial());
            pre.setInt(10, d.getIdUsuario());
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
            String sql="update empresa set nombreEmpresa=?, razonSocial=?, nit=?, direccion=?, idPais=?, idDepartamento=?, logo=?, paginaWeb=?, idSectorEmpresarial=?, idUsuario=? where idEmpresa=?";
            PreparedStatement pre=this.getCon().prepareStatement(sql);
            pre.setString(1, d.getNombreEmpresa());
            pre.setString(2, d.getRazonSocial());
            pre.setString(3, d.getNit());
            pre.setString(4, d.getDireccion());
            pre.setInt(5, d.getIdPais());
            pre.setInt(6, d.getIdDepartamento());
            pre.setString(7, d.getLogo());
            pre.setString(8, d.getPaginaWeb());
            pre.setInt(9, d.getIdSectorEmpresiarial());
            pre.setInt(10, d.getIdUsuario());
            pre.setInt(11, d.getIdEmpresa());
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
            String sql="delete from empresa where idEmpresa=?";
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
            String sql="select*from empresa";
            PreparedStatement pre =this.getCon().prepareCall(sql);
            res=pre.executeQuery();
            while(res.next()){
                Empresa d=new Empresa();
                d.setIdEmpresa(res.getInt("idEmpresa"));
                d.setNombreEmpresa(res.getString("nombreEmpresa"));
                d.setRazonSocial(res.getString("razonSocial"));
                d.setNit(res.getString("nit"));
                d.setDireccion(res.getString("direccion"));
                d.setIdPais(res.getInt("idPais"));
                d.setIdDepartamento(res.getInt("idDepartamento"));
                d.setLogo(res.getString("logo"));
                d.setIdSectorEmpresiarial(res.getInt("idSectorEmpresarial"));
                d.setPaginaWeb(res.getString("paginaWeb"));
                d.setIdUsuario(res.getInt("idUsuario"));
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

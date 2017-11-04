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
public class CrudAdministrador extends Conexion{
    
    public void insertarAdministrador(Administrador ad)throws Exception{
        try {
            this.conectar();
            String sql="insert into administrador(nombres,apellidos,dui,nit,telefono,direccion,genero,correoElectronico,idPais,IdDepartamento,idUsuario) values(?,?,?,?,?,?,?,?,?,?,?)";
            PreparedStatement pre=this.getCon().prepareStatement(sql);
            pre.setString(1, ad.getNombres());
            pre.setString(2, ad.getApellidos());
            pre.setString(3, ad.getDui());
            pre.setString(4, ad.getNit());
            pre.setString(5, ad.getTelefono());
            pre.setString(6, ad.getDireccion());
            pre.setString(7, ad.getGenero());
            pre.setString(8, ad.getCorreoElectronico());
            pre.setInt(9, ad.getIdPais());
            pre.setInt(10, ad.getIdDepartamento());
            pre.setInt(11, ad.getIdUsuario());
            pre.executeUpdate();
        } catch (Exception e) {
            throw e;
        }
        finally{
            this.desconectar();
        }
    }
    
    public void modificarAdministrador(Administrador ad)throws Exception{
        try {
            this.conectar();
            String sql="update administrador set nombres=?, apellidos=?, dui=?, nit=?, telefono=?, direccion=?, genero=?, correoElectronico=?, idPais=?, idDepartamento=?, idUsuario=? where idAdministrador=?";
            PreparedStatement pre=this.getCon().prepareStatement(sql);
            pre.setString(1, ad.getNombres());
            pre.setString(2, ad.getApellidos());
            pre.setString(3, ad.getDui());
            pre.setString(4, ad.getNit());
            pre.setString(5, ad.getTelefono());
            pre.setString(6, ad.getDireccion());
            pre.setString(7, ad.getGenero());
            pre.setString(8, ad.getCorreoElectronico());
            pre.setInt(9, ad.getIdPais());
            pre.setInt(10, ad.getIdDepartamento());
            pre.setInt(11, ad.getIdUsuario());
            pre.setInt(12, ad.getIdAdministrador());
            pre.executeUpdate();
        } catch (Exception e) {
            throw e;
        }
        finally{
            this.desconectar();
        }
    }
    
    public void eliminarAdministrador(Administrador ad)throws Exception{
        try {
            this.conectar();
            String sql="delete from administrador where idAdministrador =?";
            PreparedStatement pre=this.getCon().prepareStatement(sql);
            pre.setInt(1,ad.getIdAdministrador());
            pre.executeUpdate();
        } catch (Exception e) {
            throw e;
        }
        finally{
            this.desconectar();
        }
    }
    
    public List<Administrador> mostrarAdministrador()throws Exception{
        List<Administrador> listaAdministrador=new ArrayList();
        ResultSet res;
        try {
           this.conectar();
            String sql="select*from administrador";
            PreparedStatement pre =this.getCon().prepareCall(sql);
            res=pre.executeQuery();
            while(res.next()){
                Administrador ad=new Administrador();
                ad.setIdAdministrador(res.getInt("idAdministrador"));
                ad.setNombres(res.getString("nombres"));
                ad.setApellidos(res.getString("apellidos"));
                ad.setDui(res.getString("dui"));
                ad.setNit(res.getString("nit"));
                ad.setTelefono(res.getString("telefono"));
                ad.setDireccion(res.getString("direccion"));
                ad.setGenero(res.getString("genero"));
                ad.setCorreoElectronico(res.getString("correoElectronico"));
                ad.setIdPais(res.getInt("idPais"));
                ad.setIdDepartamento(res.getInt("idDepartamento"));
                ad.setIdUsuario(res.getInt("idUsuario"));
                listaAdministrador.add(ad);
            }
        } catch (Exception e) {
            throw e;
        }
        finally{
            this.desconectar();
        }
        return listaAdministrador;
    }
}

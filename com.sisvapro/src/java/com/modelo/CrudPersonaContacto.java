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
 * @author herny
 */
public class CrudPersonaContacto extends Conexion{
    public void insertarPersonaContacto(PersonaContacto d)throws Exception{
        try {
            this.conectar();
            String sql="insert into personaContacto values(?,?,?,?,?,?,?)";
            PreparedStatement pre=this.getCon().prepareStatement(sql);
            pre.setInt(1, d.getIdPersonaContacto());
            pre.setString(2, d.getNombres());
            pre.setString(3, d.getApellidos());
            pre.setString(4, d.getCargo());
            pre.setString(5, d.getTelefono1());
            pre.setString(6, d.getTelefono2());
            pre.setInt(7, d.getIdEmpresa());
            pre.executeUpdate();
        } catch (Exception e) {
            throw e;
        }
        finally{
            this.desconectar();
        }
    }
    
    public void modificarPersonaContacto(PersonaContacto d)throws Exception{
        try {
            this.conectar();
            String sql="update personaContacto set nombres=?, apellidos=?, cargo=?, telefono1=?, telefono2=?, idEmpresa=? where idPersonaContacto=?";
            PreparedStatement pre=this.getCon().prepareStatement(sql);
            pre.setString(1, d.getNombres());
            pre.setString(2, d.getApellidos());
            pre.setString(3, d.getCargo());
            pre.setString(4, d.getTelefono1());
            pre.setString(5, d.getTelefono2());
            pre.setInt(6, d.getIdEmpresa());
            pre.setInt(7, d.getIdPersonaContacto());
            pre.executeUpdate();
        } catch (Exception e) {
            throw e;
        }
        finally{
            this.desconectar();
        }
    }
    
    public void eliminarPersonaContacto(PersonaContacto d)throws Exception{
        try {
            this.conectar();
            String sql="delete from personaContacto where idPersonaContacto=?";
            PreparedStatement pre=this.getCon().prepareStatement(sql);
            pre.setInt(1, d.getIdPersonaContacto());
            pre.setString(2, d.getNombres());
            pre.setString(3, d.getApellidos());
            pre.setString(4, d.getCargo());
            pre.setString(5, d.getTelefono1());
            pre.setString(6, d.getTelefono2());
            pre.setInt(7, d.getIdEmpresa());
            pre.executeUpdate();
        } catch (Exception e) {
            throw e;
        }
        finally{
            this.desconectar();
        }
    }
    
    public List<PersonaContacto> mostrarPersonaContacto()throws Exception{
        List<PersonaContacto> listaPersonaContacto=new ArrayList();
        ResultSet res;
        try {
           this.conectar();
            String sql="select*from personaContacto";
            PreparedStatement pre =this.getCon().prepareCall(sql);
            res=pre.executeQuery();
            while(res.next()){
                PersonaContacto d=new PersonaContacto();
                d.setIdPersonaContacto(res.getInt("idPersonaContacto"));
                d.setNombres(res.getString("nombres"));
                d.setApellidos(res.getString("apellidos"));
                d.setCargo(res.getString("cargo"));
                d.setTelefono1(res.getString("telefono1"));
                d.setTelefono2(res.getString("telefono2"));
                d.setIdEmpresa(res.getInt("idEmpresa"));
                listaPersonaContacto.add(d);
            }
        } catch (Exception e) {
            throw e;
        }
        finally{
            this.desconectar();
        }
        return listaPersonaContacto;
    }
}

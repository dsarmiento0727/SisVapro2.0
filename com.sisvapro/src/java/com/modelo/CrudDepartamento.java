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
 * Nombre del servlet: CrudDepartamento
 * Versión 1.0,1.2
 * Fecha:14/10/2017
 * CopyRight:MundoEmpelo SA. De CV.
 * @author Carlos Pozo,Karen Escobar
 */
public class CrudDepartamento extends Conexion{
    
    public void insertarDepartamento(Departamento d)throws Exception{
        try {
            this.conectar();
            String sql="insert into departamento(idDepartamento,nombre) values(?,?)";
            PreparedStatement pre=this.getCon().prepareStatement(sql);
            pre.setInt(1, d.getIdDepartamento());
            pre.setString(2, d.getNombreDepartamento());
            pre.executeUpdate();
        } catch (Exception e) {
            throw e;
        }
        finally{
            this.desconectar();
        }
    }
    
    public void modificarDepartamento(Departamento d)throws Exception{
        try {
            this.conectar();
            String sql="update departamento set nombre=? where idDepartamento=?";
            PreparedStatement pre=this.getCon().prepareStatement(sql);
            pre.setString(1, d.getNombreDepartamento());
            pre.setInt(2, d.getIdDepartamento());
            pre.executeUpdate();
        } catch (Exception e) {
            throw e;
        }
        finally{
            this.desconectar();
        }
    }
    
    public void eliminarDepartamento(Departamento d)throws Exception{
        try {
            this.conectar();
            String sql="delete from departamento where idDepartamento=?";
            PreparedStatement pre=this.getCon().prepareStatement(sql);
            pre.setInt(1, d.getIdDepartamento());
            pre.executeUpdate();
        } catch (Exception e) {
            throw e;
        }
        finally{
            this.desconectar();
        }
    }
    
    public List<Departamento> mostrarDepartamento()throws Exception{
        List<Departamento> listaDepartamento=new ArrayList();
        ResultSet res;
        try {
           this.conectar();
            String sql="select*from departamento";
            PreparedStatement pre =this.getCon().prepareCall(sql);
            res=pre.executeQuery();
            while(res.next()){
                Departamento d=new Departamento();
                d.setIdDepartamento(res.getInt("idDepartamento"));
                d.setNombreDepartamento(res.getString("nombre"));
                listaDepartamento.add(d);
            }
        } catch (Exception e) {
            throw e;
        }
        finally{
            this.desconectar();
        }
        return listaDepartamento;
    }
}

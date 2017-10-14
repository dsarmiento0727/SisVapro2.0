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
public class CrudDepartamento extends Conexion{
    public void insertarDepartamento(Departamento de)throws Exception{
        this.conectar();
        String sql="insert into departamento values(?,?)";
        PreparedStatement pre=this.getCon().prepareStatement(sql);
        try {
            pre.setInt(1, de.getIdDepartamento());
            pre.setString(2, de.getNombreDepartamento());
            pre.executeUpdate();
        } catch (Exception e) {
            throw e;
        }
        finally{
            this.desconectar();
        }
    }
    
    public void modificarDepartamento(Departamento de)throws Exception{
        this.conectar();
        String sql="update departamento set nombre=? where idDepartamento=?";
        PreparedStatement pre=this.getCon().prepareStatement(sql);
        try {
            pre.setString(1, de.getNombreDepartamento());
            pre.setInt(2, de.getIdDepartamento());
            pre.executeUpdate();
        } catch (Exception e) {
            throw e;
        }
        finally{
            this.desconectar();
        }
    }
    
    public void eliminarDepartamento(Departamento de)throws Exception{
        this.conectar();
        String sql="delete from departamento where idDepartamento=?";
        PreparedStatement pre=this.getCon().prepareStatement(sql);
        try {
            pre.setInt(1, de.getIdDepartamento());
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
                Departamento de=new Departamento();
                de.setIdDepartamento(res.getInt("idDepartamento"));
                de.setNombreDepartamento(res.getString("nombre"));
                listaDepartamento.add(de);
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

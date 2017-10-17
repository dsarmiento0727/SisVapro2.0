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
public class CrudEmpleador extends Conexion{
    public void insertarEmpleador(Empleador em)throws Exception{
        try {
            this.conectar();
            String sql="insert into empleador values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
            PreparedStatement pre=this.getCon().prepareStatement(sql);
            pre.setInt(1, em.getIdEmpleador());
            pre.setString(2, em.getNombres());
            pre.setString(3, em.getApellidos());
            pre.setString(4, em.getDireccion());
            pre.setString(5, em.getTelefono());
            pre.setString(6, em.getCorreoElectronico());
            pre.setString(7, em.getFechaNac());
            pre.setString(8, em.getGenero());
            pre.setInt(9, em.getAniosExperiencia());
            pre.setString(10, em.getFotoPerfil());
            pre.setString(11, em.getDui());
            pre.setString(12, em.getNit());
            pre.setString(13, em.getNacionalidad());
            pre.setInt(14, em.getIdUsuario());
            pre.setInt(15, em.getIdPais());
            pre.setInt(16, em.getIdDepartamento());
            pre.setInt(17, em.getIdHabilidad());
            pre.setInt(18, em.getIdFormacion());
            pre.setInt(19, em.getIdExperienciaLaboral());
            pre.setInt(20, em.getIdAreaProfesional());
            pre.setInt(21, em.getIdCapacitacion());
            pre.executeUpdate();
        } catch (Exception e) {
            throw e;
        }
        finally{
            this.desconectar();
        }
    }
    
    public void modificarEmpleador(Empleador em)throws Exception{
        try {
            this.conectar();
            String sql="update empleador set nombres=?, apellidos=?, direccion=?, telefono=?, correoElectronico=?, fechaNacimiento=?, genero=?, aniosExperiencia=?, fotoPerfil=? dui=?, nit=?, nacionalidad=?, idUsuario=?, idPais=?, idDepartamento=?, idHabilidad=?, idFormacion=?, idExperienciaLaboral=?, idAreaProfesional=?, idCapacitacion=? where idEmpleador=?";
            PreparedStatement pre=this.getCon().prepareStatement(sql);
            pre.setString(1, em.getNombres());
            pre.setString(2, em.getApellidos());
            pre.setString(3, em.getDireccion());
            pre.setString(4, em.getTelefono());
            pre.setString(5, em.getCorreoElectronico());
            pre.setString(6, em.getFechaNac());
            pre.setString(7, em.getGenero());
            pre.setInt(8, em.getAniosExperiencia());
            pre.setString(9, em.getFotoPerfil());
            pre.setString(10, em.getDui());
            pre.setString(11, em.getNit());
            pre.setString(12, em.getNacionalidad());
            pre.setInt(13, em.getIdUsuario());
            pre.setInt(14, em.getIdPais());
            pre.setInt(15, em.getIdDepartamento());
            pre.setInt(16, em.getIdHabilidad());
            pre.setInt(17, em.getIdFormacion());
            pre.setInt(18, em.getIdExperienciaLaboral());
            pre.setInt(19, em.getIdAreaProfesional());
            pre.setInt(20, em.getIdCapacitacion());
            pre.setInt(21, em.getIdEmpleador());
            pre.executeUpdate();
        } catch (Exception e) {
            throw e;
        }
        finally{
            this.desconectar();
        }
    }
    
    public void eliminarEmpleador(Empleador em)throws Exception{
        try {
            this.conectar();
            String sql="delete from empleador where idEmpleador=?";
            PreparedStatement pre=this.getCon().prepareStatement(sql);
            pre.setInt(1,em.getIdEmpleador());
            pre.executeUpdate();
        } catch (Exception e) {
            throw e;
        }
        finally{
            this.desconectar();
        }
    }
    
    public List<Empleador> mostrarEmpleador()throws Exception{
        List<Empleador> listaEmpleador=new ArrayList();
        ResultSet res;
        try {
           this.conectar();
            String sql="select*from empleador";
            PreparedStatement pre =this.getCon().prepareCall(sql);
            res=pre.executeQuery();
            while(res.next()){
                Empleador em=new Empleador();
                em.setIdEmpleador(res.getInt("idEmpleador"));
                em.setNombres(res.getString("nombres"));
                em.setApellidos(res.getString("apellidos"));
                em.setDireccion(res.getString("direccion"));
                em.setTelefono(res.getString("telefono"));
                em.setCorreoElectronico(res.getString("correoElectronico"));
                em.setFechaNac(res.getString("fechaNacimiento"));
                em.setGenero(res.getString("genero"));
                em.setAniosExperiencia(res.getInt("aniosExperiencia"));
                em.setFotoPerfil(res.getString("fotoPerfil"));
                em.setDui(res.getString("dui"));
                em.setNit(res.getString("nit"));
                em.setNacionalidad(res.getString("nacionalidad"));
                em.setIdUsuario(res.getInt("idUsuario"));
                em.setIdPais(res.getInt("idPais"));
                em.setIdDepartamento(res.getInt("idDepartamento"));
                em.setIdHabilidad(res.getInt("idHabilidad"));
                em.setIdFormacion(res.getInt("idFormacion"));
                em.setIdExperienciaLaboral(res.getInt("idExperienciaLaboral"));
                em.setIdAreaProfesional(res.getInt("idAreaProfesional"));
                em.setIdCapacitacion(res.getInt("idCapacitacion"));
                listaEmpleador.add(em);
            }
        } catch (Exception e) {
            throw e;
        }
        finally{
            this.desconectar();
        }
        return listaEmpleador;
    }
}

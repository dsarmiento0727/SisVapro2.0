package com.modelo;
import com.conexion.Conexion;
import java.util.*;
import java.sql.*;
/**
 * Nombre de la clase:CrudPerfil
 * Version:1.0
 * Fecha:01/10/2017
 * Copyright:Sisvapro
 * @author Karen Escobar
 */
public class CrudPerfil extends Conexion{
    public List<Perfil> mostrarPerfil() throws Exception{
        ResultSet res;
        List<Perfil> listaPerfil=new ArrayList<>();
        try {
             this.conectar();
            String sql="select * from pais";
            PreparedStatement pre=this.getCon().prepareStatement(sql);
            res=pre.executeQuery();
            while (res.next()) {                
                Perfil per=new Perfil();
                per.setIdPerfil(res.getInt("idPerfil"));
                per.setFoto(res.getString("foto"));
                per.setNombres(res.getString("nombres"));
                per.setApellidos(res.getString("apellidos"));
                per.setGenero(res.getString("genero"));
                per.setFechaNacimiento(res.getString("fechaNacimiento"));
                per.setDui(res.getString("dui"));
                per.setNit(res.getString("nit"));
                per.setEstadoCivil(res.getString("estadoCivil"));
                per.setDireccion(res.getString("direccion"));
                per.setIdPais(res.getInt("idPais"));
                per.setIdDepartamento(res.getInt("idDepartamento"));
                per.setIdMunicipio(res.getInt("idMunicipio"));
                per.setIdUsuario(res.getInt("idUsuario"));
                per.setIdHabilidad(res.getInt("idHabilidad"));
                per.setIdIdioma(res.getInt("idIdioma"));
                per.setIdProfesion(res.getInt("idProfesion"));
                per.setIdTrabajo(res.getInt("idTrabajo"));
                per.setCorreoElectronico(res.getString("correoElectronico"));
                listaPerfil.add(per);
            }
        } catch (Exception e) {
            throw e;
        }finally{
        this.desconectar();
        }
        return listaPerfil;
    }
    public void insertarPerfil(Perfil per) throws Exception{
        try {
            this.conectar();
            String sql="insert into perfil(idPerfil,foto,nombres,apellidos,genero,"
                    + "fechaNacimiento, dui,nit,estadoCivil,direccion,idPais,idDepartamento,"
                    + "idMunicipio,idUsuario,idHabilidad,idIdioma,idProfesion,idTrabajo,correoElectronico)"
                    + " values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
            PreparedStatement pre=this.getCon().prepareStatement(sql);
            pre.setInt(1, per.getIdPerfil());
            pre.setString(2, per.getFoto());
            pre.setString(3, per.getNombres());
            pre.setString(4, per.getApellidos());
            pre.setString(5, per.getGenero());
            pre.setString(6, per.getFechaNacimiento());
            pre.setString(7, per.getDui());
            pre.setString(8, per.getNit());
            pre.setString(9, per.getEstadoCivil());
            pre.setString(10, per.getDireccion());
            pre.setInt(11, per.getIdPais());
            pre.setInt(12, per.getIdDepartamento());
            pre.setInt(13, per.getIdMunicipio());
            pre.setInt(14, per.getIdUsuario());
            pre.setInt(15, per.getIdHabilidad());
            pre.setInt(16, per.getIdIdioma());
            pre.setInt(17, per.getIdProfesion());
            pre.setInt(18, per.getIdTrabajo());
            pre.setString(19, per.getCorreoElectronico());
            pre.executeUpdate();
        } catch (Exception e) {
            throw e;
        }finally{
        this.desconectar();
        }
    }
    public void modificarPerfil(Perfil per) throws Exception{
        try {
            this.conectar();
            String sql="update perfil set foto=?,nombres=?,apellidos=?,genero=?,"
                    + "fechaNacimiento=?, dui=?,nit=?,estadoCivil=?,direccion=?,"
                    + "idPais=?,idDepartamento=?,idMunicipio=?,idUsuario=?,"
                    + "idHabilidad=?,idIdioma=?,idProfesion=?,idTrabajo=?,"
                    + "correoElectronico=? where idPerfil=?";
            PreparedStatement pre=this.getCon().prepareStatement(sql);
            pre.setString(1, per.getFoto());
            pre.setString(2, per.getNombres());
            pre.setString(3, per.getApellidos());
            pre.setString(4, per.getGenero());
            pre.setString(5, per.getFechaNacimiento());
            pre.setString(6, per.getDui());
            pre.setString(7, per.getNit());
            pre.setString(8, per.getEstadoCivil());
            pre.setString(9, per.getDireccion());
            pre.setInt(10, per.getIdPais());
            pre.setInt(11, per.getIdDepartamento());
            pre.setInt(12, per.getIdMunicipio());
            pre.setInt(13, per.getIdUsuario());
            pre.setInt(14, per.getIdHabilidad());
            pre.setInt(15, per.getIdIdioma());
            pre.setInt(16, per.getIdProfesion());
            pre.setInt(17, per.getIdTrabajo());
            pre.setString(18, per.getCorreoElectronico());
            pre.setInt(19, per.getIdPerfil());
            pre.executeUpdate();
        } catch (Exception e) {
            throw e;
        }finally{
        this.desconectar();
        }
    }
    public void eliminarPerfil(Perfil per) throws Exception{
        try {
            this.conectar();
            String sql="delete from perfil where idPerfil=?";
            PreparedStatement pre=this.getCon().prepareStatement(sql);
            pre.setInt(1, per.getIdPerfil());
            pre.executeUpdate();
        } catch (Exception e) {
            throw e;
        }finally{
        this.desconectar();
        }
    }
}

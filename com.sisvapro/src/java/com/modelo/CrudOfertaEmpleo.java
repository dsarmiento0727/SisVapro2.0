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
public class CrudOfertaEmpleo extends Conexion{
     public void insertarOfertaEmpleo(OfertaEmpleo oe)throws Exception{
        try {
            this.conectar();
            String sql="insert into ofertaEmpleo(puestoVacante,cantidad,tipoContratacion,genero,edad,salario,idEmpresa,idPais,idDepartamento,idSectorEmpresarial,descripcionOferta) values(?,?,?,?,?,?,?,?,?,?,?)";
            PreparedStatement pre=this.getCon().prepareStatement(sql);
            pre.setString(2, oe.getPuestoVacante());
            pre.setInt(3, oe.getCantidad());
            pre.setString(4, oe.getTipoContratacion());
            pre.setString(5, oe.getGenero());
            pre.setString(6, oe.getEdad());
            pre.setDouble(7, oe.getSalario());
            pre.setInt(8, oe.getIdEmpresa());
            pre.setInt(9, oe.getIdPais());
            pre.setInt(10, oe.getIdDepartamento());
            pre.setInt(11, oe.getIdSectorEmpresarial());
            pre.setString(12, oe.getDescripcionOferta());
            pre.executeUpdate();
        } catch (Exception e) {
            throw e;
        }
        finally{
            this.desconectar();
        }
    }
    
    public void modificarOfertaEmpleo(OfertaEmpleo oe)throws Exception{
        try {
            this.conectar();
            String sql="update ofertaEmpleo set puestoVacante=?, cantidad=?,tipoContratacion=?, genero=?, edad=?, salario=?, idEmpresa=?, idPais=?, idDepartamento=?, descripcionOferta=? ,idSectorEmpresarial=? where idOfertaEmpleo=?";
            PreparedStatement pre=this.getCon().prepareStatement(sql);
            pre.setString(1, oe.getPuestoVacante());
            pre.setInt(2, oe.getCantidad());
            pre.setString(3, oe.getTipoContratacion());
            pre.setString(4, oe.getGenero());
            pre.setString(5, oe.getEdad());
            pre.setDouble(6, oe.getSalario());
            pre.setInt(7, oe.getIdEmpresa());
            pre.setInt(8, oe.getIdPais());
            pre.setInt(9, oe.getIdDepartamento());
            pre.setString(10, oe.getDescripcionOferta());
            pre.setInt(11, oe.getIdSectorEmpresarial());
            pre.setInt(12, oe.getIdOfertaEmpleo());
            pre.executeUpdate();
        } catch (Exception e) {
            throw e;
        }
        finally{
            this.desconectar();
        }
    }
    
    public void eliminarOfertaEmpleo(OfertaEmpleo oe)throws Exception{
        try {
            this.conectar();
            String sql="delete from ofertaEmpleo where idOfertaEmpleo=?";
            PreparedStatement pre=this.getCon().prepareStatement(sql);
            pre.setInt(1,oe.getIdOfertaEmpleo());
            pre.executeUpdate();
        } catch (Exception e) {
            throw e;
        }
        finally{
            this.desconectar();
        }
    }
    
    public List<OfertaEmpleo> mostrarOfertaEmpleo()throws Exception{
        List<OfertaEmpleo> listaOfertaEmpleo=new ArrayList();
        ResultSet res;
        try {
           this.conectar();
            String sql="select*from ofertaEmpleo";
            PreparedStatement pre =this.getCon().prepareCall(sql);
            res=pre.executeQuery();
            while(res.next()){
                OfertaEmpleo oe=new OfertaEmpleo();
                oe.setIdOfertaEmpleo(res.getInt("idOfertaEmpleo"));
                oe.setPuestoVacante(res.getString("puestoVacante"));
                oe.setCantidad(res.getInt("cantidad"));
                oe.setTipoContratacion(res.getString("tipoContratacion"));
                oe.setGenero(res.getString("genero"));
                oe.setEdad(res.getString("edad"));
                oe.setSalario(res.getDouble("salario"));
                oe.setIdEmpresa(res.getInt("idEmpresa"));
                oe.setIdPais(res.getInt("idPais"));
                oe.setIdDepartamento(res.getInt("idDepartamento"));
                oe.setIdSectorEmpresarial(res.getInt("idSectorEmpresarial"));
                oe.setDescripcionOferta(res.getString("descripcionOferta"));
                oe.setNivelExperiencia(res.getString("nivelExperiencia"));
                listaOfertaEmpleo.add(oe);
            }
        } catch (Exception e) {
            throw e;
        }
        finally{
            this.desconectar();
        }
        return listaOfertaEmpleo;
    }
}

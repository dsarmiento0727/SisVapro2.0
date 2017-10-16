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
public class CrudSectorEmpresarial  extends Conexion {
    public void insertarSectorEmpresarial(SectorEmpresarial d)throws Exception{
        try {
            this.conectar();
            String sql="insert into sectorEmpresarial values(?,?)";
            PreparedStatement pre=this.getCon().prepareStatement(sql);
            pre.setInt(1, d.getIdSectorEmpresarial());
            pre.setString(2, d.getNombreSectorEmpresarial());
           
            pre.executeUpdate();
        } catch (Exception e) {
            throw e;
        }
        finally{
            this.desconectar();
        }
    }
    
    public void modificarSectorEmpresarial(SectorEmpresarial d)throws Exception{
        try {
            this.conectar();
            String sql="update sectorEmpresarial set nombreSectorEmpresarial=? where idSectorEmpresarial=?";
            PreparedStatement pre=this.getCon().prepareStatement(sql);
            pre.setString(1, d.getNombreSectorEmpresarial());
            pre.setInt(2, d.getIdSectorEmpresarial());
            pre.executeUpdate();
        } catch (Exception e) {
            throw e;
        }
        finally{
            this.desconectar();
        }
    }
    
    public void eliminarSectorEmpresarial(SectorEmpresarial d)throws Exception{
        try {
            this.conectar();
            String sql="delete from sectorEmpresarial where idFormacion=?";
            PreparedStatement pre=this.getCon().prepareStatement(sql);
            pre.setInt(1, d.getIdSectorEmpresarial());
            pre.setString(2, d.getNombreSectorEmpresarial());
            pre.executeUpdate();
        } catch (Exception e) {
            throw e;
        }
        finally{
            this.desconectar();
        }
    }
    
    public List<SectorEmpresarial> mostrarSectorEmpresarial()throws Exception{
        List<SectorEmpresarial> listaSectorEmpresarial=new ArrayList();
        ResultSet res;
        try {
           this.conectar();
            String sql="select*from sectorEmpresarial";
            PreparedStatement pre =this.getCon().prepareCall(sql);
            res=pre.executeQuery();
            while(res.next()){
                SectorEmpresarial d=new SectorEmpresarial();
                d.setIdSectorEmpresarial(res.getInt("idSectorEmpresarial"));
                d.setNombreSectorEmpresarial(res.getString("nombreSectorEmpresarial"));
                listaSectorEmpresarial.add(d);
            }
        } catch (Exception e) {
            throw e;
        }
        finally{
            this.desconectar();
        }
        return listaSectorEmpresarial;
    }
}

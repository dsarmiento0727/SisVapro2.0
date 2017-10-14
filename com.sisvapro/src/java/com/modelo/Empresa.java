/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.modelo;

/**
 *
 * @author carlos
 */
public class Empresa {
    private int idEmpresa;
    private String nombreEmpresa;
    private String razonSocial;
    private String nit;
    private String direccion;
    private int idPais;
    private int idDepartamento;
    private String logo;
    private String paginaWeb;
    private int idUsuario;
    private int idSectorEmpresiarial;

    public Empresa() {
    }

    public Empresa(int idEmpresa, String nombreEmpresa, String razonSocial, String nit, String direccion, int idPais, int idDepartamento, String logo, String paginaWeb, int idUsuario, int idSectorEmpresiarial) {
        this.idEmpresa = idEmpresa;
        this.nombreEmpresa = nombreEmpresa;
        this.razonSocial = razonSocial;
        this.nit = nit;
        this.direccion = direccion;
        this.idPais = idPais;
        this.idDepartamento = idDepartamento;
        this.logo = logo;
        this.paginaWeb = paginaWeb;
        this.idUsuario = idUsuario;
        this.idSectorEmpresiarial = idSectorEmpresiarial;
    }

    public int getIdEmpresa() {
        return idEmpresa;
    }

    public void setIdEmpresa(int idEmpresa) {
        this.idEmpresa = idEmpresa;
    }

    public String getNombreEmpresa() {
        return nombreEmpresa;
    }

    public void setNombreEmpresa(String nombreEmpresa) {
        this.nombreEmpresa = nombreEmpresa;
    }

    public String getRazonSocial() {
        return razonSocial;
    }

    public void setRazonSocial(String razonSocial) {
        this.razonSocial = razonSocial;
    }

    public String getNit() {
        return nit;
    }

    public void setNit(String nit) {
        this.nit = nit;
    }

    public String getDireccion() {
        return direccion;
    }

    public void setDireccion(String direccion) {
        this.direccion = direccion;
    }

    public int getIdPais() {
        return idPais;
    }

    public void setIdPais(int idPais) {
        this.idPais = idPais;
    }

    public int getIdDepartamento() {
        return idDepartamento;
    }

    public void setIdDepartamento(int idDepartamento) {
        this.idDepartamento = idDepartamento;
    }

    public String getLogo() {
        return logo;
    }

    public void setLogo(String logo) {
        this.logo = logo;
    }

    public String getPaginaWeb() {
        return paginaWeb;
    }

    public void setPaginaWeb(String paginaWeb) {
        this.paginaWeb = paginaWeb;
    }

    public int getIdUsuario() {
        return idUsuario;
    }

    public void setIdUsuario(int idUsuario) {
        this.idUsuario = idUsuario;
    }

    public int getIdSectorEmpresiarial() {
        return idSectorEmpresiarial;
    }

    public void setIdSectorEmpresiarial(int idSectorEmpresiarial) {
        this.idSectorEmpresiarial = idSectorEmpresiarial;
    }
    
    
}

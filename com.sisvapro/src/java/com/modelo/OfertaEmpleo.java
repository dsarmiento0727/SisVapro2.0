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
public class OfertaEmpleo {
    private int idOfertaEmpleo;
    private String puestoVacante;
    private int cantidad;
    private String tipoContratacion;
    private String nivelExperiencia;
    private String genero;
    private int edad;
    private Double salario;
    private int idEmpresa;
    private int idPais;
    private int idDepartamento;
    private int idSectorEmpresarial;
    private String descripcionOferta;

    public OfertaEmpleo() {
    }

    public OfertaEmpleo(int idOfertaEmpleo, String puestoVacante, int cantidad, String tipoContratacion, String nivelExperiencia, String genero, int edad, Double salario, int idEmpresa, int idPais, int idDepartamento, int idSectorEmpresarial, String descripcionOferta) {
        this.idOfertaEmpleo = idOfertaEmpleo;
        this.puestoVacante = puestoVacante;
        this.cantidad = cantidad;
        this.tipoContratacion = tipoContratacion;
        this.nivelExperiencia = nivelExperiencia;
        this.genero = genero;
        this.edad = edad;
        this.salario = salario;
        this.idEmpresa = idEmpresa;
        this.idPais = idPais;
        this.idDepartamento = idDepartamento;
        this.idSectorEmpresarial = idSectorEmpresarial;
        this.descripcionOferta = descripcionOferta;
    }

    public int getIdOfertaEmpleo() {
        return idOfertaEmpleo;
    }

    public void setIdOfertaEmpleo(int idOfertaEmpleo) {
        this.idOfertaEmpleo = idOfertaEmpleo;
    }

    public String getPuestoVacante() {
        return puestoVacante;
    }

    public void setPuestoVacante(String puestoVacante) {
        this.puestoVacante = puestoVacante;
    }

    public int getCantidad() {
        return cantidad;
    }

    public void setCantidad(int cantidad) {
        this.cantidad = cantidad;
    }

    public String getTipoContratacion() {
        return tipoContratacion;
    }

    public void setTipoContratacion(String tipoContratacion) {
        this.tipoContratacion = tipoContratacion;
    }

    public String getNivelExperiencia() {
        return nivelExperiencia;
    }

    public void setNivelExperiencia(String nivelExperiencia) {
        this.nivelExperiencia = nivelExperiencia;
    }

    public String getGenero() {
        return genero;
    }

    public void setGenero(String genero) {
        this.genero = genero;
    }

    public int getEdad() {
        return edad;
    }

    public void setEdad(int edad) {
        this.edad = edad;
    }

    public Double getSalario() {
        return salario;
    }

    public void setSalario(Double salario) {
        this.salario = salario;
    }

    public int getIdEmpresa() {
        return idEmpresa;
    }

    public void setIdEmpresa(int idEmpresa) {
        this.idEmpresa = idEmpresa;
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

    public int getIdSectorEmpresarial() {
        return idSectorEmpresarial;
    }

    public void setIdSectorEmpresarial(int idSectorEmpresarial) {
        this.idSectorEmpresarial = idSectorEmpresarial;
    }

    public String getDescripcionOferta() {
        return descripcionOferta;
    }

    public void setDescripcionOferta(String descripcionOferta) {
        this.descripcionOferta = descripcionOferta;
    }

    

    
    
}

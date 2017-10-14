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
public class Administrador {
    private int idAdministrador;
    private String nombres;
    private String apellidos;
    private String dui;
    private String nit;
    private String telefono;
    private String direccion;
    private String genero;
    private String correoElectronico;
    private int idPais;
    private int idDepartamento;
    private int idUsuario;

    public Administrador() {
    }

    public Administrador(int idAdministrador, String nombres, String apellidos, String dui, String nit, String telefono, String direccion, String genero, String correoElectronico, int idPais, int idDepartamento, int idUsuario) {
        this.idAdministrador = idAdministrador;
        this.nombres = nombres;
        this.apellidos = apellidos;
        this.dui = dui;
        this.nit = nit;
        this.telefono = telefono;
        this.direccion = direccion;
        this.genero = genero;
        this.correoElectronico = correoElectronico;
        this.idPais = idPais;
        this.idDepartamento = idDepartamento;
        this.idUsuario = idUsuario;
    }

    public int getIdAdministrador() {
        return idAdministrador;
    }

    public void setIdAdministrador(int idAdministrador) {
        this.idAdministrador = idAdministrador;
    }

    public String getNombres() {
        return nombres;
    }

    public void setNombres(String nombres) {
        this.nombres = nombres;
    }

    public String getApellidos() {
        return apellidos;
    }

    public void setApellidos(String apellidos) {
        this.apellidos = apellidos;
    }

    public String getDui() {
        return dui;
    }

    public void setDui(String dui) {
        this.dui = dui;
    }

    public String getNit() {
        return nit;
    }

    public void setNit(String nit) {
        this.nit = nit;
    }

    public String getTelefono() {
        return telefono;
    }

    public void setTelefono(String telefono) {
        this.telefono = telefono;
    }

    public String getDireccion() {
        return direccion;
    }

    public void setDireccion(String direccion) {
        this.direccion = direccion;
    }

    public String getGenero() {
        return genero;
    }

    public void setGenero(String genero) {
        this.genero = genero;
    }

    public String getCorreoElectronico() {
        return correoElectronico;
    }

    public void setCorreoElectronico(String correoElectronico) {
        this.correoElectronico = correoElectronico;
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

    public int getIdUsuario() {
        return idUsuario;
    }

    public void setIdUsuario(int idUsuario) {
        this.idUsuario = idUsuario;
    }
    
    
}

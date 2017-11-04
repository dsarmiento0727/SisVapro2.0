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
public class Empleador {
    private int idEmpleador;
    private String nombres;
    private String apellidos;
    private String direccion;
    private String telefono;
    private String correoElectronico;
    private String fechaNac;
    private String genero;
    private int aniosExperiencia;
    private String fotoPerfil;
    private String dui;
    private String nit;
    private String nacionalidad;
    private int idUsuario;
    private int idPais;
    private int idDepartamento;
    private int idAreaProfesional;
   
    public Empleador() {
    }

    public Empleador(int idEmpleador, String nombres, String apellidos, String direccion, String telefono, String correoElectronico, String fechaNac, String genero, int aniosExperiencia, String fotoPerfil, String dui, String nit, String nacionalidad, int idUsuario, int idPais, int idDepartamento, int idAreaProfesional) {
        this.idEmpleador = idEmpleador;
        this.nombres = nombres;
        this.apellidos = apellidos;
        this.direccion = direccion;
        this.telefono = telefono;
        this.correoElectronico = correoElectronico;
        this.fechaNac = fechaNac;
        this.genero = genero;
        this.aniosExperiencia = aniosExperiencia;
        this.fotoPerfil = fotoPerfil;
        this.dui = dui;
        this.nit = nit;
        this.nacionalidad = nacionalidad;
        this.idUsuario = idUsuario;
        this.idPais = idPais;
        this.idDepartamento = idDepartamento;
        this.idAreaProfesional = idAreaProfesional;
    }

    public int getIdEmpleador() {
        return idEmpleador;
    }

    public void setIdEmpleador(int idEmpleador) {
        this.idEmpleador = idEmpleador;
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

    public String getDireccion() {
        return direccion;
    }

    public void setDireccion(String direccion) {
        this.direccion = direccion;
    }

    public String getTelefono() {
        return telefono;
    }

    public void setTelefono(String telefono) {
        this.telefono = telefono;
    }

    public String getCorreoElectronico() {
        return correoElectronico;
    }

    public void setCorreoElectronico(String correoElectronico) {
        this.correoElectronico = correoElectronico;
    }

    public String getFechaNac() {
        return fechaNac;
    }

    public void setFechaNac(String fechaNac) {
        this.fechaNac = fechaNac;
    }

    public String getGenero() {
        return genero;
    }

    public void setGenero(String genero) {
        this.genero = genero;
    }

    public int getAniosExperiencia() {
        return aniosExperiencia;
    }

    public void setAniosExperiencia(int aniosExperiencia) {
        this.aniosExperiencia = aniosExperiencia;
    }

    public String getFotoPerfil() {
        return fotoPerfil;
    }

    public void setFotoPerfil(String fotoPerfil) {
        this.fotoPerfil = fotoPerfil;
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

    public String getNacionalidad() {
        return nacionalidad;
    }

    public void setNacionalidad(String nacionalidad) {
        this.nacionalidad = nacionalidad;
    }

    public int getIdUsuario() {
        return idUsuario;
    }

    public void setIdUsuario(int idUsuario) {
        this.idUsuario = idUsuario;
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

    public int getIdAreaProfesional() {
        return idAreaProfesional;
    }

    public void setIdAreaProfesional(int idAreaProfesional) {
        this.idAreaProfesional = idAreaProfesional;
    }

    

}

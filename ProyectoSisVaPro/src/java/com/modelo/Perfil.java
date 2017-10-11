package com.modelo;

/**
 * Nombre de la clase:Perfil
 * Version:1.0
 * Fecha:01/10/2017
 * Copyright:Sisvapro
 * @author Karen Escobar
 */
public class Perfil {
    private int idPerfil;
    private String foto;
    private String nombres;
    private String apellidos;
    private String genero;
    private String fechaNacimiento;
    private String dui;
    private String nit;
    private String estadoCivil;
    private String direccion;
    private int idPais;
    private int idDepartamento;
    private int idMunicipio;
    private int idUsuario;
    private int idHabilidad;
    private int idIdioma;
    private int idProfesion;
    private int idTrabajo;
    private String correoElectronico;

    public Perfil() {
    }

    public Perfil(int idPerfil, String foto, String nombres, String apellidos, String genero, String fechaNacimiento, String dui, String nit, String estadoCivil, String direccion, int idPais, int idDepartamento, int idMunicipio, int idUsuario, int idHabilidad, int idIdioma, int idProfesion, int idTrabajo, String correoElectronico) {
        this.idPerfil = idPerfil;
        this.foto = foto;
        this.nombres = nombres;
        this.apellidos = apellidos;
        this.genero = genero;
        this.fechaNacimiento = fechaNacimiento;
        this.dui = dui;
        this.nit = nit;
        this.estadoCivil = estadoCivil;
        this.direccion = direccion;
        this.idPais = idPais;
        this.idDepartamento = idDepartamento;
        this.idMunicipio = idMunicipio;
        this.idUsuario = idUsuario;
        this.idHabilidad = idHabilidad;
        this.idIdioma = idIdioma;
        this.idProfesion = idProfesion;
        this.idTrabajo = idTrabajo;
        this.correoElectronico = correoElectronico;
    }

    
    public Perfil(String correoElectronico) {
        this.correoElectronico = correoElectronico;
    }

    public int getIdPerfil() {
        return idPerfil;
    }

    public void setIdPerfil(int idPerfil) {
        this.idPerfil = idPerfil;
    }

    public String getFoto() {
        return foto;
    }

    public void setFoto(String foto) {
        this.foto = foto;
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

    public String getGenero() {
        return genero;
    }

    public void setGenero(String genero) {
        this.genero = genero;
    }

    public String getFechaNacimiento() {
        return fechaNacimiento;
    }

    public void setFechaNacimiento(String fechaNacimiento) {
        this.fechaNacimiento = fechaNacimiento;
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

    public String getEstadoCivil() {
        return estadoCivil;
    }

    public void setEstadoCivil(String estadoCivil) {
        this.estadoCivil = estadoCivil;
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

    public int getIdMunicipio() {
        return idMunicipio;
    }

    public void setIdMunicipio(int idMunicipio) {
        this.idMunicipio = idMunicipio;
    }

    public int getIdUsuario() {
        return idUsuario;
    }

    public void setIdUsuario(int idUsuario) {
        this.idUsuario = idUsuario;
    }

    public int getIdHabilidad() {
        return idHabilidad;
    }

    public void setIdHabilidad(int idHabilidad) {
        this.idHabilidad = idHabilidad;
    }

    public int getIdIdioma() {
        return idIdioma;
    }

    public void setIdIdioma(int idIdioma) {
        this.idIdioma = idIdioma;
    }

    public int getIdProfesion() {
        return idProfesion;
    }

    public void setIdProfesion(int idProfesion) {
        this.idProfesion = idProfesion;
    }

    public int getIdTrabajo() {
        return idTrabajo;
    }

    public void setIdTrabajo(int idTrabajo) {
        this.idTrabajo = idTrabajo;
    }

    public String getCorreoElectronico() {
        return correoElectronico;
    }

    public void setCorreoElectronico(String correoElectronico) {
        this.correoElectronico = correoElectronico;
    }
    
}

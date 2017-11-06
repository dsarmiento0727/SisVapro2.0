/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.conexion;

import java.sql.Connection;
import java.sql.DriverManager;

/**
 * Nombre de la Clase: Conexion
 * Fecha: 12 de Octubre de 2017
 * CopyRight:MundoEmpelo SA. De CV.
 * @author David Sarmiento
 */
public class Conexion {
    private Connection con;

    public Connection getCon() {
        return con;
    }

    public void setCon(Connection con) {
        this.con = con;
    }

    public void conectar() throws Exception{
        try {
           Class.forName("org.postgresql.Driver");
           con=DriverManager.getConnection(
                   "jdbc:postgresql://localhost:5432/mundoempleo3.0?user=postgres&password=Itca123!");
        } catch (Exception e) {
            throw e;
        }
    }
    public void desconectar() throws Exception{
        try {
            if (con!=null) {
                if (con.isClosed()==false) {
                    con.close();
                }
            }
        } catch (Exception e) {
            throw e;
        }
    }
}

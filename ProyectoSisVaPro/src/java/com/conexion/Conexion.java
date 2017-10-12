package com.conexion;
import java.sql.*;
/**
 *Nombre de la clase: Conexion
 * Version: 1.0
 * Fecha:01/10/2017
 * Copyright:Sisvapro
 * @author Karen Escobar
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
                   "jdbc:postgresql://localhost:5432/Sisvapro?user=postgres&password=karen22"); 
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

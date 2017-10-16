package com.controlador;

import com.modelo.*;
import java.io.IOException;
import javax.servlet.http.*;
import java.io.PrintWriter;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Nombre del Servlet:IniciarSesion Versión:1.0 Fecha:10/10/2017
 * Copyright:SISVAPRO
 *
 * @author Karen Escobar,David Sarmiento
 */
public class IniciarSesion extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, Exception {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();

        try {
            String val = null;
            if (request.getParameter("btnIngresar") != null) {
                String usuario = request.getParameter("txtusuario");
                String clave = request.getParameter("txtcontra");
                UsuarioIngreso obj = new UsuarioIngreso();
                int tipoUsuario = obj.autenticarUsuario(usuario, clave);
                if (tipoUsuario == 1) {
                    HttpSession objSesion = request.getSession(false);
                    HttpSession objSesionTipo = request.getSession(false);
                    objSesion.setAttribute("usuario", usuario);
                    objSesionTipo.setAttribute("tipo", "Administrador");
                    if (request.getParameter("ck") != null) {
                        Cookie valor_guardar = new Cookie("usuario", usuario);
                        valor_guardar.setMaxAge(60 * 60 * 24);
                        response.addCookie(valor_guardar);
                    }
                    request.getRequestDispatcher("index.jsp").forward(request, response);
                } else {
                    out.print(tipoUsuario);
                    out.print("Datos Invalidos");
                }
            }
        } catch (Exception e) {
            out.print("Error");
            out.print(e.toString());
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            processRequest(request, response);
        } catch (Exception ex) {
            Logger.getLogger(IniciarSesion.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            processRequest(request, response);
        } catch (Exception ex) {
            Logger.getLogger(IniciarSesion.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}

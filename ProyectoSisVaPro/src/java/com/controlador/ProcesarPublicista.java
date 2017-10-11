/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.controlador;

import com.modelo.CrudPublicista;
import com.modelo.Publicista;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Nombre del Servlet:ProcesarPublicista
 * Versión:1.0
 * Fecha:07/10/2017
 * Copyright:Sisvapro
 * @author Karen Escobar
 */
public class ProcesarPublicista extends HttpServlet {

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
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
       PrintWriter out = response.getWriter();
        CrudPublicista crud=new CrudPublicista();
        Publicista pu= new Publicista();
        String val=null;
        try {
            pu.setIdPublicista(Integer.parseInt(request.getParameter("txtIdPublicista")));
            pu.setNombresP(request.getParameter("txtNombres"));
            pu.setApellidosP(request.getParameter("txtApellidos"));
            pu.setCorreoEllectronicoP(request.getParameter("txtCorreo"));
            pu.setIdEmpresa(Integer.parseInt(request.getParameter("lstEmpresa")));
            if (request.getParameter("btnInsertar")!=null) {
                crud.insertarPublicista(pu);
                val="Datos insertados Correctamente";
            }else if (request.getParameter("btnModificar")!=null) {
                crud.modificarPublicista(pu);
            }else if (request.getParameter("btnEliminar")!=null) {
                crud.eliminarPublicista(pu);
            }
            response.sendRedirect("gestionarPublicista.jsp");
            request.setAttribute("valor", val);
        } catch (Exception e) {
            request.setAttribute("error", e.toString());
        }
        request.getRequestDispatcher("").forward(request, response);
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
        processRequest(request, response);
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
        processRequest(request, response);
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

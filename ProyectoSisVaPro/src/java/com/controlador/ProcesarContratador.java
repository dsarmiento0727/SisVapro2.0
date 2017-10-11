/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.controlador;

import com.modelo.Contratador;
import com.modelo.CrudContratador;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Nombre del Servlet:ProcesarContratador
 * Versión:1.0
 * Fecha:07/10/2017
 * Copyright:Sisvapro
 * @author Karen Escobar
 */
public class ProcesarContratador extends HttpServlet {

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
        String val=null;
        CrudContratador crud= new CrudContratador();
        Contratador co=new Contratador();
        try {
            co.setIdContratador(Integer.parseInt(request.getParameter("txtIdContratador")));
            co.setNombresC(request.getParameter("txtNombres"));
            co.setApellidosC(request.getParameter("txtApellidos"));
            co.setDescripcion(request.getParameter("txtDescripcion"));
            co.setCorreoElectronicoC(request.getParameter("txtCorreo"));
            co.setIdEmpresa(Integer.parseInt(request.getParameter("lstEmpresa")));
            if (request.getParameter("btnInsertar")!=null) {
                crud.insertarContratador(co);
                val="Datos insertados Correctamente";
            }else if (request.getParameter("btnModificar")!=null) {
                crud.modificarContratador(co);
            }else if (request.getParameter("btnEliminar")!=null) {
                crud.eliminarContratador(co);
            }
            response.sendRedirect("gestionarContratador.jsp");
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

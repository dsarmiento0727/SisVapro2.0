/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.controlador;

import com.modelo.Administrador;
import com.modelo.CrudAdministrador;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author carlos
 */
public class ProcesarAdministrador extends HttpServlet {

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
        CrudAdministrador crud=new CrudAdministrador();
        Administrador ad=new Administrador();
        try {
            ad.setIdDepartamento(Integer.parseInt(request.getParameter("txtIdAdministrador")));
            ad.setNombres(request.getParameter("txtNombres"));
            ad.setApellidos(request.getParameter("txtApellidos"));
            ad.setDui(request.getParameter("txtDui"));
            ad.setNit(request.getParameter("txtNit"));
            ad.setTelefono(request.getParameter("txtTelefono"));
            ad.setDireccion(request.getParameter("txtDireccion"));
            ad.setGenero(request.getParameter("genero"));
            ad.setCorreoElectronico(request.getParameter("txtCorreo"));
            ad.setIdPais(Integer.parseInt(request.getParameter("lstPais")));
            ad.setIdDepartamento(Integer.parseInt(request.getParameter("lstDepartamento")));
            ad.setIdUsuario(Integer.parseInt(request.getParameter("txtIdUsuario")));
            
            if (request.getParameter("btnInsertar")!=null) {
                crud.insertarAdministrador(ad);
                val="Datos insertados Correctamente";
            }else if (request.getParameter("btnModificar")!=null) {
                crud.modificarAdministrador(ad);
            }else if (request.getParameter("btnEliminar")!=null) {
                crud.eliminarAdministrador(ad);
            }
            
            request.setAttribute("valor", val);
            request.getRequestDispatcher("gestionarAdministrador.jsp").forward(request, response);
        } catch (Exception e) {
            out.print(e.toString());
            request.setAttribute("error", e.toString());
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

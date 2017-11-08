/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.controlador;

import com.modelo.CrudEmpleador;
import com.modelo.Empleador;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author David Sarmiento
 */
public class ProcesarPerfilEmpleador extends HttpServlet {

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
        String val=null;
        CrudEmpleador crud= new CrudEmpleador();
        Empleador per=new Empleador();
        try {    
            per.setIdEmpleador(Integer.parseInt(request.getParameter("txtIdPerfil")));
            per.setNombres(request.getParameter("txtNombres"));
            per.setApellidos(request.getParameter("txtApellidos"));
            per.setDireccion(request.getParameter("txtDireccion"));
            per.setTelefono(request.getParameter("txtTelefono"));
            per.setCorreoElectronico(request.getParameter("txtCorreoE"));
            per.setFechaNac(request.getParameter("txtFechaNac"));
            per.setGenero(request.getParameter("genero"));
            per.setAniosExperiencia(Integer.parseInt(request.getParameter("txtAnio")));
            per.setFotoPerfil(request.getParameter("foto"));
            per.setDui(request.getParameter("txtDui"));
            per.setNit(request.getParameter("txtNit"));
            per.setNacionalidad(request.getParameter("txtNacionalidad"));
            per.setIdUsuario(Integer.parseInt(request.getParameter("lstUsuario")));
            per.setIdPais(Integer.parseInt(request.getParameter("lstPais")));
            per.setIdDepartamento(Integer.parseInt(request.getParameter("lstDepartamento")));
            per.setIdAreaProfesional(Integer.parseInt(request.getParameter("lstArea")));
            
            
            if (request.getParameter("btnInsertar")!=null) {
                crud.insertarEmpleador(per);
                val="Datos insertados Correctamente";
            }else if (request.getParameter("btnModificar")!=null) {
                crud.modificarEmpleador(per);
            }else if (request.getParameter("btnEliminar")!=null) {
                crud.eliminarEmpleador(per);
            }
            request.setAttribute("valor", val);
            request.getRequestDispatcher("gestionarEmpleador.jsp").forward(request, response);
        } catch (Exception e) {
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

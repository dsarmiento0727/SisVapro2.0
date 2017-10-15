/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.controlador;


import com.modelo.CrudEmpresa;
import com.modelo.Empresa;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author informatica4
 */
public class ProcesarEmpresa extends HttpServlet {

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
        CrudEmpresa  crud=new CrudEmpresa  ();
        Empresa   d=new Empresa  ();
        try {
            d.setIdEmpresa(Integer.parseInt(request.getParameter("txtidEmpresa")));
            d.setNombreEmpresa(request.getParameter("txtnombre"));
            d.setRazonSocial(request.getParameter("txtrazon"));
            d.setNit(request.getParameter("nit"));
            d.setDireccion(request.getParameter("direccion"));
            d.setIdPais(Integer.parseInt(request.getParameter("txtpais")));
            d.setIdDepartamento(Integer.parseInt(request.getParameter("txtdepatamento")));
            d.setLogo(request.getParameter("logo"));
            d.setPaginaWeb(request.getParameter("pagina wb"));
            d.setIdUsuario(Integer.parseInt(request.getParameter("txtusuario")));
            d.setIdSectorEmpresiarial(Integer.parseInt(request.getParameter("txtidsector")));

            
            if (request.getParameter("btnInsertar")!=null) {
                crud.insertarEmpresa(d);
                val="Datos insertados Correctamente";
            }else if (request.getParameter("btnModificar")!=null) {
                crud.modificarEmpresa(d);
            }else if (request.getParameter("btnEliminar")!=null) {
                crud.eliminarEmpresa(d);
            }
            
            request.setAttribute("valor", val);
            request.getRequestDispatcher("gestionarEmpresa.jsp").forward(request, response);
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

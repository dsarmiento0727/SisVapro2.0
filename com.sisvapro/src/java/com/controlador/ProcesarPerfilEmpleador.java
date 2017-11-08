/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.controlador;

import com.modelo.CrudEmpleador;
import com.modelo.CrudExperienciaLaboral;
import com.modelo.CrudFormacionAcademica;
import com.modelo.CrudHabilidad;
import com.modelo.Empleador;
import com.modelo.ExperienciaLaboral;
import com.modelo.FormacionAcademica;
import com.modelo.Habilidad;
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
        String val = null;
        CrudEmpleador crudE = new CrudEmpleador();
        Empleador per = new Empleador();
        CrudFormacionAcademica crudFA = new CrudFormacionAcademica();
        FormacionAcademica aca = new FormacionAcademica();
        CrudExperienciaLaboral crud = new CrudExperienciaLaboral();
        ExperienciaLaboral ex = new ExperienciaLaboral();
        CrudHabilidad crudH = new CrudHabilidad();
        Habilidad h = new Habilidad();
        PrintWriter out = response.getWriter();
        try {

            if (request.getParameter("btnModificarPerfil") != null) {
                per.setIdEmpleador(Integer.parseInt(request.getParameter("txtIdPerfil")));
                per.setNombres(request.getParameter("txtNombres"));
                per.setApellidos(request.getParameter("txtApellidos"));
                per.setDireccion(request.getParameter("txtDireccion"));
                per.setTelefono(request.getParameter("txtTelefono"));
                per.setCorreoElectronico(request.getParameter("txtCorreoE"));
                per.setFechaNac(request.getParameter("txtFechaNac"));
                per.setGenero(request.getParameter("genero"));
                per.setAniosExperiencia(Integer.parseInt(request.getParameter("txtAnio")));
                if (request.getParameter("foto").isEmpty()) {
                    per.setFotoPerfil(request.getParameter("foto2"));
                } else {
                    per.setFotoPerfil(request.getParameter("foto"));
                }
                per.setDui(request.getParameter("txtDui"));
                per.setNit(request.getParameter("txtNit"));
                per.setNacionalidad(request.getParameter("txtNacionalidad"));
                per.setIdUsuario(Integer.parseInt(request.getParameter("lstUsuario")));
                per.setIdPais(Integer.parseInt(request.getParameter("lstPais")));
                per.setIdDepartamento(Integer.parseInt(request.getParameter("lstDepartamento")));
                per.setIdAreaProfesional(Integer.parseInt(request.getParameter("lstArea")));
                crudE.modificarEmpleador(per);
            }

            if (request.getParameter("btnAgregarFa") != null) {
                aca.setIdFormacion(Integer.parseInt(request.getParameter("txtIdFormacionAcademica")));
                aca.setNivelEstudio(request.getParameter("lstNivel"));
                aca.setEstado(request.getParameter("lstEstado"));
                aca.setCarrera(request.getParameter("txtCarrera"));
                aca.setIdEmpleador(Integer.parseInt(request.getParameter("txtIdEmpleador")));
                crudFA.insertarFormacionAcademica(aca);
                val = "Datos insertados Correctamente";
            } else if (request.getParameter("btnModificarFa") != null) {

                aca.setIdFormacion(Integer.parseInt(request.getParameter("txtIdFormacionAcademica")));
                aca.setNivelEstudio(request.getParameter("lstNivel"));
                aca.setEstado(request.getParameter("lstEstado"));
                aca.setCarrera(request.getParameter("txtCarrera"));
                aca.setIdEmpleador(Integer.parseInt(request.getParameter("txtIdEmpleador")));

                crudFA.modificarFormacionAcademica(aca);
            } else if (request.getParameter("btnEliminarFa") != null) {
                aca.setIdFormacion(Integer.parseInt(request.getParameter("txtIdFormacionAcademica")));
                crudFA.eliminarFormacionAcademica(aca);
            }

            if (request.getParameter("btnAgregarEl") != null) {
                ex.setIdExperienciaLaboral(Integer.parseInt(request.getParameter("txtIdExperienciaLaboral")));
                ex.setNombreEmpresa(request.getParameter("txtNombreEmpresa"));
                ex.setNombreJefe(request.getParameter("txtJefe"));
                ex.setTelefonoJefe(request.getParameter("txtTelefono"));
                ex.setPuesto(request.getParameter("txtPuesto"));
                ex.setDesde(request.getParameter("txtDesde"));
                ex.setHasta(request.getParameter("txtHasta"));
                ex.setTipoContrato(request.getParameter("lstTipoContrato"));
                ex.setIdEmpleador(Integer.parseInt(request.getParameter("txtIdEmpleador")));
                crud.insertarExperienciaLaboral(ex);
                val = "Datos insertados Correctamente";
            } else if (request.getParameter("btnModificarEl") != null) {
                ex.setIdExperienciaLaboral(Integer.parseInt(request.getParameter("txtIdExperienciaLaboral")));
                ex.setNombreEmpresa(request.getParameter("txtNombreEmpresa"));
                ex.setNombreJefe(request.getParameter("txtJefe"));
                ex.setTelefonoJefe(request.getParameter("txtTelefono"));
                ex.setPuesto(request.getParameter("txtPuesto"));
                ex.setDesde(request.getParameter("txtDesde"));
                ex.setHasta(request.getParameter("txtHasta"));
                ex.setTipoContrato(request.getParameter("lstTipoContrato"));
                ex.setIdEmpleador(Integer.parseInt(request.getParameter("txtIdEmpleador")));
                crud.modificarExperienciaLaboral(ex);
            } else if (request.getParameter("btnEliminarEl") != null) {
                ex.setIdExperienciaLaboral(Integer.parseInt(request.getParameter("txtIdExperienciaLaboral")));
                ex.setNombreEmpresa(request.getParameter("txtNombreEmpresa"));
                ex.setNombreJefe(request.getParameter("txtJefe"));
                ex.setTelefonoJefe(request.getParameter("txtTelefono"));
                ex.setPuesto(request.getParameter("txtPuesto"));
                ex.setDesde(request.getParameter("txtDesde"));
                ex.setHasta(request.getParameter("txtHasta"));
                ex.setTipoContrato(request.getParameter("lstTipoContrato"));
                ex.setIdEmpleador(Integer.parseInt(request.getParameter("txtIdEmpleador")));
                crud.eliminarExperienciaLaboral(ex);
            }

            if (request.getParameter("btnAgregarH") != null) {
                h.setIdHabilidad(Integer.parseInt(request.getParameter("txtIdHabilidad")));
                h.setNombreHabilidad(request.getParameter("txtNombre"));
                h.setIdEmpleador(Integer.parseInt(request.getParameter("txtIdEmpleador")));
                
                out.print(h.getIdHabilidad());
                out.print(h.getNombreHabilidad());
                out.print(h.getIdEmpleador());
                crudH.insertarHabilidad(h);
                val = "Datos insertados Correctamente";
            } else if (request.getParameter("btnModificarH") != null) {
                h.setIdHabilidad(Integer.parseInt(request.getParameter("txtIdHabilidad")));
                h.setNombreHabilidad(request.getParameter("txtNombre"));
                h.setIdEmpleador(Integer.parseInt(request.getParameter("txtIdEmpleador")));
                val = "Datos modificados Correctamente";
                crudH.modificarHabilidad(h);
            } else if (request.getParameter("btnEliminarH") != null) {
                h.setIdHabilidad(Integer.parseInt(request.getParameter("txtIdHabilidad")));
                crudH.eliminarHabilidad(h);
                val = "Datos Eliminados Correctamente";
            }

            request.setAttribute("valor", val);
            request.getRequestDispatcher("gestionarPerfilEmpleador.jsp").forward(request, response);
        } catch (Exception e) {
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

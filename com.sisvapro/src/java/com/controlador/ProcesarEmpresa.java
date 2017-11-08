/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.controlador;

import com.modelo.CrudEmpresa;
import com.modelo.Empresa;
import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileItemFactory;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

/**
 *
 * @author carlos
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
        String val = null;
        String nombreE = "", fotoperfil = "", razonSocial = "", nit = "", direE = "", pagina = "";
        String pais = "";
        String departamento = "";
        String sectorE = "";
        String idEmpresa = "";
        String idUsu = "", logo2 = "";
        String insertar = "", modificar = "", eliminar = "";
        Empresa em = new Empresa();
        CrudEmpresa crud = new CrudEmpresa();

        try {
            FileItemFactory Interfaz = new DiskFileItemFactory();
            ServletFileUpload servlet_up = new ServletFileUpload(Interfaz);
            List objetos = servlet_up.parseRequest(request);
            //C:\\Users\\carlos\\Documents\\NetBeansProjects\\SisVapro2.0\\com.sisvapro\\web\\imagenes\\fotosperfiles\\"
            //C:\\Users\\David Sarmiento\\Documents\\NetBeansProjects\\SisVapro2.0\\com.sisvapro\\web\\imagenes\\fotosperfiles\\"
            //C:\\Users\\Karen\\Documents\\NetBeansProjects\\SisVapro2.0\\com.sisvapro\\web\\imagenes\\fotosperfiles\\;
            String ruta = "C:\\Users\\Gerardo\\Dropbox\\Proyecto\\SisVapro2.0\\com.sisvapro\\web\\imagenes\\fotosperfiles\\";
                    

            for (int i = 0; i < objetos.size(); i++) {
                FileItem item = (FileItem) objetos.get(i);
                if (item.getFieldName().equals("txtNombre")) {
                    nombreE = item.getString();
                }
                if (item.getFieldName().equals("txtRazon")) {
                    razonSocial = item.getString();
                }
                if (item.getFieldName().equals("txtNit")) {
                    nit = item.getString();
                }
                if (item.getFieldName().equals("txtDireccion")) {
                    direE = item.getString();
                }
                if (item.getFieldName().equals("lstPais")) {
                    pais = item.getString();
                }

                if (item.getFieldName().equals("lstDepartamento")) {
                    departamento = item.getString();
                }
                if (item.getFieldName().equals("lstSector")) {
                    sectorE = item.getString();
                }
                if (item.getFieldName().equals("txtIdUsuario")) {
                    idUsu = item.getString();
                }
                if (item.getFieldName().equals("txtIdEmpresa")) {
                    idEmpresa = item.getString();
                }
                if (item.getFieldName().equals("txtPagina")) {
                    pagina = item.getString();
                }

                if (item.getFieldName().equals("logo")) {
                    if (!item.isFormField()) {

                        if (item.getName().isEmpty()) {
                            File archivo = new File(ruta + item.getName());
                            //item.write(archivo);
                            fotoperfil = item.getName();
                            out.print(fotoperfil);
                        } else {
                            if (item.getName() != null) {
                                File archivo = new File(ruta + item.getName());
                                out.print(item.getName());
                                item.write(archivo);
                                fotoperfil = item.getName();
                            }

                        }

                    }
                }

                if (item.getFieldName().equals("logo2")) {
                    logo2 = item.getString();
                }

                if (item.getFieldName().equals("btnInsertar")) {
                    insertar = item.getString();
                }
                if (item.getFieldName().equals("btnModificar")) {
                    modificar = item.getString();
                }
                if (item.getFieldName().equals("btnEliminar")) {
                    eliminar = item.getString();
                }
            }

            if (insertar.equals("Insertar")) {
                if (!fotoperfil.isEmpty()) {
                    em.setIdEmpresa(Integer.parseInt(idEmpresa));
                    em.setNombreEmpresa(nombreE);
                    em.setRazonSocial(razonSocial);
                    em.setNit(nit);
                    em.setDireccion(direE);
                    em.setIdPais(Integer.parseInt(pais));
                    em.setIdDepartamento(Integer.parseInt(departamento));
                    em.setLogo(fotoperfil);
                    em.setPaginaWeb(pagina);
                    em.setIdSectorEmpresiarial(Integer.parseInt(sectorE));
                    em.setIdUsuario(Integer.parseInt(idUsu));

                    crud.insertarEmpresa(em);
                }
            } else if (modificar.equals("Modificar")) {

                em.setIdEmpresa(Integer.parseInt(idEmpresa));
                em.setNombreEmpresa(nombreE);
                em.setRazonSocial(razonSocial);
                em.setNit(nit);
                em.setDireccion(direE);
                em.setIdPais(Integer.parseInt(pais));
                em.setIdDepartamento(Integer.parseInt(departamento));
                if (fotoperfil.isEmpty()) {
                    em.setLogo(logo2);
                } else {
                    em.setLogo(fotoperfil);
                }

                em.setPaginaWeb(pagina);
                em.setIdSectorEmpresiarial(Integer.parseInt(sectorE));
                em.setIdUsuario(Integer.parseInt(idUsu));

                crud.modificarEmpresa(em);
            } else if (eliminar.equals("Eliminar")) {
                em.setIdEmpresa(Integer.parseInt(idEmpresa));
                crud.eliminarEmpresa(em);
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

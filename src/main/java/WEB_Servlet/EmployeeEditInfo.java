/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package WEB_Servlet;

import Entities.Employee;
import ServiceLayer.EmployeeManager;
import com.google.gson.Gson;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Sam
 */
public class EmployeeEditInfo extends HttpServlet {

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
        try (PrintWriter out = response.getWriter()) {
          System.out.println(request.getParameter("EmployeeName"));
            System.out.println(request.getParameter("EmployeeFamilyName"));
            System.out.println(request.getParameter("EmployeeUserName"));
            System.out.println(request.getParameter("EmployeePassword"));
            System.out.println(request.getParameter("EmployeeSkill"));
            System.out.println(request.getParameter("EmployeeResume"));
            String EmployeeName = request.getParameter("EmployeeName");
            String EmployeeFamilyName = request.getParameter("EmployeeFamilyName");
            String EmployeeUserName = request.getParameter("EmployeeUserName");
            String EmployeePassword =request.getParameter("EmployeePassword");
            String EmployeeSkill = request.getParameter("EmployeeSkill");
            String EmployeeResume = request.getParameter("EmployeeResume");

            ServletContext sc = request.getServletContext();
            EmployeeManager em = new EmployeeManager(sc);
            Employee userEmployee = new Employee(EmployeeUserName,EmployeeName,EmployeeFamilyName,"Email",EmployeePassword);
            userEmployee.setField(EmployeeSkill);
            userEmployee.setResume(EmployeeResume);
            String json = new Gson().toJson(new Pri());
            response.setContentType("application/json");
            response.setCharacterEncoding("UTF-8");
            response.getWriter().write(json);
            boolean result = em.Register(userEmployee);
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
    public class Pri
    {
        String returnValue= "Hellooooo!";
    }
}

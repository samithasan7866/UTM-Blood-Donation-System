package Controllers;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import DAO.DAOImplementation;
import DAO.DAOInterface;
import Models.BloodBank;
import Models.Donor;
import Models.HospitalAccount;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.sql.PreparedStatement;

/**
 *
 * @author Hamzeh Bajbouj
 */
@WebServlet(urlPatterns = {"/SignUpNewUsers"})
public class SignUpNewUsers extends HttpServlet {

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

        String userType = request.getParameter("userType");
        DAOInterface dao = new DAOImplementation();

        if (userType.equals("hospital")) {

            HospitalAccount hospitalAccount = new HospitalAccount(request.getParameter("name"),
                    request.getParameter("phonenumber"),
                    request.getParameter("email"),
                    request.getParameter("address"));
            hospitalAccount.setPassword(request.getParameter("password"));

            dao.signUpNewHospital(hospitalAccount);

        } else if (userType.equals("bloodbank")) {

            BloodBank bloodBank = new BloodBank(request.getParameter("name"),
                    request.getParameter("bloodGroup"),
                    request.getParameter("email"),
                    request.getParameter("address"));
            bloodBank.setPassword(request.getParameter("password"));

            dao.signUpNewBloodBank(bloodBank);
        } else {
            Donor donor = new Donor(request.getParameter("name"),
                    request.getParameter("phonenumber"),
                    request.getParameter("email"),
                    request.getParameter("gender"),
                    Integer.parseInt(request.getParameter("age")),
                    request.getParameter("bloodGroup"),
                    request.getParameter("address"));
            donor.setPassword(request.getParameter("password"));
       
            dao.signUpNewDononr(donor);

        }

        String url = "/index.jsp";
        getServletContext().getRequestDispatcher(url).forward(request, response);

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

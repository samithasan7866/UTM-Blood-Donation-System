/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controllers;

import DAO.DAOImplementation;
import DAO.DAOInterface;
import Models.BloodBank;
import Models.Donor;
import Models.HospitalAccount;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Hamzeh Bajbouj
 */
@WebServlet(name = "AdminEditPageController", urlPatterns = {"/AdminEditPageController"})
public class AdminEditPageController extends HttpServlet {

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
        String toCheckRecordbyEmail = request.getParameter("toCheckRecordbyEmail");
        boolean recordIsAviableAndHasBeenUpdated = false;

        DAOInterface dao = new DAOImplementation();
        HttpSession session = request.getSession();
        
        
        if (userType.equals("hospital")) {

            HospitalAccount hospitalAccount = new HospitalAccount(request.getParameter("newName"),
                    request.getParameter("phonenumber"),
                    request.getParameter("email"),
                    request.getParameter("address"));
            hospitalAccount.setPassword(request.getParameter("password"));
            recordIsAviableAndHasBeenUpdated = dao.updateHospitalAccountRecord(hospitalAccount, toCheckRecordbyEmail);

        } else if (userType.equals("bloodBank")) {

            BloodBank bloodBank = new BloodBank(request.getParameter("newName"),
                    request.getParameter("bloodGroup"),
                    request.getParameter("email"),
                    request.getParameter("address"));
            bloodBank.setPassword(request.getParameter("password"));
            recordIsAviableAndHasBeenUpdated = dao.updateBloodBankRecord(bloodBank, toCheckRecordbyEmail);
        } else {
            Donor donor = new Donor(request.getParameter("newName"),
                    request.getParameter("phonenumber"),
                    request.getParameter("email"),
                    request.getParameter("gender"),
                    Integer.parseInt(request.getParameter("age")),
                    request.getParameter("bloodGroup"),
                    request.getParameter("address"));
            donor.setPassword(request.getParameter("password"));

            recordIsAviableAndHasBeenUpdated = dao.updateDonorRecord(donor, toCheckRecordbyEmail);
        }

        if (recordIsAviableAndHasBeenUpdated) {
          session.setAttribute("RecordMessage", "record has been updated");
        }else{
         session.setAttribute("RecordMessage", "there is no matching records for the inserted email ");
        }
        
        String url = "/Views/AdminEditPage.jsp";
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

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import DBUtility.DBconnection;
import Models.AdminUser;
import Models.BloodBank;
import Models.Donor;
import Models.HospitalAccount;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

/**
 *
 * @author Hamzeh Bajbouj
 */
public class DAOImplementation implements DAOInterface {

    Connection conn;
    ResultSet result;
    PreparedStatement preSt;

    @Override
    public void signUpNewDononr(Donor donor) {
        try {
            String insertionQuery
                    = "INSERT INTO Donor "
                    + "(DonorName, Gender, Email,DonorPhoneNumber,Age,BloodGroup,DonorAddress,Password) "
                    + "VALUES "
                    + "(?, ?, ?,?,?,?,?,?)";

            conn = DBconnection.openConnection();
            preSt = conn.prepareStatement(insertionQuery);

            preSt.setString(1, donor.getDonorName());
            preSt.setString(2, donor.getGender());
            preSt.setString(3, donor.getEamil());
            preSt.setString(4, donor.getDonorPhoneNumber());
            preSt.setInt(5, donor.getAge());
            preSt.setString(6, donor.getBloodGroup());
            preSt.setString(7, donor.getDonorAddress());
            preSt.setString(8, donor.getPassword());

            preSt.executeUpdate();
        } catch (Exception ex) {
        }

    }

    @Override
    public void signUpNewBloodBank(BloodBank bloodBank) {
        try {
            String insertionQuery
                    = "INSERT INTO BloodBank "
                    + "(BloodBankName, BloodGroup, Email,BloodBankAddress,Password) "
                    + "VALUES "
                    + "(?, ?, ?,?,?)";

            conn = DBconnection.openConnection();
            preSt = conn.prepareStatement(insertionQuery);
            preSt.setString(1, bloodBank.getBloodBankName());
            preSt.setString(2, bloodBank.getBloodGroup());
            preSt.setString(3, bloodBank.getEamil());
            preSt.setString(4, bloodBank.getBloodBankAddress());
            preSt.setString(5, bloodBank.getPassword());
            preSt.executeUpdate();

        } catch (Exception ex) {
        }

    }

    @Override
    public void signUpNewHospital(HospitalAccount hospital) {
        try {
            String insertionQuery
                    = "INSERT INTO hospital "
                    + "(HospitalName, HospitalMobileNo, Email,HospitalAddress,Password)"
                    + "VALUES "
                    + "(?, ?, ?,?,?)";

            conn = DBconnection.openConnection();
            preSt = conn.prepareStatement(insertionQuery);
            preSt.setString(1, hospital.getHospitalName());
            preSt.setString(2, hospital.getHospitalMobileNo());
            preSt.setString(3, hospital.getEamil());
            preSt.setString(4, hospital.getHospitalAddress());
            preSt.setString(5, hospital.getPassword());
            preSt.executeUpdate();

        } catch (Exception ex) {
        }
    }

    @Override
    public ArrayList<Donor> getDonorsBasedOnBloodGroup(String bloodGroup) {

        ArrayList<Donor> donorsList = new ArrayList<Donor>();
        try {
            String query = "SELECT * FROM donor WHERE BloodGroup = ?";
            conn = DBconnection.openConnection();
            preSt = conn.prepareStatement(query);
            preSt.setString(1, bloodGroup);
            result = preSt.executeQuery();

            while (result.next()) {

                Donor donor = new Donor(result.getString("DonorName"),
                        result.getString("DonorPhoneNumber"),
                        result.getString("Email"),
                        result.getString("Gender"),
                        result.getInt("Age"),
                        result.getString("BloodGroup"),
                        result.getString("DonorAddress"));
                donor.setPassword(result.getString("Password"));

                donorsList.add(donor);

            }
        } catch (Exception ex) {
        }

        return donorsList;
    }

    @Override
    public Donor getDonor(String email, String password) {
        Donor donor = null;
        try {
            String query = "SELECT * FROM donor  WHERE Email = ? AND Password= ? ";
            conn = DBconnection.openConnection();
            preSt = conn.prepareStatement(query);
            preSt.setString(1, email);
            preSt.setString(2, password);
            result = preSt.executeQuery();
            result.next();
            if (result.getInt(1) != 0) {
                donor = new Donor(result.getString("DonorName"),
                        result.getString("DonorPhoneNumber"),
                        result.getString("Email"),
                        result.getString("Gender"),
                        Integer.parseInt(result.getString("Age")),
                        result.getString("BloodGroup"),
                        result.getString("DonorAddress")
                );
                donor.setPassword(result.getString("Password"));
            }

        } catch (Exception ex) {
        }

        return donor;
    }

    @Override
    public HospitalAccount getHospitalAccount(String email, String password) {
        HospitalAccount hospitalAccount = null;
        try {
            String query = "SELECT * FROM hospital  WHERE Email = ? AND Password= ? ";
            conn = DBconnection.openConnection();
            preSt = conn.prepareStatement(query);
            preSt.setString(1, email);
            preSt.setString(2, password);
            result = preSt.executeQuery();
            result.next();
            if (result.getInt(1) != 0) {
                hospitalAccount = new HospitalAccount(result.getString("HospitalName"),
                        result.getString("HospitalMobileNo"),
                        result.getString("Email"),
                        result.getString("HospitalAddress")
                );
                hospitalAccount.setPassword(result.getString("Password"));
            }

        } catch (Exception ex) {
        }

        return hospitalAccount;
    }

    @Override
    public BloodBank getBloodBank(String email, String password) {
        BloodBank bloodBank = null;
        try {
            String query = "SELECT * FROM BloodBank  WHERE Email = ? AND Password= ? ";
            conn = DBconnection.openConnection();
            preSt = conn.prepareStatement(query);
            preSt.setString(1, email);
            preSt.setString(2, password);
            result = preSt.executeQuery();
            result.next();
            if (result.getInt(1) != 0) {
                bloodBank = new BloodBank(result.getString("BloodBankName"),
                        result.getString("BloodGroup"),
                        result.getString("Email"),
                        result.getString("BloodBankAddress")
                );
                bloodBank.setPassword(result.getString("Password"));
            }

        } catch (Exception ex) {
        }

        return bloodBank;
    }

    @Override
    public ArrayList<HospitalAccount> getAllHospital() {
        ArrayList<HospitalAccount> hospitalsList = new ArrayList<HospitalAccount>();

        try {
            String query = "SELECT * FROM hospital ";
            conn = DBconnection.openConnection();
            preSt = conn.prepareStatement(query);
            result = preSt.executeQuery();

            while (result.next()) {
                HospitalAccount hospitalAccount = new HospitalAccount(result.getString("HospitalName"),
                        result.getString("HospitalMobileNo"),
                        result.getString("Email"),
                        result.getString("HospitalAddress")
                );
                hospitalAccount.setPassword(result.getString("Password"));

                hospitalsList.add(hospitalAccount);
            }

        } catch (Exception ex) {
        }

        return hospitalsList;
    }

    @Override
    public ArrayList<BloodBank> getAllBloodBanks() {
        ArrayList<BloodBank> bloodBankssList = new ArrayList<BloodBank>();

        try {
            String query = "SELECT * FROM bloodbank ";
            conn = DBconnection.openConnection();
            preSt = conn.prepareStatement(query);
            result = preSt.executeQuery();

            while (result.next()) {
                BloodBank bloodBank = new BloodBank(result.getString("BloodBankName"),
                        result.getString("BloodGroup"),
                        result.getString("Email"),
                        result.getString("BloodBankAddress")
                );
                bloodBank.setPassword(result.getString("Password"));

                bloodBankssList.add(bloodBank);
            }

        } catch (Exception ex) {
        }

        return bloodBankssList;
    }

    @Override
    public AdminUser getAdminUser(String email, String password) {
        AdminUser adminUser = null;
        try {
            String query = "SELECT * FROM adminuser  WHERE Email = ? AND Password= ? ";
            conn = DBconnection.openConnection();
            preSt = conn.prepareStatement(query);
            preSt.setString(1, email);
            preSt.setString(2, password);
            result = preSt.executeQuery();
            result.next();
            if (result.getInt(1) != 0) {
                adminUser = new AdminUser(result.getString("Email"),
                        result.getString("Password"));
            }

        } catch (Exception ex) {
        }

        return adminUser;
    }

    @Override
    public ArrayList<Donor> getAllDonors() {
        ArrayList<Donor> donorsList = new ArrayList<Donor>();
        try {
            String query = "SELECT * FROM donor ";
            conn = DBconnection.openConnection();
            preSt = conn.prepareStatement(query);
            result = preSt.executeQuery();

            while (result.next()) {
                Donor donor = new Donor(result.getString("DonorName"),
                        result.getString("DonorPhoneNumber"),
                        result.getString("Email"),
                        result.getString("Gender"),
                        Integer.parseInt(result.getString("Age")),
                        result.getString("BloodGroup"),
                        result.getString("DonorAddress")
                );
                donor.setPassword(result.getString("Password"));
                 donorsList.add(donor);
            }

        } catch (Exception ex) {
        }

        return donorsList;
    }

    @Override
    public boolean updateDonorRecord(Donor donor, String exsitedRecord) {
        boolean checkIfThereIsMatchingRecord = false;

        try {
            String query = "SELECT * FROM donor WHERE Email = ? ";
            conn = DBconnection.openConnection();
            preSt = conn.prepareStatement(query);
            preSt.setString(1, exsitedRecord);
            result = preSt.executeQuery();
            result.next();
            if (result.getInt(1) != 0) {
                checkIfThereIsMatchingRecord = true;
                query = "UPDATE donor SET "
                        + " DonorName = ?, "
                        + " Gender = ?, "
                        + " email = ?,"
                        + " DonorPhoneNumber = ?,"
                        + " Age = ?,"
                        + " BloodGroup = ?,"
                        + " DonorAddress = ?,"
                        + " Password = ?"
                        + "WHERE Donor_Id = ?";
                preSt = conn.prepareStatement(query);
                preSt.setString(1, donor.getDonorName());
                preSt.setString(2, donor.getGender());
                preSt.setString(3, donor.getEamil());
                preSt.setString(4, donor.getDonorPhoneNumber());
                preSt.setInt(5, donor.getAge());
                preSt.setString(6, donor.getBloodGroup());
                preSt.setString(7, donor.getDonorAddress());
                preSt.setString(8, donor.getPassword());
                preSt.setString(9, result.getString("Donor_Id"));
                preSt.executeUpdate();
            }
        } catch (Exception ex) {
        }

        return checkIfThereIsMatchingRecord;
    }

    @Override
    public boolean updateBloodBankRecord(BloodBank bloodBank, String exsitedRecord) {
        boolean checkIfThereIsMatchingRecord = false;

        try {
            String query = "SELECT * FROM bloodbank WHERE Email = ? ";
            conn = DBconnection.openConnection();
            preSt = conn.prepareStatement(query);
            preSt.setString(1, exsitedRecord);
            result = preSt.executeQuery();
            result.next();
            if (result.getInt(1) != 0) {
                checkIfThereIsMatchingRecord = true;
                query = "UPDATE bloodbank SET "
                        + " BloodBankName = ?, "
                        + " BloodGroup = ?, "
                        + " email = ?,"
                        + " BloodBankAddress = ?,"
                        + " Password = ?"
                        + "WHERE BloodBank_Id = ?";
                preSt = conn.prepareStatement(query);
                preSt.setString(1, bloodBank.getBloodBankName());
                preSt.setString(2, bloodBank.getBloodGroup());
                preSt.setString(3, bloodBank.getEamil());
                preSt.setString(4, bloodBank.getBloodBankAddress());
                preSt.setString(5, bloodBank.getPassword());
                preSt.setString(6, result.getString("BloodBank_Id"));
                preSt.executeUpdate();
            }
        } catch (Exception ex) {
        }

        return checkIfThereIsMatchingRecord;
    }

    @Override
    public boolean updateHospitalAccountRecord(HospitalAccount hospital, String exsitedRecord) {
        boolean checkIfThereIsMatchingRecord = false;

        try {
            String query = "SELECT * FROM hospital  WHERE Email = ? ";
            conn = DBconnection.openConnection();
            preSt = conn.prepareStatement(query);
            preSt.setString(1, exsitedRecord);
            result = preSt.executeQuery();
            result.next();
            if (result.getInt(1) != 0) {
                checkIfThereIsMatchingRecord = true;
                query = "UPDATE hospital SET "
                        + " HospitalName = ?, "
                        + " HospitalMobileNo = ?, "
                        + " email = ?,"
                        + " HospitalAddress = ?,"
                        + " Password = ?"
                        + "WHERE Hospital_Id = ?";
                preSt = conn.prepareStatement(query);

                preSt.setString(1, hospital.getHospitalName());
                preSt.setString(2, hospital.getHospitalMobileNo());
                preSt.setString(3, hospital.getEamil());
                preSt.setString(4, hospital.getHospitalAddress());
                preSt.setString(5, hospital.getPassword());
                preSt.setString(6, result.getString("Hospital_Id"));
                preSt.executeUpdate();
            }
        } catch (Exception ex) {
        }

        return checkIfThereIsMatchingRecord;
    }

    @Override
    public boolean deleteRecordFromTheDatabase(String recordType, String recordIdnitification) {
        boolean checkIfThereIsMatchingRecord = false;
        String queryToCheck;
        String queryToDelete;

        switch (recordType) {
            case "hospital":
                queryToCheck = "SELECT * FROM hospital  WHERE Email = ? ";
                queryToDelete = "DELETE FROM hospital  WHERE Email = ? ";
                break;
            case "bloodbank":
                queryToCheck = "SELECT * FROM bloodbank  WHERE Email = ? ";
                queryToDelete = "DELETE FROM bloodbank  WHERE Email = ? ";

                break;

            default:
                queryToCheck = "SELECT * FROM donor  WHERE Email = ? ";
                queryToDelete = "DELETE FROM donor  WHERE Email = ? ";
        }
        try {

            conn = DBconnection.openConnection();
            preSt = conn.prepareStatement(queryToCheck);
            preSt.setString(1, recordIdnitification);
            result = preSt.executeQuery();
            result.next();
            if (result.getInt(1) != 0) {
                checkIfThereIsMatchingRecord = true;
                preSt = conn.prepareStatement(queryToDelete);
                preSt.setString(1, recordIdnitification);

                preSt.executeUpdate();
            }
        } catch (Exception ex) {
        }

        return checkIfThereIsMatchingRecord;
    }

}

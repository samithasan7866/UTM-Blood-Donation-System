/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import Models.AdminUser;
import Models.BloodBank;
import Models.Donor;
import Models.HospitalAccount;
import java.util.ArrayList;

/**
 *
 * @author Hamzeh Bajbouj
 */
public interface DAOInterface {

    public void signUpNewDononr(Donor donor);

    public void signUpNewBloodBank(BloodBank bloodBank);

    public void signUpNewHospital(HospitalAccount hospital);

    public ArrayList<Donor> getDonorsBasedOnBloodGroup(String bloodGroup);

    public Donor getDonor(String email, String password);

    public HospitalAccount getHospitalAccount(String email, String password);

    public BloodBank getBloodBank(String email, String password);

    public AdminUser getAdminUser(String email, String password);

    public ArrayList<HospitalAccount> getAllHospital();

    public ArrayList<BloodBank> getAllBloodBanks();

    public ArrayList<Donor> getAllDonors();

    public boolean updateDonorRecord(Donor donor, String exsitedRecord);

    public boolean updateBloodBankRecord(BloodBank bloodBank, String exsitedRecord);

    public boolean updateHospitalAccountRecord(HospitalAccount hospital, String exsitedRecord);
    
    public boolean deleteRecordFromTheDatabase (String recordType, String recordIdnitification);

}

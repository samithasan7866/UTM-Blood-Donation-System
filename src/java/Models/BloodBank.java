package Models;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author Hamzeh Bajbouj
 */
public class BloodBank {

    public void setBloodBankName(String bloodBankName) {
        this.bloodBankName = bloodBankName;
    }

    public void setBloodGroup(String bloodGroup) {
        this.bloodGroup = bloodGroup;
    }

    public void setEamil(String eamil) {
        this.eamil = eamil;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public void setBloodBankAddress(String bloodBankAddress) {
        this.bloodBankAddress = bloodBankAddress;
    }

    public String getBloodBankName() {
        return bloodBankName;
    }

    public String getBloodGroup() {
        return bloodGroup;
    }

    public String getEamil() {
        return eamil;
    }

    public String getPassword() {
        return password;
    }

    public String getBloodBankAddress() {
        return bloodBankAddress;
    }

    public BloodBank(String bloodBankName, String bloodGroup, String eamil, String bloodBankAddress) {
        this.bloodBankName = bloodBankName;
        this.bloodGroup = bloodGroup;
        this.eamil = eamil;
        this.bloodBankAddress = bloodBankAddress;
    }
    private String bloodBankName;
    private String bloodGroup;
    private String eamil;
    private String password ="N/A";
    private String bloodBankAddress;

}

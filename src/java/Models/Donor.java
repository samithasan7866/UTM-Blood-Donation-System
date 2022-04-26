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

public class Donor {

    public String getDonorName() {
        return donorName;
    }

    public String getDonorPhoneNumber() {
        return donorPhoneNumber;
    }

    public String getEamil() {
        return eamil;
    }

    public String getGender() {
        return gender;
    }

    public String getPassword() {
        return password;
    }

    public int getAge() {
        return age;
    }

    public String getBloodGroup() {
        return bloodGroup;
    }

    public String getDonorAddress() {
        return donorAddress;
    }

    public void setDonorName(String donorName) {
        this.donorName = donorName;
    }

    public void setDonorPhoneNumber(String donorPhoneNumber) {
        this.donorPhoneNumber = donorPhoneNumber;
    }

    public void setEamil(String eamil) {
        this.eamil = eamil;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public void setAge(int age) {
        this.age = age;
    }

    public void setBloodGroup(String bloodGroup) {
        this.bloodGroup = bloodGroup;
    }

    public void setDonorAddress(String donorAddress) {
        this.donorAddress = donorAddress;
    }
    private String donorName;
    private String donorPhoneNumber;
    private String eamil;
    private String gender;
    private String password = "N/A";
    private int age;
    private String bloodGroup;
    private String donorAddress;

    public Donor(String donorName, String donorPhoneNumber, String eamil, String gender, int age, String bloodGroup, String donorAddress) {
        this.donorName = donorName;
        this.donorPhoneNumber = donorPhoneNumber;
        this.eamil = eamil;
        this.gender = gender;
        this.age = age;
        this.bloodGroup = bloodGroup;
        this.donorAddress = donorAddress;
    }
    
}

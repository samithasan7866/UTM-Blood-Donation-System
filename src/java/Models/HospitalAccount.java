package Models;


public class HospitalAccount {

    private String hospitalName;
    private String hospitalMobileNo;
    private String eamil;
    private String hospitalAddress;
    private String password = "N/A";
    
    public HospitalAccount(String hospitalName, String hospitalMobileNo, String eamil, String hospitalAddress) {
        this.hospitalName = hospitalName;
        this.hospitalMobileNo = hospitalMobileNo;
        this.eamil = eamil;
        this.hospitalAddress = hospitalAddress;

    }

    public String getHospitalName() {
        return hospitalName;
    }

    public String getHospitalMobileNo() {
        return hospitalMobileNo;
    }

    public String getEamil() {
        return eamil;
    }

    public String getHospitalAddress() {
        return hospitalAddress;
    }

    public String getPassword() {
        return password;
    }
 

    public void setHospitalName(String hospitalName) {
        this.hospitalName = hospitalName;
    }

    public void setHospitalMobileNo(String hospitalMobileNo) {
        this.hospitalMobileNo = hospitalMobileNo;
    }

    public void setEamil(String eamil) {
        this.eamil = eamil;
    }

    public void setHospitalAddress(String hospitalAddress) {
        this.hospitalAddress = hospitalAddress;
    }

    public void setPassword(String password) {
        this.password = password;
    }
    
}

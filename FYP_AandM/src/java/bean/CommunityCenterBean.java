/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package bean;

/**
 *
 * @author Anson
 */
public class CommunityCenterBean {
    private int communityCenterID;
    private int districtID;
    private String name;
    private String address;

    public void setAddress(String address) {
        this.address = address;
    }

    public String getAddress() {
        return address;
    }
    private String tel;
    private String fax;
    private String email;
    private String info;
    
    public CommunityCenterBean(){}

    public int getCommunityCenterID() {
        return communityCenterID;
    }

    public int getDistrictID() {
        return districtID;
    }

    public String getName() {
        return name;
    }

    public String getTel() {
        return tel;
    }

    public String getFax() {
        return fax;
    }

    public String getEmail() {
        return email;
    }

    public String getInfo() {
        return info;
    }

    public void setCommunityCenterID(int communityCenterID) {
        this.communityCenterID = communityCenterID;
    }

    public void setDistrictID(int districtID) {
        this.districtID = districtID;
    }

    public void setName(String name) {
        this.name = name;
    }

    public void setTel(String tel) {
        this.tel = tel;
    }

    public void setFax(String fax) {
        this.fax = fax;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public void setInfo(String info) {
        this.info = info;
    }
    
    
}

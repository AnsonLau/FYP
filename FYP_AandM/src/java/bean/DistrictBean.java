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
public class DistrictBean {
    private int districtID;
    private String name;
    private int prev;
    private int next;
    public DistrictBean(){}
    
    public int getDistrictID() {
        return districtID;
    }

    public String getName() {
        return name;
    }

    public int getPrev() {
        return prev;
    }

    public int getNext() {
        return next;
    }

    public void setDistrictID(int districtID) {
        this.districtID = districtID;
    }

    public void setName(String name) {
        this.name = name;
    }

    public void setPrev(int prev) {
        this.prev = prev;
    }

    public void setNext(int next) {
        this.next = next;
    }

    

    
    
}

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
public class ActivitiesBean {
    private int activitiesID;
    private String name;
    private int districtNo;
    private int quota;
    private int remain;
    private int targetAgeMax;
    private int targetAgeMin;
    private String deadline;
    private String venue;
    private String a_date;
    private String tag;
    private int staffID;
    private int sqID;
    private String description;
    
    public ActivitiesBean(){}

    public int getActivitiesID() {
        return activitiesID;
    }

    public String getName() {
        return name;
    }

    public int getDistrictNo() {
        return districtNo;
    }

    public int getQuota() {
        return quota;
    }

    public int getRemain() {
        return remain;
    }

    public int getTargetAgeMax() {
        return targetAgeMax;
    }

    public int getTargetAgeMin() {
        return targetAgeMin;
    }

    public String getDeadline() {
        return deadline;
    }

    public String getVenue() {
        return venue;
    }

    public String getA_date() {
        return a_date;
    }

    public String getTag() {
        return tag;
    }

    public int getStaffID() {
        return staffID;
    }

    public int getSqID() {
        return sqID;
    }

    public String getDescription() {
        return description;
    }

    public void setActivitiesID(int activitiesID) {
        this.activitiesID = activitiesID;
    }

    public void setName(String name) {
        this.name = name;
    }

    public void setDistrictNo(int districtNo) {
        this.districtNo = districtNo;
    }

    public void setQuota(int quota) {
        this.quota = quota;
    }

    public void setRemain(int remain) {
        this.remain = remain;
    }

    public void setTargetAgeMax(int targetAgeMax) {
        this.targetAgeMax = targetAgeMax;
    }

    public void setTargetAgeMin(int targetAgeMin) {
        this.targetAgeMin = targetAgeMin;
    }

    public void setDeadline(String deadline) {
        this.deadline = deadline;
    }

    public void setVenue(String venue) {
        this.venue = venue;
    }

    public void setA_date(String a_date) {
        this.a_date = a_date;
    }

    public void setTag(String tag) {
        this.tag = tag;
    }

    public void setStaffID(int staffID) {
        this.staffID = staffID;
    }

    public void setSqID(int sqID) {
        this.sqID = sqID;
    }

    public void setDescription(String description) {
        this.description = description;
    }
    
}

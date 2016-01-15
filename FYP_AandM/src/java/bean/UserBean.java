package bean;

public class UserBean {
    private int userID;
    private String userName;
    private String password;
    private int memberID;
    private int adminID;
    private int staffID;
    private String firstName_eng;
    private String lastName_eng;
    private String sex;
    private String tel;
    private String name_ch;
    private String email;
    private int isAuthenticate;

    public UserBean() {
    }

    public int getUserID() {
        return userID;
    }
    
    public String getUserName() {
        return userName;
    }

    public String getPassword() {
        return password;
    }

    public int getMemberID() {
        return memberID;
    }

    public int getAdminID() {
        return adminID;
    }

    public int getStaffID() {
        return staffID;
    }

    public String getFirstName_eng() {
        return firstName_eng;
    }

    public String getLastName_eng() {
        return lastName_eng;
    }

    public String getSex() {
        return sex;
    }

    public String getTel() {
        return tel;
    }

    public String getName_ch() {
        return name_ch;
    }

    public String getEmail() {
        return email;
    }

    public int getIsAuthenticate() {
        return isAuthenticate;
    }
    
     public void setUserID(int userID) {
        this.userID = userID;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public void setMemberID(int memberID) {
        this.memberID = memberID;
    }

    public void setAdminID(int adminID) {
        this.adminID = adminID;
    }

    public void setStaffID(int staffID) {
        this.staffID = staffID;
    }

    public void setFirstName_eng(String firstName_eng) {
        this.firstName_eng = firstName_eng;
    }

    public void setLastName_eng(String lastName_eng) {
        this.lastName_eng = lastName_eng;
    }

    public void setSex(String sex) {
        this.sex = sex;
    }

    public void setTel(String tel) {
        this.tel = tel;
    }

    public void setName_ch(String name_ch) {
        this.name_ch = name_ch;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public void setIsAuthenticate(int isAuthenticate) {
        this.isAuthenticate = isAuthenticate;
    }
}

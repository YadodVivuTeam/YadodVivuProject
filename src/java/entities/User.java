/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package entities;

/**
 *
 * @author tungl
 */
public class User {
    private int userID;
    private String fullname;
    private String cmnd;
    private String email;
    private String userName;
    private String password;
    private String phone;
    private String userType;
    private boolean isBlocked;

    public User() {
    }

    public User(int userID, String fullname, String cmnd, String email, String userName, String phone, String userType, boolean isBlocked) {
        this.userID = userID;
        this.fullname = fullname;
        this.cmnd = cmnd;
        this.email = email;
        this.userName = userName;
        this.phone = phone;
        this.userType = userType;
        this.isBlocked = isBlocked;
    }
    
    public User(int userID, String fullname, String cmnd, String email, String userName, String password, String phone, String userType, boolean isBlocked) {
        this.userID = userID;
        this.fullname = fullname;
        this.cmnd = cmnd;
        this.email = email;
        this.userName = userName;
        this.password = password;
        this.phone = phone;
        this.userType = userType;
        this.isBlocked = isBlocked;
    }

    public int getUserID() {
        return userID;
    }

    public void setUserID(int userID) {
        this.userID = userID;
    }

    public String getFullname() {
        return fullname;
    }

    public void setFullname(String fullname) {
        this.fullname = fullname;
    }

    public String getCmnd() {
        return cmnd;
    }

    public void setCmnd(String cmnd) {
        this.cmnd = cmnd;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getUserType() {
        return userType;
    }

    public void setUserType(String userType) {
        this.userType = userType;
    }

    public boolean isIsBlocked() {
        return isBlocked;
    }

    public void setIsBlocked(boolean isBlocked) {
        this.isBlocked = isBlocked;
    }
    
    
}

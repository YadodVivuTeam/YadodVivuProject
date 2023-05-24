/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DAO;

import entities.User;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author tungl
 */
public class UserDAO extends MyDAO {

    public User checkAuthentication(String user, String pass) {
        User userObj = null;
        String xSql = "SELECT [UserID], [FullName], [cmnd], [Email], [userName], [Password], [Phone], [UserType], [IsBlocked] FROM [dbo].[Users] WHERE ([userName] = ?  AND [Password] = ? )OR ([Email] = ? AND [Password] = ?)";

        try {
            ps = con.prepareStatement(xSql);
            ps.setString(1, user);
            ps.setString(2, pass);
            ps.setString(3, user);
            ps.setString(4, pass);
            rs = ps.executeQuery();

            if (rs.next()) {
                userObj = new User();
                userObj.setUserID(rs.getInt("UserID"));
                userObj.setFullname(rs.getString("FullName"));
                userObj.setCmnd(rs.getString("cmnd"));
                userObj.setEmail(rs.getString("Email"));
                userObj.setUserName(rs.getString("userName"));
                userObj.setPassword(rs.getString("Password"));
                userObj.setPhone(rs.getString("Phone"));
                userObj.setUserType(rs.getString("UserType"));
                userObj.setIsBlocked(rs.getBoolean("IsBlocked"));
            }
            rs.close();
            ps.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return userObj;
    }

    public User searchUser(String mode, String input) {
        User userObj = null;
        String xSql = "SELECT [UserID], [FullName], [cmnd], [Email], [userName], [Phone], [UserType], [IsBlocked] FROM [dbo].[Users] WHERE " + mode + " = ? ";

        try {
            ps = con.prepareStatement(xSql);
            ps.setString(1, input);
            rs = ps.executeQuery();

            if (rs.next()) {
                userObj = new User();
                userObj.setUserID(rs.getInt("UserID"));
                userObj.setFullname(rs.getString("FullName"));
                userObj.setCmnd(rs.getString("cmnd"));
                userObj.setEmail(rs.getString("Email"));
                userObj.setUserName(rs.getString("userName"));
                userObj.setPhone(rs.getString("Phone"));
                userObj.setUserType(rs.getString("UserType"));
                userObj.setIsBlocked(rs.getBoolean("IsBlocked"));
            }
            rs.close();
            ps.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return userObj;
    }

    public boolean registerUser(String fullName, String cmnd, String email, String userName, String password, String phone, String userType, boolean isBlocked) {
        String xSql = "INSERT INTO [dbo].[Users] ([FullName], [cmnd], [Email], [userName], [Password], [Phone], [UserType], [IsBlocked]) VALUES (?, ?, ?, ?, ?, ?, ?, ?)";

        try {
            ps = con.prepareStatement(xSql);
            ps.setString(1, fullName);
            ps.setString(2, cmnd);
            ps.setString(3, email);
            ps.setString(4, userName);
            ps.setString(5, password);
            ps.setString(6, phone);
            ps.setString(7, userType);
            ps.setBoolean(8, isBlocked);

            int rowsAffected = ps.executeUpdate();

            ps.close();

            if (rowsAffected > 0) {
                return true; // Đăng ký thành công
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return false; // Đăng ký thất bại
    }

    public boolean updateProfile(User userObj) {
        boolean success = false;
        String updateSql = "UPDATE [dbo].[Users] SET [FullName] = ?, [cmnd] = ?, [Email] = ?, [UserName] = ?, [Phone] = ?, [UserType] = ?, [IsBlocked] = ? WHERE [UserID] = ?";

        try {
            ps = con.prepareStatement(updateSql);
            ps.setString(1, userObj.getFullname());
            ps.setString(2, userObj.getCmnd());
            ps.setString(3, userObj.getEmail());
            ps.setString(4, userObj.getUserName());
            // Assuming Password is not updated here, as it is not provided in the User object.
            ps.setString(5, userObj.getPhone());
            ps.setString(6, userObj.getUserType());
            ps.setBoolean(7, userObj.isIsBlocked());
            ps.setInt(8, userObj.getUserID());
            int rowsAffected = ps.executeUpdate();
            if (rowsAffected > 0) {
                success = true;
            }
            ps.close();
        } catch (Exception e) {
            e.printStackTrace();
        }

        return success;
    }

    public List<User> getAll() {
        User userObj = null;
        String xSql = "SELECT [UserID], [FullName], [cmnd], [Email], [userName], [Phone], [UserType], [IsBlocked] FROM [dbo].[Users]";
        List<User> ls = new ArrayList<>();
        try {
            ps = con.prepareStatement(xSql);
            rs = ps.executeQuery();

            while (rs.next()) {
                userObj = new User();
                userObj.setUserID(rs.getInt("UserID"));
                userObj.setFullname(rs.getString("FullName"));
                userObj.setCmnd(rs.getString("cmnd"));
                userObj.setEmail(rs.getString("Email"));
                userObj.setUserName(rs.getString("userName"));
                userObj.setPhone(rs.getString("Phone"));
                userObj.setUserType(rs.getString("UserType"));
                userObj.setIsBlocked(rs.getBoolean("IsBlocked"));
                ls.add(userObj);
            }
            rs.close();
            ps.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return ls;
    }

    public List<User> getAllByType(String type) {
        User userObj = null;
        String xSql = "SELECT [UserID], [FullName], [cmnd], [Email], [userName], [Phone], [UserType], [IsBlocked] FROM [dbo].[Users] WHERE [UserType] = ?";
        List<User> ls = new ArrayList<>();
        try {
            ps = con.prepareStatement(xSql);
            ps.setString(1, type);

            rs = ps.executeQuery();

            while (rs.next()) {
                userObj = new User();
                userObj.setUserID(rs.getInt("UserID"));
                userObj.setFullname(rs.getString("FullName"));
                userObj.setCmnd(rs.getString("cmnd"));
                userObj.setEmail(rs.getString("Email"));
                userObj.setUserName(rs.getString("userName"));
                userObj.setPhone(rs.getString("Phone"));
                userObj.setUserType(rs.getString("UserType"));
                userObj.setIsBlocked(rs.getBoolean("IsBlocked"));
                ls.add(userObj);
            }
            rs.close();
            ps.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return ls;
    }

    public static void main(String[] args) {
        UserDAO dao = new UserDAO();
//        User a = new User(3, "tung", "1231231", "tung@123.com", "tung123"," ", "1231323 ", "Admin", true);
//        dao.updateProfile(a);
        System.out.println(dao.getAllByType("Admin").size());
    }
}

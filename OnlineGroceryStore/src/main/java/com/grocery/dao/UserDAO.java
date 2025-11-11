package com.grocery.dao;
import com.grocery.model.User;
import java.sql.*;

public class UserDAO {
    Connection con = DBUtil.getConnection();

    public boolean registerUser(User user) {
        try {
            PreparedStatement ps = con.prepareStatement(
                "INSERT INTO users(name, email, password) VALUES (?, ?, ?)");
            ps.setString(1, user.getName());
            ps.setString(2, user.getEmail());
            ps.setString(3, user.getPassword());
            ps.executeUpdate();
            return true;
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }

    public User loginUser(String email, String password) {
        User u = null;
        try {
            PreparedStatement ps = con.prepareStatement(
                "SELECT * FROM users WHERE email=? AND password=?");
            ps.setString(1, email);
            ps.setString(2, password);
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                u = new User();
                u.setId(rs.getInt("id"));
                u.setName(rs.getString("name"));
                u.setEmail(rs.getString("email"));
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return u;
    }

	public boolean checkUserExists(String email) {
		// TODO Auto-generated method stub
		return false;
	}
}

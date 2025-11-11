package com.grocery.dao;
import com.grocery.model.CartItem;
import java.sql.*;
import java.util.*;

public class CartDAO {
    Connection con = DBUtil.getConnection();

    public void addToCart(int userId, int productId, int quantity) {
        try {
            PreparedStatement ps = con.prepareStatement(
                "INSERT INTO cart(user_id, product_id, quantity) VALUES (?, ?, ?)");
            ps.setInt(1, userId);
            ps.setInt(2, productId);
            ps.setInt(3, quantity);
            ps.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public List<CartItem> getUserCart(int userId) {
        List<CartItem> list = new ArrayList<>();
        try {
            PreparedStatement ps = con.prepareStatement(
                "SELECT c.id, p.name, p.price, c.quantity FROM cart c JOIN products p ON c.product_id=p.id WHERE c.user_id=?");
            ps.setInt(1, userId);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                CartItem ci = new CartItem();
                ci.setId(rs.getInt("id"));
                ci.setProductName(rs.getString("name"));
                ci.setPrice(rs.getDouble("price"));
                ci.setQuantity(rs.getInt("quantity"));
                list.add(ci);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return list;
    }
}

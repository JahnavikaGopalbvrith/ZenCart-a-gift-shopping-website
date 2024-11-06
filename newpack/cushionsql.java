package newpack;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class cushionsql {
    private static final String JDBC_URL = "jdbc:mysql://localhost:3306/new_schema";
    private static final String USERNAME = "root";
    private static final String PASSWORD = "1234";

    public List<cushion> getCushions() {
        List<cushion> listCushions = new ArrayList<>();
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con = DriverManager.getConnection(JDBC_URL, USERNAME, PASSWORD);

            String query = "SELECT * FROM cushionss";
            Statement stmt = con.createStatement();
            ResultSet rs = stmt.executeQuery(query);

            while (rs.next()) {
                cushion cushion = new cushion();
                cushion.setId(rs.getInt("id"));
                cushion.setName(rs.getString("name"));
                cushion.setPrice(rs.getDouble("price"));
                cushion.setRating(rs.getDouble("rating"));
                cushion.setImageUrl(rs.getString("image_url"));
                cushion.setCaption(rs.getString("caption"));
                listCushions.add(cushion);
            }
            rs.close();
            stmt.close();
            con.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return listCushions;
    }

    public void addCushion(cushion cushion) {
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con = DriverManager.getConnection(JDBC_URL, USERNAME, PASSWORD);
            String query = "INSERT INTO cushion_table (name, price, rating, image_url, caption) VALUES (?, ?, ?, ?, ?)";
            PreparedStatement pstmt = con.prepareStatement(query);
            pstmt.setString(1, cushion.getName());
            pstmt.setDouble(2, cushion.getPrice());
            pstmt.setDouble(3, cushion.getRating());
            pstmt.setString(4, cushion.getImageUrl());
            pstmt.setString(5, cushion.getCaption());
            pstmt.executeUpdate();
            pstmt.close();
            con.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}



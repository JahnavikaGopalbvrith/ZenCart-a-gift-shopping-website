package newpack;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class bottlesql {
    private static final String JDBC_URL = "jdbc:mysql://localhost:3306/new_schema";
    private static final String USERNAME = "root";
    private static final String PASSWORD = "1234";

    public List<Bottle> getBottles() {
        List<Bottle> listBottles = new ArrayList<>();
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con = DriverManager.getConnection(JDBC_URL, USERNAME, PASSWORD);

            String query = "SELECT * FROM water";
            Statement stmt = con.createStatement();
            ResultSet rs = stmt.executeQuery(query);

            while (rs.next()) {
                Bottle bottle = new Bottle();
                bottle.setId(rs.getInt("id"));
                bottle.setName(rs.getString("name"));
                bottle.setPrice(rs.getDouble("price"));
                bottle.setRating(rs.getDouble("rating"));
                bottle.setImageUrl(rs.getString("image_url"));
                bottle.setCaption(rs.getString("caption"));
                listBottles.add(bottle);
            }

            rs.close();
            stmt.close();
            con.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return listBottles;
    }

    public void addBottle(Bottle bottle) {
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con = DriverManager.getConnection(JDBC_URL, USERNAME, PASSWORD);

            String query = "INSERT INTO bottle_table (name, price, rating, image_url, caption) VALUES (?, ?, ?, ?, ?)";
            PreparedStatement pstmt = con.prepareStatement(query);
            pstmt.setString(1, bottle.getName());
            pstmt.setDouble(2, bottle.getPrice());
            pstmt.setDouble(3, bottle.getRating());
            pstmt.setString(4, bottle.getImageUrl());
            pstmt.setString(5, bottle.getCaption());
            
            pstmt.executeUpdate();

            pstmt.close();
            con.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}

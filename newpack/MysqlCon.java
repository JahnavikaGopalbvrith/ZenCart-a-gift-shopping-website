package newpack;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class MysqlCon {
    private static final String JDBC_URL = "jdbc:mysql://localhost:3306/new_schema";
    private static final String USERNAME = "root";
    private static final String PASSWORD = "1234";

    public List<Product> getProducts() {
        List<Product> listProducts = new ArrayList<>();
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con = DriverManager.getConnection(JDBC_URL, USERNAME, PASSWORD);

            String query = "SELECT * FROM prince";
            Statement stmt = con.createStatement();
            ResultSet rs = stmt.executeQuery(query);

            while (rs.next()) {
                Product product = new Product();
                product.setId(rs.getInt("id"));
                product.setName(rs.getString("name"));
                product.setPrice(rs.getDouble("price"));
                product.setRating(rs.getDouble("rating"));
                product.setImageUrl(rs.getString("image_url"));
                product.setCaption(rs.getString("caption"));
                listProducts.add(product);
            }
            rs.close();
            stmt.close();
            con.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return listProducts;
    }

    public void addProduct(Product product) {
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con = DriverManager.getConnection(JDBC_URL, USERNAME, PASSWORD);
            String query = "INSERT INTO pr (name, price, rating, image_url, caption) VALUES (?, ?, ?, ?, ?)";
            PreparedStatement pstmt = con.prepareStatement(query);
            pstmt.setString(1, product.getName());
            pstmt.setDouble(2, product.getPrice());
            pstmt.setDouble(3, product.getRating());
            pstmt.setString(4, product.getImageUrl());
            pstmt.setString(5, product.getCaption());
            pstmt.executeUpdate();
            pstmt.close();
            con.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}

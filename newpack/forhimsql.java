package newpack;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class forhimsql {
    private static final String JDBC_URL = "jdbc:mysql://localhost:3306/new_schema";
    private static final String USERNAME = "root";
    private static final String PASSWORD = "1234";

    public List<forhim> getForhimProducts() {
        List<forhim> listForhim = new ArrayList<>();
        Connection con = null;
        Statement stmt = null;
        ResultSet rs = null;

        try {
            // Load and register the JDBC driver
            Class.forName("com.mysql.cj.jdbc.Driver");

            // Establish connection to the database
            con = DriverManager.getConnection(JDBC_URL, USERNAME, PASSWORD);

            // Create SQL statement
            String query = "SELECT * FROM him";
            stmt = con.createStatement();

            // Execute the query
            rs = stmt.executeQuery(query);

            // Process the result set
            while (rs.next()) {
                forhim product = new forhim();
                product.setId(rs.getInt("id"));
                product.setName(rs.getString("name"));
                product.setPrice(rs.getDouble("price"));
                product.setRating(rs.getDouble("rating"));
                product.setImageUrl(rs.getString("image_url"));
                product.setCaption(rs.getString("caption"));
                listForhim.add(product);
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            // Close JDBC objects in finally block to ensure they're closed even if an exception occurs
            try {
                if (rs != null) rs.close();
                if (stmt != null) stmt.close();
                if (con != null) con.close();
            } catch (Exception e) {
                e.printStackTrace();
            }
        }

        return listForhim;
    }

    // Additional methods for insert, update, delete if needed
}

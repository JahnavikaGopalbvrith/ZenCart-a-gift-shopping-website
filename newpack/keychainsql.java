package newpack;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class keychainsql {
    private static final String JDBC_URL = "jdbc:mysql://localhost:3306/new_schema";
    private static final String USERNAME = "root";
    private static final String PASSWORD = "1234";

    public List<keychain> getKeychains() {
        List<keychain> listKeychains = new ArrayList<>();
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con = DriverManager.getConnection(JDBC_URL, USERNAME, PASSWORD);

            String query = "SELECT * FROM keychain";
            Statement stmt = con.createStatement();
            ResultSet rs = stmt.executeQuery(query);

            while (rs.next()) {
                keychain keychain = new keychain();
                keychain.setId(rs.getInt("id"));
                keychain.setName(rs.getString("name"));
                keychain.setPrice(rs.getDouble("price"));
                keychain.setRating(rs.getDouble("rating"));
                keychain.setImageUrl(rs.getString("image_url"));
                keychain.setCaption(rs.getString("caption"));
                listKeychains.add(keychain);
            }

            rs.close();
            stmt.close();
            con.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return listKeychains;
    }

    public void addKeychain(keychain keychain) {
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con = DriverManager.getConnection(JDBC_URL, USERNAME, PASSWORD);

            String query = "INSERT INTO keychain_table (name, price, rating, image_url, caption) VALUES (?, ?, ?, ?, ?)";
            PreparedStatement pstmt = con.prepareStatement(query);
            pstmt.setString(1, keychain.getName());
            pstmt.setDouble(2, keychain.getPrice());
            pstmt.setDouble(3, keychain.getRating());
            pstmt.setString(4, keychain.getImageUrl());
            pstmt.setString(5, keychain.getCaption());
            
            pstmt.executeUpdate();

            pstmt.close();
            con.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}

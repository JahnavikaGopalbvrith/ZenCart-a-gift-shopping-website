package newpack;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class clocksql {
    private static final String JDBC_URL = "jdbc:mysql://localhost:3306/your_database_name";
    private static final String USERNAME = "your_username";
    private static final String PASSWORD = "your_password";

    public List<clock> getClocks() {
        List<clock> listClocks = new ArrayList<>();
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con = DriverManager.getConnection(JDBC_URL, USERNAME, PASSWORD);

            String query = "SELECT * FROM clock";
            Statement stmt = con.createStatement();
            ResultSet rs = stmt.executeQuery(query);

            while (rs.next()) {
                clock clock = new clock();
                clock.setId(rs.getInt("id"));
                clock.setName(rs.getString("name"));
                clock.setPrice(rs.getDouble("price"));
                clock.setRating(rs.getDouble("rating"));
                clock.setImageUrl(rs.getString("image_url"));
                clock.setCaption(rs.getString("caption"));
                listClocks.add(clock);
            }

            rs.close();
            stmt.close();
            con.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return listClocks;
    }

    public void addClock(clock clock) {
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con = DriverManager.getConnection(JDBC_URL, USERNAME, PASSWORD);

            String query = "INSERT INTO clocks (name, price, rating, image_url, caption) VALUES (?, ?, ?, ?, ?)";
            PreparedStatement pstmt = con.prepareStatement(query);
            pstmt.setString(1, clock.getName());
            pstmt.setDouble(2, clock.getPrice());
            pstmt.setDouble(3, clock.getRating());
            pstmt.setString(4, clock.getImageUrl());
            pstmt.setString(5, clock.getCaption());
            pstmt.executeUpdate();

            pstmt.close();
            con.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}

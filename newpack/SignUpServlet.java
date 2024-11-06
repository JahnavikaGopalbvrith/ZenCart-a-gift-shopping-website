package newpack;
import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
import java.sql.*;

public class SignUpServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Retrieve form data
        String fullName = request.getParameter("fullName");
        String username = request.getParameter("username");
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        String confirmPassword = request.getParameter("confirmPassword");

        // Validate passwords match
        if (!password.equals(confirmPassword)) {
            // Passwords don't match, handle error (redirect or display error message)
            response.sendRedirect("signup.html"); // Redirect to sign-up page
            return;
        }

        // Database connection parameters
        String url = "jdbc:mysql://localhost:3306/new_schema";
        String dbUser = "root";
        String dbPassword = "1234";

        try {
            // Load JDBC driver
            Class.forName("com.mysql.jdbc.Driver");

            // Establish connection
            Connection conn = DriverManager.getConnection(url, dbUser, dbPassword);

            // Create SQL statement
            String sql = "INSERT INTO us (full_name, username, email, password) VALUES (?, ?, ?, ?)";
            PreparedStatement statement = conn.prepareStatement(sql);
            statement.setString(1, fullName);
            statement.setString(2, username);
            statement.setString(3, email);
            statement.setString(4, password);

            // Execute the statement
            int rowsInserted = statement.executeUpdate();
            if (rowsInserted > 0) {
                // Redirect to login page after successful signup
                response.sendRedirect("login.html"); // Replace with your actual login page
            }

            // Close connections
            statement.close();
            conn.close();
        } catch (SQLException | ClassNotFoundException ex) {
            ex.printStackTrace();
            // Handle database errors or other exceptions
            // You might want to redirect to an error page here
            response.sendRedirect("error.html"); // Example: redirect to an error page
        }
    }
}

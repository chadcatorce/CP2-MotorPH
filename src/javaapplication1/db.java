/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package javaapplication1;

import java.util.List;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

/**
 *
 * @author Geli Ace
 */
public class db {

   private static final String URL = "jdbc:postgresql://localhost:5432/users";
    private static final String USER = "postgres";
    private static final String PASSWORD = "admin";
    
    public static void main(String args[]) {
    }

    public static Connection getConnection() throws SQLException {
        try {
            // Load the PostgreSQL driver class (optional step since JDBC 4.0)
            Class.forName("org.postgresql.Driver");
        } catch (ClassNotFoundException e) {
            System.err.println("PostgreSQL JDBC Driver not found. Include it in your library path.");
            return null;
        }

        // Establish the connection
        return DriverManager.getConnection(URL, USER, PASSWORD);
    }
    
    public boolean authenticate(String username, String password) {
        try (Connection connection = getConnection()) {
            String query = "SELECT * FROM users.users WHERE username = ? AND password = ?";
            PreparedStatement statement = connection.prepareStatement(query);
            statement.setString(1, username);
            statement.setString(2, password);

            ResultSet resultSet = statement.executeQuery();

            return resultSet.next();
        } catch (SQLException e) {
            System.err.println("SQLState: " + e.getSQLState());
            System.err.println("Error Code: " + e.getErrorCode());
            System.err.println("Message: " + e.getMessage());
            return false;
        }
    }
    
    public boolean register(String firstname, String lastname, String username, String password) {
        String sql = "INSERT INTO users.users (firstname, lastname, username, password) VALUES (?, ?, ?, ?)";
        
        try (Connection connection = getConnection()) {
            PreparedStatement pstmt = connection.prepareStatement(sql);

            pstmt.setString(1, firstname);
            pstmt.setString(2, lastname);
            pstmt.setString(3, username);
            pstmt.setString(4, password);

            int rowsAffected = pstmt.executeUpdate();

            return rowsAffected > 0;
        } catch (SQLException e) {
            System.err.println("SQLState: " + e.getSQLState());
            System.err.println("Error Code: " + e.getErrorCode());
            System.err.println("Message: " + e.getMessage());
            return false;
        }
    }
    
    public List<Employee> getAllEmployees() {
        List<Employee> employees = new ArrayList<>();
        String query = "SELECT * FROM users.employees ORDER BY id ASC"; // Adjust the table name if necessary

        try (Connection connection = getConnection();
             PreparedStatement statement = connection.prepareStatement(query);
             ResultSet resultSet = statement.executeQuery()) {

            while (resultSet.next()) {
                Employee employee = new Employee();
                employee.setId(resultSet.getInt("id"));
                employee.setFirst_name(resultSet.getString("first_name"));
                employee.setLast_name(resultSet.getString("last_name"));
                employee.setBirthday(resultSet.getDate("birthday"));
                employee.setAddress(resultSet.getString("address"));
                employee.setPhone(resultSet.getString("phone"));
                employee.setSss(resultSet.getString("sss"));
                employee.setTin(resultSet.getString("tin"));
                employee.setPagibig(resultSet.getString("pagibig"));
                employee.setStatus(resultSet.getString("status"));
                employee.setDesignation(resultSet.getString("designation"));
                employee.setSupervisor(resultSet.getString("supervisor"));
                employee.setPhilhealth(resultSet.getString("philhealth"));
                employee.setBasic_salary(resultSet.getDouble("basic_salary"));
                employee.setRice_subsidy(resultSet.getDouble("rice_subsidy"));
                employee.setPhone_allowance(resultSet.getDouble("phone_allowance"));
                employee.setClothing_allowance(resultSet.getDouble("clothing_allowance"));
                employee.setGross_semi_monthly_rate(resultSet.getDouble("gross_semi_monthly_rate"));
                employee.setHourly_rate(resultSet.getDouble("hourly_rate"));
                employees.add(employee);
            }
        } catch (SQLException e) {

        }
        return employees;
    }
    
    public boolean updateRecord(String lastName, String firstName, String sss, String philhealth, String tin, String pagibig, String employeeNo) {
        String query = "UPDATE users.employees SET first_name = ?, last_name = ?, sss = ?, philhealth = ?, tin = ?, pagibig = ? WHERE id = ?";

        try (Connection connection = getConnection();
             PreparedStatement statement = connection.prepareStatement(query)) {
            statement.setString(1, firstName);
            statement.setString(2, lastName);
            statement.setString(3, sss);
            statement.setString(4, philhealth);
            statement.setString(5, tin);
            statement.setString(6, pagibig);
            // Assuming the id is an integer and you want to update based on it
            statement.setInt(7, Integer.parseInt(employeeNo)); // Assuming lblEmployeeNo is the employee ID label

            int rowsAffected = statement.executeUpdate();
            return rowsAffected > 0;
        } catch (SQLException e) {
            return false;
        }
    }
    
    public boolean deleteEmployee(int employeeId) {
        String sql = "DELETE FROM users.employees WHERE id = ?";

        try (Connection connection = getConnection();
             PreparedStatement pstmt = connection.prepareStatement(sql)) {

            pstmt.setInt(1, employeeId);

            int rowsAffected = pstmt.executeUpdate();

            return rowsAffected > 0;
        } catch (SQLException e) {
            System.err.println("SQLState: " + e.getSQLState());
            System.err.println("Error Code: " + e.getErrorCode());
            System.err.println("Message: " + e.getMessage());
            return false;
        }
    }
}
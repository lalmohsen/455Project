package DB;

import java.sql.*;
import java.util.logging.Level;
import java.util.logging.Logger;

public class DB_Connection {
	String URL = "jdbc:mysql://localhost:3306/fcit_events?useSSL=false";
	String USERNAME = "CPIT455";
	String PASSWORD = "Cpit1234";
	Connection connection;
	String sqlQuery = "";
	PreparedStatement preparedStmt = null;
	ResultSet rs = null;
	Statement stmt = null;

	public DB_Connection() {
		try {
			Class.forName("com.mysql.jdbc.Driver");
			connection = DriverManager.getConnection(URL, USERNAME, PASSWORD);
		} catch (SQLException e) {
		} catch (ClassNotFoundException ex) {
			Logger.getLogger(DB_Connection.class.getName()).log(Level.SEVERE, null, ex);
		}

	}
	
	public boolean addUser(String fName, String lName, String email, String password) {

		sqlQuery = "insert into students (firstName, lastName, email, password) values('" + fName + "','" + lName + "','" + email + "','" + password + "');";
		try {

			Statement stmt = connection.createStatement();
			stmt.execute(sqlQuery);

		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}
		return true;
	}
	
	public ResultSet verifyUser(String email, String password) {
		//sqlQuery = "select email, password from students where email = '" + email + "' password = '" + password + "'";
		sqlQuery = "SELECT * FROM students WHERE email= '" + email + "'";
		try {

			preparedStmt = connection.prepareStatement(sqlQuery);
			rs = preparedStmt.executeQuery();
 
		} catch (Exception e) {
			System.out.println(e);
		}
		return rs;		
	}
	
	public void close() {
		try {
			connection.close();
		} catch (SQLException ex) {
			Logger.getLogger(DB_Connection.class.getName()).log(Level.SEVERE, null, ex);
		}
	}
		
}
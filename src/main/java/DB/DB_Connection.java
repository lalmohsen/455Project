package DB;

import java.sql.*;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.time.format.DateTimeFormatter;
import java.util.logging.Level;
import java.util.logging.Logger;
import java.util.regex.Pattern;

import org.apache.tomcat.util.file.Matcher;

public class DB_Connection {
	/*String URL = "jdbc:mysql://localhost:3306/fcit_events?useSSL=false";
	String USERNAME = "CPIT455";
	String PASSWORD = "Cpit1234";
	Connection connection;
	String sqlQuery = "";
	PreparedStatement preparedStmt = null;
	ResultSet rs = null;
	Statement stmt = null;*/
	
	String URL = "jdbc:mysql://localhost:3306/eventsystem schema?useSSL=false";
	String USERNAME = "root";
	String PASSWORD = "mysql";
	Connection connection;
	String sqlQuery = "";
	PreparedStatement preparedStmt = null;
	ResultSet resultSet = null;
	ResultSet rs= null;

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
	
	
	public boolean addEvent(String NameEvent, String DateEvent, String NameOrganizer , String N_O_Paticapants) throws ParseException {

		var N_O_Patica = Integer.parseInt(N_O_Paticapants);
		
		sqlQuery = "insert into event_table (NameEvent,DateEvent,NameOrganizer,Capacity)values('"+ NameEvent + "','" + DateEvent + "','" + 
		NameOrganizer+ "','" + N_O_Patica +"');";
		try {
            Statement stmt = connection.createStatement();
			stmt.execute(sqlQuery);

		} catch (Exception e) {
			e.printStackTrace();
			System.out.println(e);
			return false;
		}
		return true;
	}
	
	
	public ResultSet getUser(int ID) {
		sqlQuery = "SELECT * FROM event_table WHERE IDE= " + ID;
		try {
			preparedStmt = connection.prepareStatement(sqlQuery);
			resultSet = preparedStmt.executeQuery();

		} catch (SQLException e) {
			System.out.println(e+"TTTTTTTTTTTTTT");
		}
		return resultSet;
	}
	
	
	public ResultSet getEvent() {
		sqlQuery = "SELECT * FROM event_table ; ";
		try {
			preparedStmt = connection.prepareStatement(sqlQuery);
			resultSet = preparedStmt.executeQuery();

		} catch (SQLException e) {
			System.out.println(e);
		}
		return resultSet;
	}
	


	public int updateUser(String NameEvent, String DateEvent, String NameOrganizer , String Capacity , String IDE) throws ParseException {
		var ide = Integer.parseInt(IDE);
		var capacity = Integer.parseInt(Capacity);
		sqlQuery = "Update event_table set NameEvent = ? , DateEvent = ? , NameOrganizer = ? , Capacity = ? "
		 		+ "WHERE IDE = " + ide;
		 int i=0;
		 try{	 
		 preparedStmt = connection.prepareStatement(sqlQuery);
		 preparedStmt.setString(1,NameEvent);
		 preparedStmt.setString(2, DateEvent);
	     preparedStmt.setString(3, NameOrganizer);
		 preparedStmt.setInt(4, capacity);
		 
		 
		 i = preparedStmt.executeUpdate();

		 }
		 catch(SQLException e){
		 System.out.print(e);
		 e.printStackTrace();
		 }

		 return i;
		 }
	
	
	
	 public int deleteUser(int ID) {
		 sqlQuery = "Delete from event_table WHERE IDE = " + ID;
		 int i=0;
		 try{
		 preparedStmt = connection.prepareStatement(sqlQuery);
		 i = preparedStmt.executeUpdate();
		 }
		 catch(SQLException e){
		 System.out.print(e);
		 e.printStackTrace();
		 }

		 return i;
		 }
	 
	 
	 
	 
	 
		
	
	 public ResultSet getEvents() {
		 sqlQuery = "SELECT * FROM event_table;";
		 try{
		 preparedStmt = connection.prepareStatement(sqlQuery);
		 resultSet = preparedStmt.executeQuery();
		 }catch(SQLException e){}
		 return resultSet;
		 }
	
	 
	 
	public  void cheackEvent () {
		
	}
	 
	
	
    static public boolean isDouble(String number) {
        try {
            Double.parseDouble(number);
        } catch (Exception e) {
            return false;
        }
        return true;
    }

    static public boolean isIntger(String number) {
        try {
            Integer.parseInt(number);
        } catch (Exception e) {
            return false;
        }
        return true;
    }

    static public boolean isonlyalphabets(String str) {
        return str.matches("[a-zA-Z]+");
    }

    static public boolean isValdtionEmail(String str) {

        Pattern pattern = Pattern.compile("^[a-zA-Z0-9_!#$%&'*+/=?`{|}~^-]+(?:\\.[a-zA-Z0-9_!#$%&'*+/=?`{|}~^-]+↵\n"
                + ")*@[a-zA-Z0-9-]+(?:\\.[a-zA-Z0-9-]+)*$");

        java.util.regex.Matcher matcher = pattern.matcher(str);
        return matcher.matches();

    }

    static public String RemoveSpece(String str) {
        return str.replaceAll(" ", "");
    }

     public boolean validatesaudimobilenumbers(String str) {
        Pattern pattern = Pattern.compile(
                "\\+9665\\d{8}|05\\d{8}|\\+1\\(\\d{3}\\)\\d{3}-\\d{4}|\\+1\\d{10}|\\d{3}-\\d{3}-\\d{4}"
        );
        java.util.regex.Matcher matcher = pattern.matcher(str);
        return matcher.matches();
    }

    public  boolean isValidID(String str) {

        Pattern p = Pattern.compile("^\\d{10}$");
        java.util.regex.Matcher m = p.matcher(str);
        return (m.matches());
    }
    
    
    public boolean onlyDigits(String str)
    {
       // https://www.geeksforgeeks.org/how-to-check-if-string-contains-only-digits-in-java/
        // Traverse the string from
        // start to end
        for (int i = 0; i < str.length(); i++) {
  
            // Check if character is
            // digit from 0-9
            // then return true
            // else false
            if (str.charAt(i) >= '0'
                && str.charAt(i) <= '9') {
                return true;
            }
            else {
                return false;
            }
        }
        return false;
    }

    //________________________________________________________________________________________

	 
	 
	 
	 
	 
}


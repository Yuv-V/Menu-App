package anything;

/**
 * @author RVIJ
 */

import java.sql.*;
import java.util.Vector;
import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
import anything.*;

public class GetrData { 
	private Vector result;

	public GetrData() {
		result = new Vector();
	} // constructor DataBaseSelect

	public String connect() {
		try {
			Class.forName(variablesm.JDBC_DRIVER).newInstance();
			return "";
		} catch (Exception E) {
			return "Unable to load driver.";
		}
	}

	public String select() {
		try {
		
			Connection C = DriverManager.getConnection(variablesm.DB_URL, variablesm.DB_USER, variablesm.DB_PASSWORD);
			Statement Stmt = C.createStatement();
           
            String end = "ORDER BY id";
            String query = "SELECT * from rinfo " + end;

			ResultSet myResult = Stmt.executeQuery(query);
						
			while (myResult.next()) {
				result.addElement(myResult.getString(1));
				result.addElement(myResult.getString(2));
				result.addElement(myResult.getString(3));
				result.addElement(myResult.getString(4));
				result.addElement(myResult.getString(5));
								
			}

			// Clean up
			myResult.close();
			Stmt.close();
			C.close();

			return "";
		} catch (SQLException E) {
			return "SQLException: " + E.getMessage();
		}
	}

	/**
	 * Accessor for result
	 **/
	public Vector getResult() {
		return result;
	}

	/**
	 * Mutator for result
	 **/
	public void setResult(Vector avector) {
		result = avector;
	}
}

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

public class GetfmData { 
	private Vector result;

	public GetfmData() {
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
            String query = "SELECT * from familymembers " + end;

			ResultSet myResult2 = Stmt.executeQuery(query);
						
			while (myResult2.next()) {
				result.addElement(myResult2.getString(1));
				result.addElement(myResult2.getString(2));
				result.addElement(myResult2.getString(3));
				result.addElement(myResult2.getString(4));
								
			}

			// Clean up
			myResult2.close();
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

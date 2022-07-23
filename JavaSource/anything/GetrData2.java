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

public class GetrData2 { 
	private Vector result;
	public String Rnotes;
	public String Rlocation;

	public GetrData2() {
		result = new Vector();
		Rnotes = null;
		Rlocation = null;
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
			String notesfromurl = getRnotes();
			String locationfromurl = getRlocation();
			String end = "' ORDER BY id";
			String query = "SELECT * from rinfo where rname = '" + req.getSession().getAttribute("lif1") + end;

			ResultSet myResult = Stmt.executeQuery(query);
						
			while (myResult.next()) {
				result.addElement(myResult.getString(1));
				result.addElement(myResult.getString(2));
				result.addElement(myResult.getString(3));
				result.addElement(myResult.getString(4));
				result.addElement(myResult.getString(5));
				result.addElement(myResult.getString(6));
				result.addElement(myResult.getString(7));			
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
	public void setRnotes( String Rnot ) {
				 Rnotes = Rnot;
		}
		public String getRnotes() {
				 return Rnotes;
		}
	public void setRlocation( String Rloc ) {
					 Rlocation = Rloc;
			}
			public String getRlocation() {
					 return Rlocation;
			}
}

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
import java.net.URLEncoder;
import java.io.UnsupportedEncodingException;
import java.util.StringTokenizer;


public class GetMenuItemDisplayData { 
	private Vector result;
	public String member;
	public String restaurant;

	public GetMenuItemDisplayData() {
		result = new Vector();
		member = null;
		restaurant = null;
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
			String memberfromurl = getMember();
			String restaurantfromurl = getRestaurant();
			//String restaurantdecode = URLEncoder.encode(restaurantfromurl);
			String[] arrayapos = readTokens(restaurantfromurl, "'");
			//if (arrayapos.length ==1){
				//restaurantfromurl = arrayapos[0];
			//} else{
				//restaurantfromurl = arrayapos[0] + "''" + arrayapos[1];
			//}
			 int arraylength = arrayapos.length -1;
			for (int d = 0; d < arraylength;) {
				if(d < 1){
					restaurantfromurl = arrayapos[d] + "''" + arrayapos[d=d+1];
				}else{
					restaurantfromurl = restaurantfromurl + "''" + arrayapos[d=d+1];
				}
			}
			
            String end = "' ORDER BY id";
			
            String query = "SELECT * from usermenu where member = '" + memberfromurl +"' and restaurant = '" + restaurantfromurl + end;

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
	public void setMember( String mem ) {
				 member = mem;
		}
		public String getMember() {
				 return member;
		}
	public void setRestaurant( String res ) {
					 restaurant = res;
			}
			public String getRestaurant() {
					 return restaurant;
			}
	public static String[] readTokens(String text, String token) {
			StringTokenizer parser = new StringTokenizer(text, token);
			int numTokens = parser.countTokens();
			String[] list = new String[numTokens];

			for (int i = 0; i < numTokens; i++) {
				list[i] = parser.nextToken();
			}

			return list;
		}
}

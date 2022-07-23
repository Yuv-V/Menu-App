package anything;
import java.io.IOException;
import java.sql.*;
import javax.servlet.*;
import javax.servlet.http.*;
/**
 * @version 	1.0
 * @author
 */
public class Insertr extends HttpServlet {
	public void doPost(HttpServletRequest req, HttpServletResponse res)
				throws ServletException, IOException {
		String Insert_Report;
    	Insert_Report = variablesm.FORWARD_URL + "InsertrReport.jsp";
		String lif1 = req.getParameter("rname");
		String lif2 = req.getParameter("rlocation").replace('\'', '`');
		String lif3 = req.getParameter("rnotes").replace('\'', '`');
		String lif4 = req.getParameter("family").replace('\'', '`');

				
		insertToDatabaseship(lif1,lif2,lif3,lif4);
		
		System.out.println(lif1 + " " + lif2 + " " + lif3 + " " + lif4);

		try {
			req.setAttribute("keyif1", lif1);
			req.setAttribute("keyif2", lif2);
			req.setAttribute("keyif3", lif3);
			req.setAttribute("keyif4", lif4);
				
			//forward to next page
			RequestDispatcher rd = getServletContext()
									   .getRequestDispatcher(Insert_Report);
			rd.forward(req, res);
		} catch (Exception f) {
			throw new ServletException("Unhandlable Error " + f.getMessage());
		}
	} //end of doPost

	
	private void insertToDatabaseship(String lif1, String lif2,  String lif3, String lif4) throws ServletException,
															 IOException {
			boolean proceed = false;

			if (lif1 != null){
				proceed = true;
			}
		
			Connection con = null;
			PreparedStatement ps = null;

			try {

				Class.forName(variablesm.JDBC_DRIVER);
				con = DriverManager.getConnection(variablesm.DB_URL, variablesm.DB_USER, variablesm.DB_PASSWORD);
			
			
				String sql;
						sql = "INSERT INTO rinfo (rname, rlocation, rnotes, family) VALUES (?,?,?,?)";
						ps = con.prepareStatement(sql);

				// inserting records

				if (proceed) {
					ps.setString(1, lif1);
					ps.setString(2, lif2);
					ps.setString(3, lif3);
					ps.setString(4, lif4);
					ps.executeUpdate();
				}
			} //end of try
			catch (SQLException e) {
				throw new ServletException(e);
			} //end of catch
			 catch (ClassNotFoundException e) {
				throw new ServletException(e);
			} //end of catch
			 finally {
				try {
					if (ps != null) {
						ps.close();
					}

					if (con != null) {
						con.close();
					}
				} //end of try
				catch (SQLException e) {
				}
			} //end of finally
		} //end of insert to database
} //

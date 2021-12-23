package M06;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.naming.InitialContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.sql.DataSource;

@WebServlet("/AccountAdd2")
public class AccountAddServlet2 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public AccountAddServlet2() {
        super();
       
    }

	
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String name = request.getParameter("account_name");
		String email = request.getParameter("email");
		String flg = request.getParameter("flg");

		try {
			InitialContext ic = new InitialContext();
			DataSource  ds = (DataSource)ic.lookup("java:/comp/env/jdbc/teamb");
			Connection con=ds.getConnection();
			PreparedStatement st =
					con.prepareStatement(
							"insert into account(account_name,email,account_flg) Values(?,?,?)"
						);
			ResultSet result = st.executeQuery();
		
			st.setString(1, name);
			st.setString(2, email);
			st.setString(3, flg);
			st.executeUpdate();

			request.getRequestDispatcher("/WEB-INF/jsp/Administrator.jsp").forward(request,response);



		} catch (SQLException e ) {
			
			e.printStackTrace();
			
		} catch (Exception e) {
			
			e.printStackTrace();
		}
	}
}

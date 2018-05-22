
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;



@WebServlet("/login")
public class login extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session=request.getSession();
		String username=request.getParameter("username");
		String password=request.getParameter("password");
		session.setAttribute("username", username);
		
		System.out.println(username+" "+password);
		
		
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");  
			Connection conn= DriverManager.getConnection(  
					"jdbc:oracle:thin:@localhost:1521:xe","manoj","manoj");  
			PreparedStatement stmt=conn.prepareStatement("select username,password from register where username=? and password=?"); 
			stmt.setString(1, username);
			stmt.setString(2, password);
			ResultSet rs=stmt.executeQuery();
			if(rs.next()) {
				
				if(username.equals("admin") && password.equals("admin"))
					response.sendRedirect("AdminService.jsp");
				else
				response.sendRedirect("home.jsp");
			}
			else {
				
				String error="incorect";
				session.setAttribute("error", error);
				response.sendRedirect("index.jsp");
			}
			conn.close();
		}
		catch(Exception e) {
			System.out.println(e.getMessage());
		}
	
	}

}

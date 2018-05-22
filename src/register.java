

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

@WebServlet("/register")
public class register extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String username=request.getParameter("username");
		String password=request.getParameter("password");
		String email=request.getParameter("email");
		String mobile=request.getParameter("mobile");
		HttpSession session=request.getSession();
		session.setAttribute("mobile", mobile);
		session.setAttribute("username", username);
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");  
			Connection conn= DriverManager.getConnection(  
					"jdbc:oracle:thin:@localhost:1521:xe","manoj","manoj");  
			PreparedStatement stmt=conn.prepareStatement("insert into register(username,password,email,mobile) values(?,?,?,?)"); 
			stmt.setString(1, username);
			stmt.setString(2, password);
			stmt.setString(3, email);
			stmt.setString(4, mobile);
			boolean flag =stmt.execute();
			if(!flag) {
				response.sendRedirect("index.jsp");
				response.getWriter().append("user inserted");
				
			}
			else {
				response.getWriter().append("user not inserted");
			}
			conn.close();
		}
		catch(Exception e) {
			System.out.println(e.getMessage());
		}
	}

}

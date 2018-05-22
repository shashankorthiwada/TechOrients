

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/CppExam")
public class CppExam extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String a=request.getParameter("question1");
		String b=request.getParameter("question2");
		String c=request.getParameter("question3");
		String d=request.getParameter("question4");
		String e=request.getParameter("question5");
		String f=request.getParameter("question6");
		String g=request.getParameter("question7");
		String h=request.getParameter("question8");
		String i=request.getParameter("question9");
		String j=request.getParameter("question10");
		String user=request.getParameter("user");
		int count=0;
		if(a.equalsIgnoreCase("By making an empty private new and new[] operators")) {
			count++;
		}
		if(b.equalsIgnoreCase("Function is small and we want to avoid function call overhead")) {
			count++;
		}
		if(c.equalsIgnoreCase("A postfix ++ has a dummy parameter")) {
			count++;
		}
		if(d.equalsIgnoreCase("function declaration")) {
			count++;
		}
		if(e.equalsIgnoreCase("A friend function may or may not be a member of another class")) {
			count++;
		}
		if(f.equalsIgnoreCase("In Derived")) {
			count++;
		}
		if(g.equalsIgnoreCase("295")) {
			count++;
		}
		if(h.equalsIgnoreCase("Compiler Error")) {
			count++;
		}
		if(i.equalsIgnoreCase("Called 20")) {
			count++;
		}
		if(j.equalsIgnoreCase("1")) {
			count++;
		}
		Connection con=null;
		int score=count;
		System.out.println(score);
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","manoj","manoj");
			String sql="update register set cpp=? where username=?";
			PreparedStatement stmt=con.prepareStatement(sql);
			stmt.setInt(1, score);
			stmt.setString(2, user);
			boolean flag = stmt.execute();
			if (!flag) {
				System.out.println("inserted");
				response.sendRedirect("Profile.jsp");
			} else {
				System.out.println("not inserted");
			}
			
			
			
		} catch (ClassNotFoundException | SQLException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
		
		
		
	}

	

}

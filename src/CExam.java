

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
import javax.servlet.http.HttpSession;
import javax.websocket.Session;

@WebServlet("/CExam")
public class CExam extends HttpServlet {

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
/*		HttpSession session=request.getSession();
		String user=(String)session.getAttribute("username");
		*/
		
		String user=request.getParameter("user");
		System.out.println("SAty "+user);
		int count=0;
		if(a.equalsIgnoreCase("void *")) {
			count++;
		}
		if(b.equalsIgnoreCase("x=1—x")) {
			count++;
		}
		if(c.equalsIgnoreCase("Prints all nodes of linked list in reverse order")) {
			count++;
		}
		if(d.equalsIgnoreCase("6 <--> 5 <--> 4 <--> 3 <--> 2 <--> 1")) {
			count++;
		}
		if(e.equalsIgnoreCase("Merge Sort")) {
			count++;
		}
		if(f.equalsIgnoreCase("All of the above")) {
			count++;
		}
		if(g.equalsIgnoreCase("2")) {
			count++;
		}
		if(h.equalsIgnoreCase("nullp nullq")) {
			count++;
		}
		if(i.equalsIgnoreCase("Tower of hanoi")) {
			count++;
		}
		if(j.equalsIgnoreCase("Passed by value")) {
			count++;
		}
		Connection con=null;
		int score=count;
		
		System.out.println("C:::::::"+score+" "+user);
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","manoj","manoj");
			String sql="update register set c_lang=? where username=?";
			PreparedStatement stmt=con.prepareStatement(sql);
			stmt.setInt(1, score);
			stmt.setString(2, user);
			boolean flag = stmt.execute();
			if (!flag) {
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

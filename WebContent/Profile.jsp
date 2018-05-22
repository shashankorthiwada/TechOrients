<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Profile</title>
<link href="style.css" rel="stylesheet" type="text/css">
<link href="https://fonts.googleapis.com/css?family=Raleway"
	rel="stylesheet">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
</head>
<body
	style="background-image: url(mainbgimage.jpg); background-repeat: no-repeat; background-size: cover;">
	<div id="nav1">
		<a href="index.jsp"><h1
				style="text-align: center; font-family: sans-serif; color: white; margin-left: 5%">
				<b>TechOrients</b>
			</h1></a>
		<ul>
			<% String usern=(String)session.getAttribute("username");%>
			<li style="color: white">Welcome <%=usern %></li>
			<li id="active"><a href="home.jsp">Home</a></li>
			<li><a href="index.jsp">Logout</a></li>


		</ul>

	</div>

	<div id="main-content" style="align: center">
		<br>


		<%@ page import="java.io.*"%>
		<%@ page import="java.sql.*"%>
		<%
String user=(String)session.getAttribute("username");
//String user="nitish";
System.out.println("HelloProfile:"+user);
String username="";
String Email="";
int Mobile=0;
int c_lang=0;
int Java=0;
int Cpp=0;
try {
	Class.forName("oracle.jdbc.driver.OracleDriver");  
	Connection conn= DriverManager.getConnection(  
			"jdbc:oracle:thin:@localhost:1521:xe","manoj","manoj");  
	PreparedStatement stmt=conn.prepareStatement("select username,email,mobile,c_lang,java,cpp from register where username=?");
	stmt.setString(1, user);
	ResultSet rs=stmt.executeQuery();
	response.setContentType("text/html");
	//System.out.println("Hello");
	//String str="<table style='border:1px solid white'>";
	PrintWriter pw=response.getWriter();
	while(rs.next()) {
		System.out.println(rs.getString(1)+" "+rs.getString(2)+" "+rs.getInt(3)+" "+rs.getInt(4)+" "+rs.getInt(5)+" "+rs.getInt(6));
	
	username=rs.getString(1);
	 Email=rs.getString(2);
Mobile=rs.getInt(3);
 c_lang=rs.getInt(4);
 Java=rs.getInt(5);
	Cpp=rs.getInt(6);
	
	
	}
	
	conn.close();
}
catch(Exception e) {
	System.out.println(e.getMessage());
}
%>

		<table
			style="border: 1px solid white; align: center; height: 40%; width: 50%; background-color: #464545">
			<tr>
				<td>UserName:</td>
				<td><%= username %></td>
			</tr>
			<tr>
				<td>Email:</td>
				<td><%= Email %></td>
			</tr>
			<tr>
				<td>Mobile:</td>
				<td><%= Mobile %></td>
			</tr>
			<tr>
				<td>C:</td>
				<td><%= c_lang %></td>
			</tr>
			<tr>
				<td>Java:</td>
				<td><%= Java %></td>
			</tr>
			<tr>
				<td>Cpp:</td>
				<td><%= Cpp %></td>
			</tr>

		</table>


	</div>







	<div id="footer">
		<h2 style="font-size: 15px">&copy;Copyrights: AllRights Reserved
			@Manoj</h2>
		<div id="nav2">
			<ul>
				<li><a href="#" style="color: aliceblue"><i
						class="fa fa-facebook" style="font-size: 24px"></i></a></li>
				<li><a href="#" style="color: aliceblue"><i
						class="fa fa-youtube" style="font-size: 24px"></i></a></li>
				<li><a href="#" style="color: aliceblue"><i
						class="fa fa-linkedin" style="font-size: 24px"></i></a></li>
				<li><a href="#" style="color: aliceblue"><i
						class="fa fa-google-plus" style="font-size: 24px"></i></a></li>


			</ul>


		</div>


	</div>




</body>
</html>
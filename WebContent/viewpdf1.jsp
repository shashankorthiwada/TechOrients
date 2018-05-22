<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<html>
<head>
<title>View PDF</title>
<link href="style.css" rel="stylesheet" type="text/css">
<link href="mycss.css" rel="stylesheet" type="text/css">
<link href="https://fonts.googleapis.com/css?family=Raleway"
	rel="stylesheet">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

</head>
<body id="service-body">
	<div id="nav1">
		<a href="index.jsp"><h1
				style="text-align: center; font-family: sans-serif; color: white; margin-left: 5%">
				<b>TechOrients</b>
			</h1></a>
		<ul>
			<li id="active"><a href="home.jsp">Home</a></li>
			<li><a href="service.jsp">service</a></li>
			<li><a href="contact.html">contact</a></li>
			<li><a href="About.html">about</a></li>

		</ul>

	</div>
	<br>
	<br>
	<br>
	<div id="third">
		<br>
		<br>
		<br>
		<br>
		<br>
		<br>

		<table width="400px"
			style="border: 1px solid #ff0000; background-color: f7f7f7"
			align="center">

			<tr style="font-weight: bold;">

				<td align="center" colspan=2
					style="border-bottom: 2px solid #000000;">Download PDFs</td>

			</tr>

			<tr style="font-weight: bold;">

				<td align="center" style="border-bottom: 2px solid #000000;">Id</td>

				<td align="center" style="border-bottom: 2px solid #000000;">File</td>

			</tr>

			<%@ page import="java.io.*,java.util.*,java.sql.*"%>

			<%

	 String connectionURL = "jdbc:mysql://localhost/demo";

	  String url=request.getParameter("WEB_URL");

	  String Content=new String("");

	  Statement stmt=null;

      Connection con=null;

    try

    {

	Class.forName("com.mysql.jdbc.Driver").newInstance();

	con=DriverManager.getConnection(connectionURL,"root","");

	stmt=con.createStatement();

	String qry = "select * from book_data";

	ResultSet rst= stmt.executeQuery(qry);

	while(rst.next())

	{

    %>

			<tr>

				<td align="center"><%=rst.getInt(1)%></td>

				<td align="center"><a
					href="file_download1.jsp?book_id=<%=rst.getInt(1)%>"><%=rst.getString(2)%></a>

				</td>

			</tr>

			<%

	}

    

    }

    catch(Exception e){

	e.printStackTrace();

    }

    %>

		</table>
	</div>
	</div>
	<br>

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
</body>
</html>
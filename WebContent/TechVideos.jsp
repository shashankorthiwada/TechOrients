<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Videos</title>
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
			<% String user=(String)session.getAttribute("username");%>
			<li>Welcome <%=user %></li>
			<li id="active"><a href="home.jsp">Home</a></li>
			<li><a href="index.jsp">Logout</a></li>


		</ul>

	</div>
	<div id="main-content">
		<br> <label
			style="background-color: darkgray; font-size: 35px; font-family: sans-serif">Welcome
			to TechOrients</label>


		<div id="service">
			<h3>
				<a href="CVideos.jsp">C_TUTORIALS</a>
			</h3>
		</div>

		<div id="service">
			<h3>
				<a href="CppVideos.jsp">CPP_TUTORIALS</a>
			</h3>
		</div>

		<div id="service">
			<h3>
				<a href="JavaVideos.jsp">JAVA_TUTORIALS</a>
			</h3>
		</div>
		<div id="service">
			<h3>
				<a href="ASPVideos.jsp">ASP_TUTORIALS</a>
			</h3>
		</div>

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
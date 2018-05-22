<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link href="style.css" rel="stylesheet" type="text/css">
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
			<% String user=(String)session.getAttribute("username");%>
			<li style="color: white">Welcome <%=user %></li>
			<li id="active"><a href="Profile.jsp">Profile</a></li>
			<li id="active"><a href="home.jsp">Home</a></li>
			<li><a href="service.jsp">service</a></li>
			<li><a href="contact.html">contact</a></li>
			<li><a href="About.html">about</a></li>

		</ul>

	</div>
	<br>
	<div id="third">
		<div id="third1">
			<a href="viewpdf1.jsp" style="color: inherit"> <img
				src="books.jpg"><br>
				<h3>Books</h3>
				<br>
				<p>We provide free books for registered users</p>
		</div>
		<div id="third1">
			<a href="TechVideos.jsp" style="color: inherit"> <img
				src="videos.jpg"><br>
				<h3>Videos</h3>
				<br>
				<p>We provide free videos for registered users</p>
			</a>
		</div>

		<div id="third1">
			<a href="Tests.html" style="color: inherit"> <img src="exam.jpg"><br>
				<h3>Tests</h3>
				<br>
				<p>We provide tests for registered users</p>
			</a>
		</div>

		<div id="third1">
			<a href="article.html" style="color: inherit"> <img
				src="images/article.jpg"><br>
				<h3>Articles</h3>
				<br>
				<p>We provide tests for registered users</p>
			</a>
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


	</div>

</body>
</html>
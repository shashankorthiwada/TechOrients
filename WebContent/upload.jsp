<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<html>
<head>
<title></title>
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
			<li><a href="AdminService.jsp">service</a></li>
			<li><a href="contact.html">contact</a></li>
			<li><a href="About.html">about</a></li>

		</ul>

	</div>
	<br>
	<br>
	<br>
	<div id="third">
		<center>
			<br>
			<br>
			<br>
			<br>
			<br>
			<h1>File Upload</h1>
			<form method="post" action="uploadServlet"
				enctype="multipart/form-data">
				<table border="0">
					<tr>
						<td>book_Name:</td>
						<td><input type="text" name="book_name" size="50" /></td>
					</tr>

					<tr>
						<td>File upload</td>
						<td><input type="file" name="book" size="50" /></td>
					</tr>
					<tr>
						<td colspan="2"><input type="submit" value="Save"></td>
					</tr>
				</table>
			</form>

		</center>

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
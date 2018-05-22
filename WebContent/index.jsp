<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link href="style.css" rel="stylesheet" type="text/css">
<link href="https://fonts.googleapis.com/css?family=Raleway"
	rel="stylesheet">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

<!--  <script type="text/javascript" src="http://ajax.googleapis.com/
ajax/libs/jquery/1.5/jquery.min.js"></script>-->
<script src="jquery.min.js"></script>
<script type="text/javascript">
$(document).ready(function()
{

$(".tab").click(function()
{
var X=$(this).attr('id');

if(X=='signup')
{

$("#login").removeClass('select');
$("#signup").addClass('select');
$("#loginbox").hide();
$("#signupbox").show();

}
else
{

$("#signup").removeClass('select');
$("#login").addClass('select');
    $("#signupbox").hide();
$("#loginbox").show();

}

});

});
</script>
<style>
#container {
	width: 450px
}

#tabbox {
	height: 40px
}

#panel {
	background-color: #a9a9a961;
	height: 400px;
}

.tab {
	background: #dedede;
	display: block;
	height: 40px;
	line-height: 40px;
	text-align: center;
	width: 80px;
	float: right;
	font-weight: bold;
	-webkit-border-top-left-radius: 4px;
	-webkit-border-top-right-radius: 4px;
	-moz-border-radius: 4px 4px 0px 0px;
}

a {
	color: #000;
	margin: 0;
	padding: 0;
	text-decoration: none;
}

.signup {
	margin-left: 8px;
}

.select {
	background-color: #a9a9a961;
}

#loginbox {
	margin-left: 15%;
	min-height: 200px;
	padding: 10px;
}

#signupbox {
	margin-bottom: 10px;
	min-height:;
	padding: 20px;
	display: none;
}
</style>

</head>
<body id="body">
	<div id="loginleft">
		<h1 style="color: white; margin-left: 10%">
			<label style="background-color: black; font-size: 60px"><b>TechOrients</b></label>
		</h1>
		<p>
			<b>"</b><b>The function of education is to teach<br> one to
				think intensively and to think critically.<br> Intelligence
				plus character - that is the goal of true education.
			</b><b>"</b><br>
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;-Martin
			Luther King Jr
		</p>

	</div>

	<div id="loginright">

		<div id="container" style="">
			<div id="tabbox" style="">
				<a href="#" id="signup" class="tab signup">signup</a> <a href="#"
					id="login" class="tab select">Login</a>
			</div>
			<div id="panel" style="">
				<br> <br>
				<div id="loginbox">
					<form action="login" method="post">



						<table
							style="text-align: center; border: 2px solid; border-color: #a9a9a961; color: white; line-height: 40px; padding: 20px;">
							<th style="font-family: sans-serif; font-size: 25px">Login</th>


							<tr>
								<td><input type="text" placeholder="UserName"
									name="username" required="true"
									style="width: 200px; height: 30px; border-radius: 5px;" /></td>
							</tr>
							<tr>
								<td><input type="password" placeholder="Password"
									name="password" required="true"
									style="width: 200px; height: 30px; border-radius: 5px" /></td>
							</tr>
							<!--  <%String str="Hello"; String str1=(String)session.getAttribute("error"); str=str1;%>
        <tr><td><%=str %></td></tr>-->
							<tr>
								<td style="text-align: left;">


									<button type="submit"
										style="margin-left: 35%; border-radius: 5px; height: 25px; color: white; background-color: darkgrey">Login</button>
								</td>
							</tr>

						</table>


					</form>

				</div>
				<div id="signupbox">
					<form action="register" method="post">
						<table
							style="text-align: center; border: 2px solid; border-color: #a9a9a961; color: white; line-height: 15px; padding: 20px; margin-left: 15%">
							<th style="font-family: sans-serif; font-size: 25px">Register</th>
							<tr>
								<td><input type="text" placeholder="UserName"
									name="username" required="true"
									style="width: 200px; height: 30px; border-radius: 5px" /></td>
							</tr>

							<tr>
								<td><input type="email" placeholder="Email" name="email"
									required="true"
									style="width: 200px; height: 30px; border-radius: 5px" /></td>
							</tr>
							<tr>
								<td><input type="password" placeholder="Password"
									name="password" required="true"
									style="width: 200px; height: 30px; border-radius: 5px" /></td>
							</tr>
							<tr>
								<td><input type="password" placeholder="Confirm Password"
									required="true"
									style="width: 200px; height: 30px; border-radius: 5px" /></td>
							</tr>
							<tr>
								<td><input type="mobile" placeholder="Mobile" name="mobile"
									required="true"
									style="width: 200px; height: 30px; border-radius: 5px" /></td>
							</tr>
							<tr>
								<td><label>Hello </label></td>
							</tr>
							<tr>
								<td style="text-align: left;"><button type="submit"
										style="margin-left: 35%; border-radius: 5px; height: 25px; color: white; background-color: darkgrey" />Register
									</button></td>
							</tr>
						</table>
					</form>
				</div>
			</div>
		</div>

	</div>

	<div id="footer" style="float: right; margin-top: 5%">
		<h2 style="font-size: 15px">&copy;Copyrights: AllRights Reserved
			@TechOrients</h2>
		<div id="nav2">
			<ul>
				<li><a href="https://www.facebook.com/abhyu.chirumalla"
					style="color: aliceblue"><i class="fa fa-facebook"
						style="font-size: 24px"></i></a></li>
				<li><a href="https://www.youtube.com/" style="color: aliceblue"><i
						class="fa fa-youtube" style="font-size: 24px"></i></a></li>
				<li><a
					href="https://www.linkedin.com/in/gosula-satya-manoj-05b0a9115/"
					style="color: aliceblue"><i class="fa fa-linkedin"
						style="font-size: 24px"></i></a></li>
				<li><a href="https://plus.google.com/u/0/112513965709722640619"
					style="color: aliceblue"><i class="fa fa-google-plus"
						style="font-size: 24px"></i></a></li>


			</ul>


		</div>


	</div>

</body>

</html>

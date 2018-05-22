<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Java</title>
<link href="style.css" rel="stylesheet" type="text/css">
<link href="https://fonts.googleapis.com/css?family=Raleway"
	rel="stylesheet">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
</head>
<body style="background-color: gray">
	<div id="nav1">
		<a href="index.jsp"><h1
				style="text-align: center; font-family: sans-serif; color: white; margin-left: 5%">
				<b>TechOrients</b>
			</h1></a>
		<ul>
			<li id="active"><a href="home.jsp">Home</a></li>
			<li><a href="index.jsp">Logout</a></li>


		</ul>

	</div>
	<div>
		<br>
		<h1 style="color: white; text-align: center">Java Basics</h1>
		<form action="JavaExam" method="post" name="quiz" id="quiz">
			<input type="text" name="user">
			<p>1. What is the range of short data type in Java?</p>
			<input type="radio" id="mc" name="question1" value="-128 to 127">-128
			to 127<br> <input type="radio" id="mc" name="question1"
				value="-32768 to 32767">-32768 to 32767<br> <input
				type="radio" id="mc" name="question1"
				value="-2147483648 to 2147483647">-2147483648 to 2147483647<br>
			<input type="radio" id="mc" name="question1"
				value=" None of the mentioned"> None of the mentioned<br>

			<p>2.Which of these literals can be contained in float data type
				variable?</p>
			<input type="radio" id="mc" name="question2" value=" -1.7e+308">
			-1.7e+308<br> <input type="radio" id="mc" name="question2"
				value="-3.4e+038">-3.4e+038<br> <input type="radio"
				id="mc" name="question2" value="+1.7e+308">+1.7e+308<br>
			<input type="radio" id="mc" name="question2" value="-3.4e+050">-3.4e+050<br>

			<p>3.Which of these coding types is used for data type characters
				in Java?</p>
			<input type="radio" id="mc" name="question3" value=" ASCII">
			ASCII<br> <input type="radio" id="mc" name="question3"
				value="ISO-LATIN-1">ISO-LATIN-1<br> <input type="radio"
				id="mc" name="question3" value="UNICODE">UNICODE<br> <input
				type="radio" id="mc" name="question3" value="None of the mentioned">None
			of the mentioned<br>

			<p>4.Which of these can be returned by the operator & ?</p>
			<input type="radio" id="mc" name="question4" value="Integer">Integer<br>
			<input type="radio" id="mc" name="question4" value="Boolean">Boolean<br>
			<input type="radio" id="mc" name="question4" value="Character">Character<br>
			<input type="radio" id="mc" name="question4"
				value="Integer or Boolean">Integer or Boolean<br>


			<p>5.Literals in java must be appended by which of these?</p>
			<input type="radio" id="mc" name="question5" value=" L"> L<br>
			<input type="radio" id="mc" name="question5" value=" l"> l<br>
			<input type="radio" id="mc" name="question5" value="D">D<br>
			<input type="radio" id="mc" name="question5" value="L and I">L
			and I<br>

			<p>6.Which of these can not be used for a variable name in Java?</p>
			<input type="radio" id="mc" name="question6" value="identifier">identifier<br>
			<input type="radio" id="mc" name="question6" value="keyword">keyword<br>
			<input type="radio" id="mc" name="question6"
				value=" identifier & keyword"> identifier & keyword<br>
			<input type="radio" id="mc" name="question6"
				value="None of the mentioned">None of the mentioned<br>

			<p>7.What is the prototype of the default constructor of this
				class? public class prototype { }</p>
			<input type="radio" id="mc" name="question7" value="prototype( )">prototype(
			)<br> <input type="radio" id="mc" name="question7"
				value="prototype(void)">prototype(void)<br> <input
				type="radio" id="mc" name="question7" value="public prototype(void)">public
			prototype(void)<br> <input type="radio" id="mc" name="question7"
				value="public prototype( )">public prototype( )<br>

			<p>8.What is Truncation in Java?</p>
			<input type="radio" id="mc" name="question8"
				value="Floating-point value assigned to an integer type.">Floating-point
			value assigned to an integer type.<br> <input type="radio"
				id="mc" name="question8"
				value=" Integer value assigned to floating type."> Integer
			value assigned to floating type.<br> <input type="radio" id="mc"
				name="question8"
				value=" Floating-point value assigned to an Floating type.">
			Floating-point value assigned to an Floating type.<br> <input
				type="radio" id="mc" name="question8"
				value="Integer value assigned to floating type.">Integer
			value assigned to floating type.<br>

			<p>9.Decrement operator decreases value of variable by what
				number?</p>
			<input type="radio" id="mc" name="question9" value="1">1<br>
			<input type="radio" id="mc" name="question9" value="2">2<br>
			<input type="radio" id="mc" name="question9" value="3">3<br>
			<input type="radio" id="mc" name="question9" value="4">4<br>

			<p>10.Which of these statements are incorrect?</p>
			<input type="radio" id="mc" name="question10"
				value="Assignment operators are more efficiently implemented by Java run-time system than their equivalent long forms.">Assignment
			operators are more efficiently implemented by Java run-time system
			than their equivalent long forms.<br> <input type="radio"
				id="mc" name="question10"
				value="Assignment operators run faster than their equivalent long forms.">Assignment
			operators run faster than their equivalent long forms.<br> <input
				type="radio" id="mc" name="question10"
				value="Assignment operators can be used only with numeric and character data type.">Assignment
			operators can be used only with numeric and character data type.<br>
			<input type="radio" id="mc" name="question10" value="None">None<br>

			<!-- <input type="text" name="answer"> -->
			<button type="submit" id="button" onclick="check()">Submit</button>
			<input type="text" id="demo" name="answer" hidden="true"> <input
				type="text" id="java_answer" name="value" value="java" hidden="true">



		</form>

	</div>
</body>

</html>
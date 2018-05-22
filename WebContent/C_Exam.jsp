<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>C Exam</title>
<link href="style.css" rel="stylesheet" type="text/css">
<link href="https://fonts.googleapis.com/css?family=Raleway"
	rel="stylesheet">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
</head>
<body style="background-color: gray">
	<div id="nav1">
		<a href="index.html"><h1
				style="text-align: center; font-family: sans-serif; color: white; margin-left: 5%">
				<b>TechOrients</b>
			</h1></a>
		<ul>
			<li id="active"><a href="home.jsp">Home</a></li>
			<li><a href="index.jsp">Logout</a></li>


		</ul>

	</div>
	<%//String user=(String)session.getAttribute("username"); %>
	<div>
		<br>
		<h1 style="color: white; text-align: center">C EXAM</h1>
		<form action="CExam" method="post" name="quiz" id="quiz">
			Enter your name:<input type="text" name="user"> <br> <br>
			<p>1.What is the return type of malloc() or calloc()</p>
			<input type="radio" id="mc" name="question1" value="void *">void
			*<br> <input type="radio" id="mc" name="question1"
				value="Pointer of allocated memory type">Pointer of
			allocated memory type<br> <input type="radio" id="mc"
				name="question1" value="void **">void **<br> <input
				type="radio" id="mc" name="question1" value="int *">int *<br>

			<p>2.Let x be an integer which can take a value of 0 or 1. The
				statement if(x = =0) x = 1; else x = 0; is equivalent to which one
				of the following?</p>
			<input type="radio" id="mc" name="question2" value="x=1+x">x=1+x<br>
			<input type="radio" id="mc" name="question2" value="x=1â€”x">x=1â€”x<br>
			<input type="radio" id="mc" name="question2" value="x=xâ€”1">x=xâ€”1<br>
			<input type="radio" id="mc" name="question2" value="x=1%x">x=1%x<br>

			<p>3.void fun1(struct node* head) { if(head == NULL) return;

				fun1(head->next); printf("%d ", head->data); }</p>
			<input type="radio" id="mc" name="question3"
				value="Prints all nodes of linked lists">Prints all nodes of
			linked lists<br> <input type="radio" id="mc" name="question3"
				value="Prints all nodes of linked list in reverse order">Prints
			all nodes of linked list in reverse order<br> <input
				type="radio" id="mc" name="question3"
				value="Prints alternate nodes of Linked List">Prints
			alternate nodes of Linked List<br> <input type="radio" id="mc"
				name="question3" value="Prints alternate nodes in reverse order">Prints
			alternate nodes in reverse order<br>

			<p>4.void fun(struct node **head_ref) { struct node *temp = NULL;
				struct node *current = *head_ref; while (current != NULL) { temp =
				current->prev; current->prev = current->next; current->next = temp;
				current = current->prev; } if(temp != NULL ) *head_ref = temp->prev;
				}</p>
			<input type="radio" id="mc" name="question4"
				value="2 <--> 1 <--> 4 <--> 3 <--> 6 <-->5">2 <--> 1 <--> 4
			<--> 3 <--> 6 <-->5<br> <input type="radio" id="mc"
				name="question4" value="5 <--> 4 <--> 3 <--> 2 <--> 1 <-->6">5
			<--> 4 <--> 3 <--> 2 <--> 1 <-->6<br> <input type="radio"
				id="mc" name="question4"
				value="6 <--> 5 <--> 4 <--> 3 <--> 2 <--> 1">6 <--> 5 <--> 4
			<--> 3 <--> 2 <--> 1<br> <input type="radio" id="mc"
				name="question4" value=" 6 <--> 5 <--> 4 <--> 3 <--> 1 <--> 2">6
			<--> 5 <--> 4 <--> 3 <--> 1 <--> 2<br>


			<p>5.Which of the following sorting algorithms can be used to
				sort a random linked list with minimum time complexity?</p>
			<input type="radio" id="mc" name="question5" value="Insertion Sort">Insertion
			Sort<br> <input type="radio" id="mc" name="question5"
				value="Quick Sort">Quick Sort<br> <input type="radio"
				id="mc" name="question5" value="Heap Sort">Heap Sort<br>
			<input type="radio" id="mc" name="question5" value="Merge Sort">Merge
			Sort<br>

			<p>6.Which one of the following is an application of Stack Data
				Structure?</p>

			<input type="radio" id="mc" name="question6"
				value="Managing function calls">Managing function calls<br>
			<input type="radio" id="mc" name="question6"
				value="The stock span problem">The stock span problem<br>
			<input type="radio" id="mc" name="question6"
				value="Arithmetic expression evaluation">Arithmetic
			expression evaluation<br> <input type="radio" id="mc"
				name="question6" value="All of the above">All of the above<br>

			<p>7.How many queues are needed to implement a stack. Consider
				the situation where no other data structure like arrays, linked list
				is available to you.</p>
			<input type="radio" id="mc" name="question7" value="1">1<br>
			<input type="radio" id="mc" name="question7" value="2">2<br>
			<input type="radio" id="mc" name="question7" value="3">3<br>
			<input type="radio" id="mc" name="question7" value="4">4<br>

			<p>
				8.Output of following code? #include
				<stdio.h> int main() { char *p = NULL; char *q = 0; if (p)

				printf(" p "); else printf("nullp"); if (q) printf("q\n"); else

				printf(" nullq\n"); }
			</p>
			<input type="radio" id="mc" name="question8" value="nullp nullq">nullp
			nullq<br> <input type="radio" id="mc" name="question8"
				value="Depends on the compiler">Depends on the compiler<br>
			<input type="radio" id="mc" name="question8"
				value="x nullq where x can be p or nullp depending on the value of NULL">x
			nullq where x can be p or nullp depending on the value of NULL<br>
			<input type="radio" id="mc" name="question8" value="p q">p q<br>

			<p>9.Which of the following is not a backtracking algorithm?</p>
			<input type="radio" id="mc" name="question9"
				value="Knight tour problem">Knight tour problem<br> <input
				type="radio" id="mc" name="question9" value="N queen problem">N
			queen problem<br> <input type="radio" id="mc" name="question9"
				value="Tower of hanoi">Tower of hanoi<br> <input
				type="radio" id="mc" name="question9" value="M coloring problem">M
			coloring problem<br>


			<p>10.In C, parameters are always</p>

			<input type="radio" id="mc" name="question10" value="Passed by value">Passed
			by value<br> <input type="radio" id="mc" name="question10"
				value="Passed by reference">Passed by reference<br> <input
				type="radio" id="mc" name="question10"
				value="Non-pointer variables are passed by value and pointers are passed by reference">Non-pointer
			variables are passed by value and pointers are passed by reference<br>
			<input type="radio" id="mc" name="question10"
				value="Passed by value result">Passed by value result<br>

			<!-- <input type="text" name="answer"> -->
			<button type="submit" id="button" onclick="check()">Submit</button>
			<input type="text" id="demo" name="answer" hidden="true"> <input
				type="text" id="ex" name="value" value="c" hidden="true">



		</form>



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
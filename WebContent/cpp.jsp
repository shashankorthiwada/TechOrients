<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>C Plus Plus</title>
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
	<div>
		<br>
		<h1 style="color: white; text-align: center">Cplus Plus Basics</h1>
		<form action="CppExam" method="post" name="quiz" id="quiz">
			Enter Name:<input type="text" name="user">
			<p>1. How can we restrict dynamic allocation of objects of a
				class using new?</p>
			<input type="radio" id="mc" name="question1"
				value="By overloading new operator">By overloading new
			operator<br> <input type="radio" id="mc" name="question1"
				value="By making an empty private new operator">By making an
			empty private new operator<br> <input type="radio" id="mc"
				name="question1"
				value="By making an empty private new and new[] operators">By
			making an empty private new and new[] operators<br> <input
				type="radio" id="mc" name="question1"
				value="By overloading new operator and new[] operators">By
			overloading new operator and new[] operators<br>

			<p>2.Inline functions are useful when?</p>
			<input type="radio" id="mc" name="question2"
				value="Function is large with many nested loops">Function is
			large with many nested loops<br> <input type="radio" id="mc"
				name="question2" value="Function has many static variables">Function
			has many static variables<br> <input type="radio" id="mc"
				name="question2"
				value="Function is small and we want to avoid function call overhead">Function
			is small and we want to avoid function call overhead<br> <input
				type="radio" id="mc" name="question2" value="None of the above">None
			of the above<br>

			<p>3.How does C++ compiler differs between overloaded postfix and
				prefix operators?</p>
			<input type="radio" id="mc" name="question3"
				value="C++ doesn't allow both operators to be overlaoded in a class">
			C++ doesn't allow both operators to be overlaoded in a class<br>
			<input type="radio" id="mc" name="question3"
				value="A postfix ++ has a dummy parameter">A postfix ++ has
			a dummy parameter<br> <input type="radio" id="mc"
				name="question3" value="A prefix ++ has a dummy parameter">A
			prefix ++ has a dummy parameter<br> <input type="radio" id="mc"
				name="question3"
				value="By making prefix ++ as a global function and postfix as a member function.">By
			making prefix ++ as a global function and postfix as a member
			function.<br>

			<p>4.Where does keyword â€˜friendâ€™ should be placed?</p>
			<input type="radio" id="mc" name="question4"
				value="function declaration">function declaration<br> <input
				type="radio" id="mc" name="question4" value="function definition">function
			definition<br> <input type="radio" id="mc" name="question4"
				value="main function">main function<br> <input
				type="radio" id="mc" name="question4" value=" none of the mentioned">
			none of the mentioned<br>


			<p>5.Pick out the correct statement?</p>
			<input type="radio" id="mc" name="question5"
				value="A friend function may be a member of another class">A
			friend function may be a member of another class<br> <input
				type="radio" id="mc" name="question5"
				value="A friend function may not be a member of another class">A
			friend function may not be a member of another class<br> <input
				type="radio" id="mc" name="question5"
				value="A friend function may or may not be a member of another class">A
			friend function may or may not be a member of another class<br>
			<input type="radio" id="mc" name="question5"
				value="None of the mentioned">None of the mentioned<br>

			<p>
				6.Predict output of the following program #include
				<iostream> using namespace std; class Base { public:
				virtual void show() = 0; }; class Derived: public Base { public:
				void show() { cout<<"In Derived \n"; } }; int main(void) { Derived
				d; Base &br = d; br.show(); return 0; } 
			</p>
			<input type="radio" id="mc" name="question6"
				value="Compiler Error in line " Base &br=d;">ICompiler Error
			in line "Base &br = d;<br> <input type="radio" id="mc"
				name="question6" value="Empty Output">Empty Output<br>
			<input type="radio" id="mc" name="question6" value="In Derived">In
			Derived<br>

			<p>
				7.predict output of following code #include
				<iostream> using namespace std; class sample { private:

				int a, b; public: void test() { a = 100; b = 200; } friend int
				compute(sample e1); }; int compute(sample e1) { return int(e1.a +
				e1.b) - 5; } int main() { sample e; e.test(); cout << compute(e);

				return 0; } 
			</p>
			<input type="radio" id="mc" name="question7" value="100">100<br>
			<input type="radio" id="mc" name="question7" value="200">200<br>
			<input type="radio" id="mc" name="question7" value="300">300<br>
			<input type="radio" id="mc" name="question7" value="295">295<br>

			<p>
				8.Output of following code? #include
				<iostream> using namespace std; template <int i>
				void fun() { i = 20; cout << i; } int main() { fun<10>(); return 0;
				}
			</p>
			<input type="radio" id="mc" name="question8" value="10">10<br>
			<input type="radio" id="mc" name="question8" value=" 20">20<br>
			<input type="radio" id="mc" name="question8" value="Compiler Error">Compiler
			Error<br>

			<p>
				9.output of following code? #include
				<iostream> using namespace std; template <class T>
				T max (T &a, T &b) { return (a > b)? a : b; } template <> int max <int>
				(int &a, int &b) { cout << "Called "; return (a > b)? a : b; } int
				main () { int a = 10, b = 20; cout << max <int> (a, b); }
			</p>
			<input type="radio" id="mc" name="question9" value="20">20<br>
			<input type="radio" id="mc" name="question9" value="Called 20">Called
			20<br> <input type="radio" id="mc" name="question9"
				value="Compiler Error">Compiler Error<br>


			<p>
				10.output of following code? #include
				<iostream> using namespace std; int x = 1; void fun() {
				int x = 2; { int x = 3; cout << ::x << endl; } } int main() { fun();
				return 0; } 
			</p>
			<input type="radio" id="mc" name="question10" value="1">1<br>
			<input type="radio" id="mc" name="question10" value="2">2<br>
			<input type="radio" id="mc" name="question10" value="3">3<br>
			<input type="radio" id="mc" name="question10" value="0">0<br>

			<!-- <input type="text" name="answer"> -->
			<button type="submit" id="button" onclick="check()">Submit</button>
			<input type="text" id="demo" name="answer" hidden="true"> <input
				type="text" id="ex" name="value" value="cpp" hidden="true">




		</form>
	</div>
</body>
</html>
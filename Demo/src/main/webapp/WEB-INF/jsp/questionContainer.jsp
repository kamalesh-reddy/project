<%-- <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    <%@taglib uri = "http://www.springframework.org/tags/form" prefix = "form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Test is On</title>


<script>



</script>

</head>
<body>
<form method="get" action="testcontinuation" name="myform" >
Question<br>
${question.getQuestionDescription()}<br>
<input type = "radio" name="opt" value="${question.getQuestionOptiona()}">${question.getQuestionOptiona()}<br>
<input type = "radio" name="opt" value="${question.getQuestionOptionb()}">${question.getQuestionOptionb()}<br>
<input type = "radio" name="opt" value="${question.getQuestionOptionc()}">${question.getQuestionOptionc()}<br>
<input type = "radio" name="opt" value="${question.getQuestionOptiond()}">${question.getQuestionOptiond()}<br>


<input type="submit" value="Submit">
</form> 








</body>
</html> --%>









<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    <%@taglib uri = "http://www.springframework.org/tags/form" prefix = "form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
  
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
  
		<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1.0"/>
  
		<title>Online Exam System</title>


  
		<!-- CSS  -->
  
		<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
  
		<link href="resources/css/materialize.css" type="text/css" rel="stylesheet" media="screen,projection"/>
  
		<link href="resources/css/style.css" type="text/css" rel="stylesheet" media="screen,projection"/>
		 <link href="resources/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
	

    <!-- Custom styles for this template -->
    <link href="resources/css/half-slider.css" rel="stylesheet">




<meta charset="UTF-8">
<style>
div#test{ border:#000 1px solid; padding:10px 40px 40px 40px; }
</style>


<!-- Display the countdown timer in an element -->
<!--<p id="demo" align="right"></p>-->

<script>
// Set the date we're counting down to
var countDownDate = new Date("Jan 5, 2018 18:37:25").getTime();

// Update the count down every 1 second
var x = setInterval(function() {

  // Get todays date and time
  var now = new Date().getTime();

  // Find the distance between now an the count down date
  var distance = countDownDate - now;

  // Time calculations for days, hours, minutes and seconds
  var days = Math.floor(distance / (1000 * 60 * 60 * 24));
  var hours = Math.floor((distance % (1000 * 60 * 60 * 24)) / (1000 * 60 * 60));
  var minutes = Math.floor((distance % (1000 * 60 * 60)) / (1000 * 60));
  var seconds = Math.floor((distance % (1000 * 60)) / 1000);

  // Display the result in the element with id="demo"
  document.getElementById("demo").innerHTML = hours + ":"
  + minutes + ":" + seconds ;

  // If the count down is finished, write some text 
  if (distance < 0) {
    clearInterval(x);
    document.getElementById("demo").innerHTML = "EXPIRED";
  }
}, 1000);
</script>



<script>
var pos = 0, test, test_status, question, choice, choices, chA, chB, chC, correct = 0;
var questions = [
    [ "What is 10 + 4?", "12", "14", "16", "B" ],
	[ "What is 20 - 9?", "7", "13", "11", "C" ],
	[ "What is 7 x 3?", "21", "24", "25", "A" ],
	[ "What is 8 / 2?", "10", "2", "4", "C" ]
];
function _(x){
	return document.getElementById(x);
}
function renderQuestion(){
	test = _("test");
	if(pos >= questions.length){
		test.innerHTML = "<h2>You got "+correct+" of "+questions.length+" questions correct</h2>";
		_("test_status").innerHTML = "Test Completed";
		pos = 0;
		correct = 0;
		return false;
	}
	_("test_status").innerHTML = "Question "+(pos+1)+" of "+questions.length;
	question = questions[pos][0];
	 chA = questions[pos][1];
	chB = questions[pos][2];
	chC = questions[pos][3];

	
	
	
	test.innerHTML = "<h3>"+question+"</h3>";
	test.innerHTML += "<input type='radio' name='choices' value='A'> "+chA+"<br>";
	test.innerHTML += "<input type='radio' name='choices' value='B'> "+chB+"<br>";
	test.innerHTML += "<input type='radio' name='choices' value='C'> "+chC+"<br><br>";
	test.innerHTML += "<button onclick='checkAnswer()'>Submit Answer</button>";
}
function checkAnswer(){
	choices = document.getElementsByName("choices");
	for(var i=0; i<choices.length; i++){
		if(choices[i].checked){
			choice = choices[i].value;
		}
	}
	if(choice == questions[pos][4]){
		correct++;
	}
	pos++;
	renderQuestion();
}
window.addEventListener("load", renderQuestion, false);
</script>
</head>
<body>
<!-- Navigation -->
    <nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top">
      <div class="container" >
        <a class="navbar-brand" href="#">Online Exam Portal</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarResponsive">
          <ul class="navbar-nav pull-right" align="right">
            <li class="nav-item active">
              <a class="nav-link" href="loggedin.jsp">Finish
                <span class="sr-only">(current)</span>
              </a>
            </li>
            
           
       <!--     <li class="nav-item">
              <a class="nav-link" href="#">Contact</a> -->
            </li>
          </ul>
        </div>
      </div>
    </nav>



		<div class="navbar-fixed">
			<nav class="black" role="navigation">
    
				<div class="nav-wrapper container">
                                    
					<a target="_top"><h5 class="center-align white-text">ONLINE EXAMINATION SYSTEM</h5></a>    
				</div>
  
			</nav>
  
		</div>
		<nav>
    			
  		</nav>





<!-- <p id="demo" align="right"></p>
<h2 id="test_status"></h2>
<div id="test"> -->
	
<form method="get" action="testcontinuation" name="myform" >
&nbsp&nbsp Question<br>
&nbsp&nbsp ${question.getQuestionDescription()}<br>
&nbsp&nbsp <input type = "radio" name="opt" value="${question.getQuestionOptiona()}">&nbsp&nbsp${question.getQuestionOptiona()}<br>
&nbsp&nbsp <input type = "radio" name="opt" value="${question.getQuestionOptionb()}">&nbsp&nbsp${question.getQuestionOptionb()}<br>
&nbsp&nbsp <input type = "radio" name="opt" value="${question.getQuestionOptionc()} ">&nbsp&nbsp${question.getQuestionOptionc()}<br>
&nbsp&nbsp&nbsp <input type = "radio" name="opt" value="${question.getQuestionOptiond()} ">&nbsp&nbsp${question.getQuestionOptiond()}<br>


<input type="submit" value="Submit">
</form>				


</div>
</body>
</html>
<%--  <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h1>Course List</h1>
welcome ${user}<br>
<form method="GET" action="enrollcoursesuccess" >
 
 				Select a Course for which ${user} want to enroll:
 			
                <br/><br/>
         <c:if test="${not empty lists}">

		<select name="courseName">
			 <option value="selected" >select course</option>
			<c:forEach var="listValue" items="${lists}">
    				<option>${listValue.courseName}</option>
    				
			</c:forEach> 
			
		</select>
		
	</c:if>
            
				
                
				<div>
				<input type="submit" value="Submit"/>
				</div>
				
		</form>




${msg}



<br><br>

<a href="loginvalidator">Back</a>

</body>
</html>
 --%>


<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en" ng-app="app">
  <head>
           <script src="resources/angular.min.js"></script>
		   
		   
		   <style>
.footer {
   position: fixed;
   left: 0;
   bottom: 0;
   width: 100%;
   background-color: #424344;
   color: white;
   text-align: center;
}
</style>
		   
		   

 <script>
  
  var app = angular.module('app', []);
app.directive('validPasswordC', function() {
  return {
    require: 'ngModel',
    scope: {

      reference: '=validPasswordC'

    },
    link: function(scope, elm, attrs, ctrl) {
      ctrl.$parsers.unshift(function(viewValue, $scope) {

        var noMatch = viewValue != scope.reference
        ctrl.$setValidity('noMatch', !noMatch);
        return (noMatch)?noMatch:!noMatch;
      });

      scope.$watch("reference", function(value) {;
        ctrl.$setValidity('noMatch', value === ctrl.$viewValue);

      });
    }
  }
});
app.controller('homeCtrl', function($scope) {

});
  </script>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Online Exam Portal</title>

    <!-- Bootstrap core CSS -->
    <link href="resources/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
	 <link href="resources/css/bootstrap.min.css" rel="stylesheet">
	<link href="resources/css/responsive-slider.css" rel="stylesheet">
	<link rel="stylesheet" href="resources/css/animate.css">
	<link rel="stylesheet" href="resources/css/font-awesome.min.css">
	<link href="resources/css/style.css" rel="stylesheet">	

    <!-- Custom styles for this template -->
    <link href="resources/css/half-slider.css" rel="stylesheet">

  </head>

  <body>

    <!-- Navigation -->
    <nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top">
      <div class="container" >
        <a class="navbar-brand" href="/Demo">Online Exam Portal</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarResponsive">
          <ul class="navbar-nav pull-right" align="right">
            <li class="nav-item active">
             <%--  <font color="white"><p>${msg}</p></font> --%>
                <span class="sr-only">(current)</span>
              </a>
            </li>
            <li class="nav-item active">
              <a class="nav-link" href="#">${name}
                <span class="sr-only">(current)</span>
              </a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="logout">Logout</a>
            </li>
       <!--     <li class="nav-item">
              <a class="nav-link" href="#">Contact</a> -->
            </li>
          </ul>
        </div>
      </div>
    </nav>

    <header>
      <div class="container" >
            <form class="form-horizontal" role="form" name="myForm" method="GET" action="enrollcoursesuccess">
			
                <br><h2><center>COURSE REGISTRATION</center></h2><br><br>
				
				
				
				
					
				<div class="input-group">
				<p><h3>Enroll for a course you wish to take</h3></p><br>
				
				<!-- 
					<select id="" class="form-control" width=100% height=100%>
				<option >java </option>
				<option>php </option>
				<option>jquery </option>
				<option>dbms </option>
				</select> -->
				
				
				         <c:if test="${not empty lists}">

		<select class="form-control" name="courseName" width=100% height=100%>
			 <option value="selected" >select course</option>
			<c:forEach var="listValue" items="${lists}">
    				<option>${listValue.courseName}</option>
    				
			</c:forEach> 
			
		</select>
		
	</c:if>
				
				
	
				
					
				</div>
		<br>
				<!-- <a href="loggedin.jsp"> --><center><input type="submit" id="submit"  class="" value="Submit" background-color="blue">&nbsp<input type="reset" id="reset"  class="" value="Reset" background-color="blue">
</center>	
				  
		


</form>



${msg}
				
				
		<br><br>
		<center><a class="nav-link" href="loginsuccess">Back
                <span class="sr-only">(current)</span>
              </a></center>	
			      
        </div>
    </header>

    <!-- Page Content -->
    <section class="py-5">
      <div class="container" align="center">
        <h1></h1>
        <p></p>
      </div>
    </section>

    <!-- Footer -->
    <footer class="py-5 " align="bottom">
      <div class="container" bg-dark>
	  <div class="footer">
        <p class="m-0 text-center text-white">Copyright &copy; Online Exam Portal 2017</p>
      </div>
	  </div>
      <!-- /.container -->
    </footer>

    <!-- Bootstrap core JavaScript -->
    <script src="resources/vendor/jquery/jquery.min.js"></script>
    <script src="resources/vendor/popper/popper.min.js"></script>
    <script src="resources/vendor/bootstrap/js/bootstrap.min.js"></script>

  </body>

</html>








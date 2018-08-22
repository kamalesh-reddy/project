<%-- <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="../css/upload.css">





</head>
<body>

welcome ${user.username}<br><br>
<form method="post" name="myForm" action="/Demo/coursesuccess">

  
    <label for="c_name">Course Name</label>
    <input type="text" id="c_name" name="courseName" placeholder="Name.."/>
	<br/>
	<label for="c_des">Course Description</label>
    <input type="text" id="c_des" name="courseDescription" placeholder="Description.."/>
	<br/>
	<label for="c_ques">Course No_of_Questions</label>
    <input type="text" id="c_ques" name="courseNoQuestions" placeholder="Enter number.."/>
	<br/>
	<label for="c_passingscore">Course Passing_course</label>
    <input type="text" id="c_passingscore" name="coursePassingScore" placeholder="score.."/>
	<br/>
	<br/>
    
   
    

    <input type="submit" value="Submit">

  </form>


</body>
</html> --%>











 <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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

    <link href="resources/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
	 <link href="resources/css/bootstrap.min.css" rel="stylesheet">
	<link href="resources/css/responsive-slider.css" rel="stylesheet">
	<link rel="stylesheet" href="resources/css/animate.css">
	<link rel="stylesheet" href="resources/css/font-awesome.min.css">
	<link href="css/style.css" rel="stylesheet">	

    <!-- Custom styles for this template -->
    <link href="resources/css/half-slider.css" rel="stylesheet">

  </head>

  <body>

    <!-- Navigation -->
    <nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top">
      <div class="container" >
        <a class="navbar-brand" href="loginadminsuccess">Online Exam Portal</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarResponsive">
          <ul class="navbar-nav pull-right" align="right">
            <li class="nav-item active">
              <a class="nav-link" href="#">${name}
                <span class="sr-only">(current)</span>
              </a>
            </li>
            <li class="nav-item active">
              <a class="nav-link" href="logout">Logout
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

    <header>
      <div class="container" >
            <form method="post" class="form-horizontal" role="form" name="myForm" action="/Demo/coursesuccess">
			
            
				
				
					
				<div class="input-group">
	
					<label for="c_des">Name Course</label>
					   <input type="text" id="c_name" name="courseName" placeholder="Name.."/>
	<br/>
	<label for="c_des">Course Description</label>
    <input type="text" id="c_des" name="courseDescription" placeholder="Description.."/>
	<br/>
	<label for="c_ques">Course No_of_Questions</label>
    <input type="text" id="c_ques" name="courseNoQuestions" placeholder="Enter number.."/>
	<br/>
	<label for="c_passingscore">Course Passing_course</label>
    <input type="text" id="c_passingscore" name="coursePassingScore" placeholder="score.."/>
	<br/>
					
					
				</div>
		<br>
				<!-- <center><input type="submit" id="submit"  class="" value="Submit" background-color="blue">&nbsp<input type="reset" id="reset"  class="" value="Reset" background-color="blue">
</center>	 -->
<center>
<section class="py-5">
      <div class="container" align="center">
        <h1></h1>
        <input type="submit" id="submit"  class="" value="Submit" background-color="blue">
		 <input type="reset" id="reset"  class="" value="Reset" background-color="blue">
		  <!-- <a href="New Score.jsp"> <input type="button" id="view"  class="" value="VIEW RESULT" background-color="blue"></a> -->
      </div>
    </section></center>




<center>
<div class="login-help">	<br><!-- - <a href="forgetverification.jsp">Forgot Password</a> -->
				  </div>
</center>		<center><font color="red"></font></center>		  
		
				

</form>




				
				
				
			      
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
 





<!-- 
<!DOCTYPE html>
<html lang="en" ng-app="app">
  <head>
           <script src="angular.min.js"></script>
		   
		   
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

    Bootstrap core CSS
    <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
	 <link href="css/bootstrap.min.css" rel="stylesheet">
	<link href="css/responsive-slider.css" rel="stylesheet">
	<link rel="stylesheet" href="css/animate.css">
	<link rel="stylesheet" href="css/font-awesome.min.css">
	<link href="css/style.css" rel="stylesheet">	

    Custom styles for this template
    <link href="css/half-slider.css" rel="stylesheet">

  </head>

  <body>

    Navigation
    <nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top">
      <div class="container" >
        <a class="navbar-brand" href="#">Online Exam Portal</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarResponsive">
          <ul class="navbar-nav pull-right" align="right">
            <li class="nav-item active">
              <a class="nav-link" href="AdminPAGE.html">Home
                <span class="sr-only">(current)</span>
              </a>
            </li>
           
            <li class="nav-item">
              <a class="nav-link" href="reg.html">Sign Out</a>
            </li>
           <li class="nav-item">
              <a class="nav-link" href="#">Contact</a>
            </li>
          </ul>
        </div>
      </div>
    </nav>

  <header>
      <div class="container" >
            <form class="form-horizontal" role="form" name="myForm" action="/Demo/coursesuccess" method="post">
			
                <h2><center>Add Course</center></h2><br><br>
                <div class="form-group">
                    <label for="fullname" class="col-sm-3 control-label">Course Name</label>
                    <div class="col-sm-6">
					<div class="input-group">
					
					</span>
                        <input name="courseName"  ng-model="courseName" required size="65" maxlength="25"placeholder="enter here" autofocus ng-pattern ="/^[a-zA-Z\s]*$/" ng-model-options="{ debounce: 1000 }" >
						<span ng-show="myForm.courseName.$touched && myForm.courseName.$invalid"><font color="red">*required.</font></span>

            <span ng-show="myForm.courseName.$dirty && myForm.courseName.$error.pattern"><font color="red">Only Alphabet is allows</font></span>
                        </div>
                    </div>
                </div>
				------------------------------------------------------------------------
				<div class="form-group">
                    <label for="fullname" class="col-sm-3 control-label">Course Description</label>
                    <div class="col-sm-6">
					<div class="input-group">
					
					</span>
                        <input name="courseDescription"  ng-model="courseDescription" required size="65" maxlength="125"placeholder="enter here" autofocus ng-pattern ="/^[a-zA-Z\s]*$/" ng-model-options="{ debounce: 1000 }" >
						<span ng-show="myForm.courseDescription.$touched && myForm.courseDescription.$invalid"><font color="red">*required.</font></span>

            <span ng-show="myForm.courseDescription.$dirty && myForm.courseDescription.$error.pattern"><font color="red">Only Alphabet is allows</font></span>
                        </div>
                    </div>
                </div>
				--------------------------------------------
				<div class="form-group">
                    <label for="fullname" class="col-sm-3 control-label">Course Number of Questions</label>
                    <div class="col-sm-6">
					<div class="input-group">
					
					</span>
                        <input name="courseNoQuestions"  ng-model="courseNoQuestions" required size="65" maxlength="125"placeholder="enter here" autofocus ng-pattern ="/^[0-9\s]*$/" ng-model-options="{ debounce: 1000 }" >
						<span ng-show="myForm.courseNoQuestions.$touched && myForm.courseNoQuestions.$invalid"><font color="red">*required.</font></span>

            <span ng-show="myForm.courseNoQuestions.$dirty && myForm.courseNoQuestions.$error.pattern"><font color="red">Only Numbers are allowed</font></span>
                        </div>
                    </div>
                </div>
				------------------------------------------------
				<div class="form-group">
                    <label for="fullname" class="col-sm-3 control-label">Course Passing Score</label>
                    <div class="col-sm-6">
					<div class="input-group">
					
					</span>
                        <input name="coursePassingScore"  ng-model="coursePassingScore" required size="65" maxlength="125"placeholder="enter here" autofocus ng-pattern ="/^[0-9\s]*$/" ng-model-options="{ debounce: 1000 }" >
						<span ng-show="myForm.coursePassingScore.$touched && myForm.coursePassingScore.$invalid"><font color="red">*required.</font></span>

            <span ng-show="myForm.coursePassingScore.$dirty && myForm.coursePassingScore.$error.pattern"><font color="red">Only Numbers are allowed</font></span>
                        </div>
                    </div>
                </div>
				<center><input type="submit" value="Submit"></center>
				---------------------------------------------------
		</div>
	</header>
   
   
   

    Page Content
    <section class="py-5">
      <div class="container" align="center">
        <h1></h1>
        <p></p>
      </div>
    </section>

    Footer
    <footer class="py-5 " align="bottom">
      <div class="container" bg-dark>
	  <div class="footer">
        <p class="m-0 text-center text-white">Copyright &copy; Online Exam Portal 2017</p>
      </div>
	  </div>
      /.container
    </footer>

    Bootstrap core JavaScript
    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="vendor/popper/popper.min.js"></script>
    <script src="vendor/bootstrap/js/bootstrap.min.js"></script>

  </body>

</html> -->


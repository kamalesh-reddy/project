<%-- <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

  <form  method="GET" name="myForm" action="/Demo/loginvalidator">
  
  	<label><b>User Name</b></label>
      
        <input type="text" name="username" />
            
    <br>  <label><b>Password</b></label>
     
	<input type="password" id="password"  name="userPassword" />
                                    

   
                 
	  <br>
  <input type="submit" >Sign Up</input>
  
  </form>

${msg}

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
        <a class="navbar-brand" href="/Demo">Online Exam Portal</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarResponsive">
          <ul class="navbar-nav pull-right" align="right">
            
            
            <li class="nav-item">
              <a class="nav-link" href="register">Sign Up</a>
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
            <form class="form-horizontal" role="form" name="myForm" action="/Demo/loginvalidator">
			
                <h2><center>SIGN IN</center></h2><br><br>
				
				
					
				<div class="input-group">
	
					<input type="text" id="name" name="username" class="form-control" placeholder="User Name" required>
	
					<input type="password" id="paw" name="userPassword" class="form-control" placeholder="Password" required>
					
				</div>
		<br>
				<center><input type="submit" id="submit"  class="" value="Submit" background-color="blue">&nbsp<input type="reset" id="reset"  class="" value="Reset" background-color="blue">
</center>	
<center>
<div class="login-help">	<br><br><a href="register">Register</a> <!-- - <a href="forgetverification.jsp">Forgot Password</a> -->
				  </div>
</center>		<center><font color="red">${msg}</font></center>		  
		
				

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



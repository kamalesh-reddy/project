<%--  <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>

<body>




<h2>Exam Signup Form</h2>
  
  <form  method="post" name="myForm" action="/Demo/registerSuccess">

		<!-- <label><b>ID</b></label>
		
		<input type="text" placeholder="Enter Your Id" name="userId" required> -->
		
		<label><b>Full Name</b></label>
		
	  	<input type="text" name="userFname" /> <br> 
	  	
	  	<label><b>User Name</b></label>
      
        <input type="text" name="username" />
            
    <br>  <label><b>Password</b></label>
     
	<input type="password" id="password"  name="userPassword" />
                                    

   
                 
	  <br><label><b>Email</b></label>
<input name="userEmail" type="email" />
                    
	  
	 <br> <label><b>Mobile Number</b></label>
 <input type="text" name="userMobileNo" /><br>
          
          
          
	 <br> <label><b>userRole</b></label>
<!-- <select>
  <option value="user">User</option>
  <option value="admin">Admin</option>
 
</select> -->
  <input type="text" name="userRole" /><br>
 
 
	            
    
<input type="submit" >Sign Up</input>
     
    
  </form>




</body>
</html> 

 --%>





<%-- <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html >

<head>
           <script src="angular.min.js"></script>

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
        <a class="navbar-brand" href="#">Online Exam Portal</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive" 
		aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarResponsive">
          <ul class="navbar-nav pull-right" align="right">
            <li class="nav-item active">
              <a class="nav-link" href="index.jsp">Home
                <span class="sr-only">(current)</span>
              </a>
            </li>
      <!--      <li class="nav-item">
              <a class="nav-link" href="logintest.html">Login</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="#">Sign Up</a>
            </li>
			-->
       <!--     <li class="nav-item">
              <a class="nav-link" href="#">Contact</a> -->
            </li>
          </ul>
        </div>
      </div>
    </nav>

    <header>
      <div class="container" >
            <form class="form-horizontal" role="form"  method="post" name="myForm" action="/Demo/registerSuccess">
			
                <h2><center>SIGN UP</center></h2><br><br>
                <div class="form-group">
                    <label for="fullname" class="col-sm-3 control-label">Full Name</label>
                    <div class="col-sm-6">
					<div class="input-group">
					<span class="input-group-addon transparent">
					<span class="glyphicon glyphicon-user"></span>
					</span>
  

		
		<input type="text" name="userFname"  ng-model="myName" required size="65" maxlength="25"placeholder="Full Name" autofocus ng-pattern ="/^[a-zA-Z\s]*$/" ng-model-options="{ debounce: 1000 }" ng-minlength="3">
						<span ng-show="myForm.userFname.$touched && myForm.userFname.$invalid"><font color="red"></font></span>
<span ng-show="myForm.userFname.$dirty && myForm.userFname.$error.minlength">Minimum length required is 3</span>
            <span ng-show="myForm.myName.$dirty && myForm.myName.$error.pattern"><font >/Only Alphabet is allows</font></span>
                        </div>
                    </div>
                </div>
		
	  	
	  	
	  <div class="form-group">
                    <label for="username" class="col-sm-3 control-label">User Name</label>
                    <div class="col-sm-6">
          <div class="input-group">
          <span class="input-group-addon transparent">
          <span class="glyphicon glyphicon-user"></span>
          </span>
                        <input type="text" name="username" ng-model="userName" required size="65" placeholder="userName" maxlength="15" autofocus ng-minlength="4"/>
            <span ng-show="myForm.username.$touched && myForm.username.$invalid"><font color="red"></font></span>
             <span ng-show="myForm.username.$dirty && myForm.username.$error.minlength">Minimum length required is 4</span>
                        </div>
                    </div>
                </div>
      
       
            <div class="form-group" ng-class="{'has-error':formData.password.$invalid && !formData.password.$pristine}">
                    <label for="Password" class="col-sm-3 control-label">Password</label>
                              <div class="col-sm-6">
                                                  <div class="input-group">
                                   <span class="input-group-addon"><i class="fa fa-lock fa-lg" aria-hidden="true"></i></span>
   <input type="password" id="password"  name="userPassword" minlength="8" maxlength="20" ng-model="formData.password" required size="65" 
   ng-pattern="/(?=.*[a-z])(?=.*[A-Z])(?=.*[^a-zA-Z])/"  placeholder="password" autofocus ng-maxlength="15" ng-minlenth="15">
                                    <span ng-show="myForm.userPassword.$touched && myForm.password.$invalid"><font color="red"></font></span>

                                     <span ng-show="myForm.userPassword.$dirty && myForm.password.$error.minlength">
                                            Passwords must be between 8 and 20 characters.</span>
                                          <p ng-show="myForm.password.$error.pattern" class="error">Must contain one lower & uppercase letter, and one non-alpha character(a number or a symbol.)</p>
  
                        </div>
                    </div>
                </div>
    <br>  
     
	
                                    

   
      <div class="form-group">
                    <label for="email" class="col-sm-3 control-label">E-mail</label>
                    <div class="col-sm-6">
        <div class="input-group">
          <span class="input-group-addon transparent">
          <span class="glyphicon glyphicon-user"></span>
          </span>
                        <input name="userEmail" type="email" ng-model="email" required size="65" ng-pattern="/^[^\s@]+@[^\s@]+\.[^\s@]{2,}$/"placeholder="sample123@gmail.com" required autofocus>
            <span ng-show="myForm.userEmail.$touched && myForm.userEmail.$invalid"><font color="red"></font></span>
			 <span ng-show="myForm.userEmail.$touched && myForm.userEmail.$error.pattern">please enter valid email Address</span>
           
                        </div>
                    </div>

                    
	  
	 <div class="form-group">
                    <label for="Mobilenum" class="col-sm-3 control-label">Mobile no</label>
                    <div class="col-sm-6">
        <div class="input-group">
           <span class="input-group-addon" ><i class="fa fa-phone " aria-hidden="true"></i></span>
                        <input type="text" name="userMobileNo" ng-model="myNum" required size="65" placeholder="Mobile No" autofocus ng-minlength="10"required ng-pattern="/[789]\d{9}$/">
            <span ng-show="myForm.userMobileNo.$touched && myForm.userMobileNo.$invalid"><font color="red"></font></span>
            <span ng-show="myForm.userMobileNo.$touched && myForm.userMobileNo.$error.pattern">please enter valid mobilenumber</span>
                        </div>
                    </div>
                </div>
 
          
          
          
	 <br> <label><b>userRole</b></label>
<!-- <select>
  <option value="user">User</option>
  <option value="admin">Admin</option>
 
</select> -->
  <input type="text" name="userRole" /><br>
 
 
	            
    
<input type="submit" >Sign Up</input>
     
    
  </form>




</body>
</html>  --%>




 <%-- <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en" ng-app="app">
<head>
           <script src="angular.min.js"></script>

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
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive" 
		aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarResponsive">
          <ul class="navbar-nav pull-right" align="right">
            
      <!--      <li class="nav-item">
              <a class="nav-link" href="logintest.html">Login</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="#">Sign Up</a>
            </li>
			-->
       <!--     <li class="nav-item">
              <a class="nav-link" href="#">Contact</a> -->
            </li>
          </ul>
        </div>
      </div>
    </nav>

    <header>
      <div class="container" >
            <form class="form-horizontal" role="form"  method="post" name="myForm" action="/Demo/registerSuccess">
			
                <h2><center>SIGN UP</center></h2><br><br>
                <div class="form-group">
                    <label for="fullname" class="col-sm-3 control-label">Full Name</label>
                    <div class="col-sm-6">
					<div class="input-group">
					<span class="input-group-addon transparent">
					<span class="glyphicon glyphicon-user"></span>
					</span>
  

		
		<input type="text" name="userFname"  ng-model="myName" required size="65" maxlength="25"placeholder="Full Name" autofocus ng-pattern ="/^[a-zA-Z\s]*$/" ng-model-options="{ debounce: 1000 }" ng-minlength="3">
						<span ng-show="myForm.userFname.$touched && myForm.userFname.$invalid"><font color="red"></font></span>
<span ng-show="myForm.userFname.$dirty && myForm.userFname.$error.minlength">Minimum length required is 3</span>
            <span ng-show="myForm.myName.$dirty && myForm.myName.$error.pattern"><font >/Only Alphabet is allows</font></span>
                        </div>
                    </div>
                </div>
		
	  	
	  	
	  <div class="form-group">
                    <label for="username" class="col-sm-3 control-label">User Name</label>
                    <div class="col-sm-6">
          <div class="input-group">
          <span class="input-group-addon transparent">
          <span class="glyphicon glyphicon-user"></span>
          </span>
                        <input type="text" name="username" ng-model="userName" required size="65" placeholder="userName" maxlength="15" autofocus ng-minlength="4"/>
            <span ng-show="myForm.username.$touched && myForm.username.$invalid"><font color="red"></font></span>
             <span ng-show="myForm.username.$dirty && myForm.username.$error.minlength">Minimum length required is 4</span>
                        </div>
                    </div>
                </div>
      
       
            <div class="form-group" ng-class="{'has-error':formData.password.$invalid && !formData.password.$pristine}">
                    <label for="Password" class="col-sm-3 control-label">Password</label>
                              <div class="col-sm-6">
                                                  <div class="input-group">
                                   <span class="input-group-addon"><i class="fa fa-lock fa-lg" aria-hidden="true"></i></span>
   <input type="password" id="password"  name="userPassword" minlength="8" maxlength="20" ng-model="formData.password" required size="65" 
   ng-pattern="/(?=.*[a-z])(?=.*[A-Z])(?=.*[^a-zA-Z])/"  placeholder="password" autofocus ng-maxlength="15" ng-minlenth="15">
                                    <span ng-show="myForm.userPassword.$touched && myForm.password.$invalid"><font color="red"></font></span>

                                     <span ng-show="myForm.userPassword.$dirty && myForm.password.$error.minlength">
                                            Passwords must be between 8 and 20 characters.</span>
                                          <p ng-show="myForm.password.$error.pattern" class="error">Must contain one lower & uppercase letter, and one non-alpha character(a number or a symbol.)</p>
  
                        </div>
                    </div>
                </div>
    <br>  
     
	
                                    

   
      <div class="form-group">
                    <label for="email" class="col-sm-3 control-label">E-mail</label>
                    <div class="col-sm-6">
        <div class="input-group">
          <span class="input-group-addon transparent">
          <span class="glyphicon glyphicon-user"></span>
          </span>
                        <input name="userEmail" type="email" ng-model="email" required size="65" ng-pattern="/^[^\s@]+@[^\s@]+\.[^\s@]{2,}$/"placeholder="sample123@gmail.com" required autofocus>
            <span ng-show="myForm.userEmail.$touched && myForm.userEmail.$invalid"><font color="red"></font></span>
			 <span ng-show="myForm.userEmail.$touched && myForm.userEmail.$error.pattern">please enter valid email Address</span>
           
                        </div>
                    </div></div>

                    
	  
	 <div class="form-group">
                    <label for="Mobilenum" class="col-sm-3 control-label">Mobile no</label>
                    <div class="col-sm-6">
        <div class="input-group">
           <span class="input-group-addon" ><i class="fa fa-phone " aria-hidden="true"></i></span>
                        <input type="text" name="userMobileNo" ng-model="myNum" required size="65" placeholder="Mobile No" autofocus ng-minlength="10"required ng-pattern="/[789]\d{9}$/">
            <span ng-show="myForm.userMobileNo.$touched && myForm.userMobileNo.$invalid"><font color="red"></font></span>
            <span ng-show="myForm.userMobileNo.$touched && myForm.userMobileNo.$error.pattern">please enter valid mobilenumber</span>
                        </div>
                    </div>
                </div>
 
          
          
          
	  <div class="form-group">
                    <label  class="col-sm-3 control-label">Role</label>
                    <div class="col-sm-6">
        <div class="input-group">
<!-- <select>
  <option value="user">User</option>
  <option value="admin">Admin</option>
 
</select> -->
  <input type="text" name="userRole" /><br>
      </div>
                    </div>
                </div >
 
 
	            
    
 <center> <input type="submit"  value= "Register" ng-disabled="userForm.$invalid" ng-model-options="{ debounce: 3000 }"></center>  
     
    
  </form>




</body>
</html> 

 --%>



<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html lang="en" ng-app="app">
<head>
           <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.6.4/angular.min.js"></script>
		   <style>hide {
    background-color: transparent;
    border: 0px solid;
    height: 20px;
    width: 160px;
    color: #CCC;
}</style>

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
        <a class="navbar-brand" href="#">Online Exam Portal</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive" 
		aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarResponsive">
          <ul class="navbar-nav pull-right" align="right">
            <li class="nav-item active">
              <a class="nav-link" href="index.jsp">Home
                <span class="sr-only">(current)</span>
              </a>
            </li>
      <!--      <li class="nav-item">
              <a class="nav-link" href="logintest.html">Login</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="#">Sign Up</a>
            </li>
			-->
       <!--     <li class="nav-item">
              <a class="nav-link" href="#">Contact</a> -->
            </li>
          </ul>
        </div>
      </div>
    </nav>

    <header>
      <div class="container" >
            <form class="form-horizontal" role="form"  method="post" name="myForm" action=/Demo/registerSuccess>
			
                <h2><center>SIGN UP</center></h2><br><br>
                <div class="form-group">
                    <label for="fullname" class="col-sm-3 control-label">Full Name</label>
                    <div class="col-sm-6">
					<div class="input-group">
					<span class="input-group-addon transparent">
					<span class="glyphicon glyphicon-user"></span>
					</span>
  

		
		<input type="text" name="userFname"  ng-model="userFname" required size="65" maxlength="25"placeholder="Full Name" autofocus ng-pattern ="/^[a-zA-Z\s]*$/" ng-model-options="{ debounce: 1000 }" ng-minlength="3">
						<span ng-show="myForm.userFname.$touched && myForm.userFname.$invalid"><font color="red"></font></span>
<span ng-show="myForm.userFname.$dirty && myForm.userFname.$error.minlength">Minimum length required is 3</span>
            <span ng-show="myForm.userFname.$dirty && myForm.userFname.$error.pattern"><font >/Only Alphabet is allows</font></span>
                        </div>
                    </div>
                </div>
		
	  	
	  	
	  <div class="form-group">
                    <label for="username" class="col-sm-3 control-label">User Name</label>
                    <div class="col-sm-6">
          <div class="input-group">
          <span class="input-group-addon transparent">
          <span class="glyphicon glyphicon-user"></span>
          </span>
                        <input type="text" name="username" ng-model="username" required size="65" placeholder="userName" maxlength="15" autofocus ng-minlength="4"/>
            <span ng-show="myForm.username.$touched && myForm.username.$invalid"><font color="red"></font></span>
             <span ng-show="myForm.username.$dirty && myForm.username.$error.minlength">Minimum length required is 4</span>
                        </div>
                    </div>
                </div>
      
       
            <div class="form-group" ng-class="{'has-error':formData.password.$invalid && !formData.password.$pristine}">
                    <label for="Password" class="col-sm-3 control-label">Password</label>
                              <div class="col-sm-6">
                                                  <div class="input-group">
                                   <span class="input-group-addon"><i class="fa fa-lock fa-lg" aria-hidden="true"></i></span>
   <input type="password" id="password"  name="userPassword" minlength="8" maxlength="20" ng-model="userPassword" required size="65" 
   ng-pattern="/(?=.*[a-z])(?=.*[A-Z])(?=.*[^a-zA-Z])/"  placeholder="password" autofocus ng-maxlength="15" ng-minlenth="15">
                                    <span ng-show="myForm.userPassword.$touched && myForm.password.$invalid"><font color="red"></font></span>

                                     <span ng-show="myForm.userPassword.$dirty && myForm.password.$error.minlength">
                                            Passwords must be between 8 and 20 characters.</span>
                                          <p ng-show="myForm.userPassword.$error.pattern" class="error">Must contain one lower & uppercase letter, and one non-alpha character(a number or a symbol.)</p>
  
                        </div>
                    </div>
                </div>
    
     
	
                                    

   
      <div class="form-group">
                    <label for="email" class="col-sm-3 control-label">E-mail</label>
                    <div class="col-sm-6">
        <div class="input-group">
          <span class="input-group-addon transparent">
          <span class="glyphicon glyphicon-user"></span>
          </span>
                        <input name="userEmail" type="email" ng-model="email" required size="65" ng-pattern="/^[^\s@]+@[^\s@]+\.[^\s@]{2,}$/"placeholder="sample123@gmail.com" required autofocus>
            <span ng-show="myForm.userEmail.$touched && myForm.userEmail.$invalid"><font color="red"></font></span>
			 <span ng-show="myForm.userEmail.$touched && myForm.userEmail.$error.pattern">please enter valid email Address</span>
           
                        </div>
                    </div></div>

                    
	  
	 <div class="form-group">
                    <label for="Mobilenum" class="col-sm-3 control-label">Mobile no</label>
                    <div class="col-sm-6">
        <div class="input-group">
           <span class="input-group-addon" ><i class="fa fa-phone " aria-hidden="true"></i></span>
                        <input type="text" name="userMobileNo" ng-model="myNum" required size="65" placeholder="Mobile No" autofocus ng-minlength="10"required ng-pattern="/([A-Z])\d{1}[0-9]\d{6}$/">
            <span ng-show="myForm.userMobileNo.$touched && myForm.userMobileNo.$invalid"><font color="red"></font></span>
            <span ng-show="myForm.userMobileNo.$touched && myForm.userMobileNo.$error.pattern">please enter valid mobilenumber</span>
                        </div>
                    </div>
                </div>
 
          
          
          
	  <div class="form-group">
                    <label  class="col-sm-3 control-label">Role</label>
                    <div class="col-sm-6">
        <div class="input-group">
		
<!-- <select>
  <option value="user">User</option>
  <option value="admin">Admin</option>
 
</select> -->
<input type="radio" ng-model="people" value="NUSER" checked="checked"><label>User</label>&nbsp&nbsp&nbsp&nbsp
<input type="radio" ng-model="people" value="ADMIN" ><label>Admin</label>

  &nbsp&nbsp&nbsp&nbsp<input class="hide"type="text" name="userRole" ng-model="people"/><br>
  <span ng-show="myForm.userRole.$touched && myForm.userRole.$invalid"><font >*Select the role</font></span>
      </div>
                    </div>
                </div >
 
 
	            
    
 <center> <input type="submit" ng-disabled="myForm.$invalid" ng-model-options="{ debounce: 3000 }"></center>  
     
    
  </form>




</body>
</html> 
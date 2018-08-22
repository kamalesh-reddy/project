<%-- <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Upload question</title>

<script>
function myFunction() {
	var y=document.getElementById("test").value;
	var res = y.substring(12);
    var x = "C:/Users/Administrator/Desktop/"+res;
	if(x.endsWith(".xls")||x.endsWith(".xlsx"))
	{
	document.write(x);
	}
	else 
	{
	document.write("invalid file")
	}
}
</script>


</head>
<body>

welcome ${user.username}<br><br>
 <form method="GET" action="uploadquestion" enctype="multipart/form-data">
 
 				Select a Course for which question bank is to be uploaded:
 			
                <br/><br/>
         <c:if test="${not empty lists}">

		<select name="course_name">
			 <option value="selected" >select course</option>
			<c:forEach var="listValue" items="${lists}">
    				<option>${listValue.courseName}</option>
    				
			</c:forEach> 
			
		</select>
		
	</c:if>
            
				<br><br>
                Select file to upload:
                <input type="file" id="test" name="uploadFile" />
                <br/><br/>

				<div>
				<button onclick="myFunction()" value="Upload" id="upload">UPLOAD</button>
				</div>
				
		</form>
</body>
</html> --%>








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
        <a class="navbar-brand" href="#">Online Exam Portal</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarResponsive">
          <ul class="navbar-nav pull-right" align="right">
            <li class="nav-item active">
              <a class="nav-link" href="login">Logout
                <span class="sr-only">(current)</span>
              </a>
            </li>
                      </ul>
        </div>
      </div>
    </nav>

    <header>
      <div class="container" >

Upload question for ${courseName}

<form method="GET" action="uploadquestion" enctype="multipart/form-data">
 
 				
 			
                <br/><br/>
         				         <%-- <c:if test="${not empty lists}">

		<select class="form-control" name="courseName" width=100% height=100%>
			 <option value="selected" >select course</option>
			<c:forEach var="listValue" items="${lists}">
    				<option>${listValue.courseName}</option>
    				
			</c:forEach> 
			
		</select>
		
	</c:if> --%>
            
				<br><br>
                Select file to upload:
                <input type="file" id="test" name="uploadFile" />
                <br/><br/>

				<!-- <div>
				<button onclick="myFunction()" value="Upload" id="upload">UPLOAD</button>
				</div> -->
				<input type= "Submit" value="Submit"/>
		</form>
		
				<a href = "loginadminsuccess">Go Back</a>
		${msg}		
				
			      
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
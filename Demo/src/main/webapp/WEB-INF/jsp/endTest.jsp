<%-- <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
Your result is ${result}
</body>
</html> --%>





<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
   
<style>
body{
	font-family: 'Arial', Helvitica, Serif;
	font-size:16px;
	padding:50px;
}

#h01{

}

h5{
	font-size:18px;
}

table{
	table-layout:fixed;
	page-break-before: always;
	 
}
#t01{


}

#t02{
padding:5px;
margin:15px;
}

tr{
	page-break-before: auto;
}


</style>


    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Your Score</title>
	
	
	
	<table style="width:100%">
  
  <tr>
    <th style="text-align: left"><h1>Online Exam Portal</h1></th>
    <th style="text-align: left"><h1>Examination Score Report</h1></th>
  </tr>
  <tr>
    <td><h3><b>Course Name : <i>${course}</i></b></h3></td>
    <td><h3><b>Name of the candidate: <i>${name}</i></b></h3></td>
  </tr>
  <tr>
    <!-- <td><h3><b>Exam Date : <i>dd/mm/yyyy</b></i></h3></td>
    <td><h3><b>Testing ID: <i>12345</i></b></h3></td> -->
  </tr>
</table>
<body>
<br>
<hr style="padding-left:50px"></hr>
	<table style="width:100%"  class="table table-bordered table-responsive" cellspacing="10">
		<tbody>
			<tr>
				<th style="text-align: left">Your Score: ${result}</th>
				<th>Passing Score: 60%</th> 
				<!-- <th style="text-align: right">Result: Pass</th> -->
			</tr>
		</tbody>
	</table>
	
	
	<hr></hr>
	<!--</div>	-->
	
	<br>
	<br>
	<a href=""><center><input type="submit" id="submit"  class="" value="Back" background-color="blue"></a>
		</body>



</body>
</html>

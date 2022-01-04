<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

	<form action="insert" method="post">
		
	  <label for="name">Name:</label><br>
	  <input type="text" name="name"><br>
	  
	  <label for="email">Email:</label><br>
	  <input type="email" name="email"><br>
	  
	  <label for="phone">Phone No:</label><br>
	  <input type="text" name="phone"><br>
	  
	  <label for="uid">User Name:</label><br>
	  <input type="text" name="uid"><br>
	  
	  <label for="pwd">Password:</label><br>
	  <input type="password" name="pwd"><br>
	  
	  <input type="submit" name="Submit" value="Submit">

	</form>

</body>
</html>
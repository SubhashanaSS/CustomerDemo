<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

	<%	String id = request.getParameter("id");
		String name = request.getParameter("name");
		String email = request.getParameter("emai l");
		String phone = request.getParameter("phone");
		String userName = request.getParameter("uname");
		String password = request.getParameter("pass");	
	%>
	
	<h1>Customer Account Delete</h1>
	
	<form action="delete" method="post">
	
	  <label for="cusid">Customer ID:</label><br>
	  <input type="text" name="cusid" value="<%=id %>" readonly><br>
	  
	  <label for="name">Name:</label><br>
	  <input type="text" name="name" value="<%=name %>" readonly><br>
	  
	  <label for="email">Email:</label><br>
	  <input type="email" name="email" value="<%=email %>" readonly><br>
	  
	  <label for="phone">Phone:</label><br>
	  <input type="text" name="phone" value="<%=phone %>" readonly><br>
	  
	  <label for="uname">User Name:</label><br>
	  <input type="text" name="uname" value="<%=userName %>" readonly><br>
	  
	  <label for="pass">Password:</label><br>
	  <input type="text" name="pass" value="<%=password %>" readonly><br>
	  
	  <input type="submit" name="Submit" value="Delete my Data">
	
	</form>

</body>
</html>
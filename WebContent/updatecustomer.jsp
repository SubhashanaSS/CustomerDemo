<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

	<%
		String id = request.getParameter("id");
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String phone = request.getParameter("phone");
		String userName = request.getParameter("uname");
		String password = request.getParameter("pass");
		
	%>


	<form action="update" method="post">
	
	  <label for="cusid">Customer ID:</label><br>
	  <input type="text" name="cusid" value="<%=id %>" readonly><br>
	  
	  <label for="name">Name:</label><br>
	  <input type="text" name="name" value="<%=name %>"><br>
	  
	  <label for="email">Email:</label><br>
	  <input type="email" name="email" value="<%=email %>"><br>
	  
	  <label for="phone">Phone:</label><br>
	  <input type="text" name="phone" value="<%=phone %>"><br>
	  
	  <label for="uname">User Name:</label><br>
	  <input type="text" name="uname" value="<%=userName %>"><br>
	  
	  <label for="pass">Password:</label><br>
	  <input type="password" name="pass" value="<%=password %>"><br>
	  
	  <input type="submit" name="Submit" value="Update my Data">
	
	</form>

</body>
</html>
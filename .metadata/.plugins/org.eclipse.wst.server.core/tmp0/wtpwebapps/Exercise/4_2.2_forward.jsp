<%@ page language="java" contentType="text/html; charset=utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>forward</title>
</head>
<body>
	<h1>forward指令和动作</h1>
	<hr>
	<jsp:forward page="4_2.3_users.jsp" />
	
	<!--  
	<%	//和forward动作等价
		request.getRequestDispatcher("4_2.3_users.jsp").forward(request, response);
	%>
	-->
</body>
</html>
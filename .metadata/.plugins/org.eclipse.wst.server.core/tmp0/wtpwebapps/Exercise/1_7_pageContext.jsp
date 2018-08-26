<%@ page language="java" import="java.util.*,java.text.*" contentType="text/html; charset=utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>pageContext</title>
</head>
<body>
	<h1>pageContext对象</h1>
	<hr>
	获取6_session.jsp中的用户名：<%=pageContext.getSession().getAttribute("username") %><br>
	
	<%
		//跳转到session页面，地址栏URL不变
		//pageContext.forward("1_4_session.jsp");
	%>

</body>
</html>
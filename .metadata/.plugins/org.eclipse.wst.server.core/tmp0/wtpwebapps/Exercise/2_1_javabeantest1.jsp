<%@ page language="java" contentType="text/html; charset=utf-8"%>
<%@ page import="com.po.Users" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>javabeantest1</title>
</head>
<body>
	<h1>通过普通类的调用实现JavaBean</h1>
	<hr>
	<%
		//使用javabean
		Users user=new Users();
		user.setUsername("admin");
		user.setPassword("123");
	%>
	用户名：<%=user.getUsername() %><br>
	密码：<%=user.getPassword() %><br>
</body>
</html>
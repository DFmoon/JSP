<%@ page language="java" import="java.net.*" contentType="text/html; charset=utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>users</title>
</head>
<body>
	<h1>用户信息</h1>
	<hr>
	<%
		request.setCharacterEncoding("utf-8");
		String username="";
		String password="";
		String email="";
		if(request.getParameter("username")!=null){
			username=request.getParameter("username");
		}
		if(request.getParameter("password")!=null){
			password=request.getParameter("password");
		}
		if(request.getParameter("email")!=null){
			email=request.getParameter("email");
		}
	%>
	用户名：<%=username %><br>
	密码：<%=password %><br>
	邮箱：<%=email %>
</body>
</html>
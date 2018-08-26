<%@ page language="java" import="java.net.*" contentType="text/html; charset=utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>dologin</title>
</head>
<body>
	<jsp:forward page="4_3.3_users.jsp">
		<jsp:param value="sdf" name="username"/>
		<jsp:param value="137579980@qq.com" name="email"/>
	</jsp:forward>
</body>
</html>
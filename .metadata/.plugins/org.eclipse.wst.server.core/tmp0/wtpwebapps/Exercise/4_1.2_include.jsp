<%@ page language="java" contentType="text/html; charset=utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>include</title>
</head>
<body>
	<h1>include指令和动作</h1>
	<hr>
	include指令：<%@ include file="4_1.1_date.jsp" %><br>
	include动作：<jsp:include page="4_1.1_date.jsp" flush="false"></jsp:include>
</body>
</html>
<%@ page language="java" import="java.util.*,java.text.*" 
contentType="text/html; charset=utf-8" errorPage="1_9.2_exception.jsp"%>
<!-- errorPage表示当前页面抛出异常时交给指定页面来处理 -->
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>test</title>
</head>
<body>
	<%
		//抛出异常
		out.println(100/0);
	%>
</body>
</html>
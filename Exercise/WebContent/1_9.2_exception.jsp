<%@ page language="java" import="java.util.*,java.text.*" 
contentType="text/html; charset=utf-8" isErrorPage="true"%>
<!-- IsErrorPage为true时才能处理异常信息 -->
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>exception</title>
</head>
<body>
	<h1>exception对象</h1>
	<hr>
	异常消息是：<%=exception.getMessage() %><br>
	异常的字符串描述：<%=exception.toString() %><br>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>out</title>
</head>
<body>
	<h1>out对象</h1>
	<hr>
	<%
		out.println("<h3>浣溪沙·堤上游人逐画船</h3>");
		out.println("堤上游人逐画船。<br>");
		out.println("拍堤春水四垂天。<br>");
		out.println("绿杨楼外出秋千。<br>");
		out.flush();
		out.println("白发戴花君莫笑，<br>");
		out.println("六幺催拍盏频传。<br>");
		out.println("人生何处似尊前。<br>");
	%>
	<hr>
	缓冲区大小：<%=out.getBufferSize() %>byte<br>
	缓冲区剩余大小：<%=out.getRemaining() %>byte<br>
	是否自动清空缓存区：<%=out.isAutoFlush() %><br>
</body>
</html>
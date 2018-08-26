<%@ page language="java" contentType="text/html; charset=utf-8"
pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Hello World!</title>
</head>
<body>
	<h1>Hello World!</h1>
	<hr>
	<!--这是html形式的注释 ，客户端可见-->
	<%--这是jsp形式的注释，客户端不可见 --%>
	
	<%
		//这是java形式的单行注释，客户端不可见
		/*这是java形式的多行注释，客户端不可见*/
		out.println("这是java代码脚本");
	%>
	<hr>
	<%--声明变量和方法 --%>
	<%!
		String s="moon";
		int add(int x,int y){
			return x+y;
		}
	%>
	<%--调用 ，注意表达式--%>
	你好，<%=s %>
	<br>
	3+4=<%=add(3,4) %>
</body>
</html>
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
		//获取cookie值
		String username="";
		String password="";
		Cookie[] cookies=request.getCookies();
		if(cookies!=null && cookies.length>0){
			for(Cookie c:cookies){
				if(c.getName().equals("username")){
					username=URLDecoder.decode(c.getValue(),"utf-8");
				}
				if(c.getName().equals("password")){
					password=URLDecoder.decode(c.getValue(),"utf-8");
				}
			}
			
		}
	%>
	用户名：<%=username %><br>
	密码：<%=password %><br>
</body>
</html>
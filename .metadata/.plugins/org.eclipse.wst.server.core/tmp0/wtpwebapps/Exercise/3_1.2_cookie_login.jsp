<%@ page language="java" import="java.net.*" contentType="text/html; charset=utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>login</title>
</head>
<body>
	<h1>登录</h1>
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
	<form name="login" action="3_1.2_cookie_dologin.jsp" method="post">
		<table>
			<tr>
				<td>用户名：</td>
				<td><input type="text" name="username" value="<%=username %>" /></td>
			</tr>
			<tr>
				<td>密码：</td>
				<td><input type="password" name="password" value="<%=password %>" /></td>
			</tr>
			<tr>
				<td colspan="2"><input type="checkbox" name="isUseCookie" checked="checked" />十天内自动登录</td>
			</tr>
			<tr>
				<td colspan="2"><input type="submit" value="登录" /></td>
			</tr>
		</table>
	</form>

</body>
</html>
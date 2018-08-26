<%@ page language="java" import="java.net.*" contentType="text/html; charset=utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>dologin</title>
</head>
<body>
	<h1>登录成功</h1>
	<hr>
	<%
		request.setCharacterEncoding("utf-8");
		String[] isUseCookies=request.getParameterValues("isUseCookie");
		//判断用户是否使用cookie
		if(isUseCookies!=null && isUseCookies.length>0){
			//保存用户名和密码，使用URLEncoder编码，防止中文乱码
			String username=URLEncoder.encode(request.getParameter("username"),"utf-8");
			String password=URLEncoder.encode(request.getParameter("password"),"utf-8");
			Cookie usernameCookie=new Cookie("username",username);
			Cookie passwordCookie=new Cookie("password",password);
			usernameCookie.setMaxAge(864000);
			passwordCookie.setMaxAge(864000);
			response.addCookie(usernameCookie);
			response.addCookie(passwordCookie);
		}else{
			Cookie[] cookies=request.getCookies();
			if(cookies!=null && cookies.length>0){
				for(Cookie c:cookies){
					if(c.getName().equals("username") || c.getName().equals("password")){
						c.setMaxAge(0);		//设置cookie失效
						response.addCookie(c);//必须重新保存，否则不起作用
					}
				}
				
			}
		}
	%>
	<a href="3_1.3_cookie_users.jsp" target="_blank">查看用户信息</a>
</body>
</html>
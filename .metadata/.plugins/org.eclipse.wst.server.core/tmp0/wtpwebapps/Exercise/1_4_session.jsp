<%@ page language="java" import="java.util.*,java.text.*" contentType="text/html; charset=utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>session</title>
</head>
<body>
	<h1>session对象</h1>
	<hr>
	<%	//设置时间格式
		SimpleDateFormat sdf=new SimpleDateFormat("yyyy年MM月dd日  HH:mm:ss");
		Date d=new Date(session.getCreationTime());
		
		//绑定对象至该session
		session.setAttribute("username", "admin");
		session.setAttribute("password", "123456");
		
		//设置当前session超时时间，单位秒，可用于销毁session
		//session.setMaxInactiveInterval(30);
	%>
	session创建时间：<%=sdf.format(d) %><br>
	session的ID编号：<%=session.getId() %><br>
	取出绑定对象：<%=session.getAttribute("username") %><br>
	session中保存的属性：<%
							String[] names=session.getValueNames();
							for(int i=0;i<names.length;i++){
								out.println(names[i]+"&nbsp;&nbsp");
							}
						%><br>
	session的超时时间：<%=session.getMaxInactiveInterval() %><br>
	<%//session.invalidate(); //销毁session%>
	

</body>
</html>
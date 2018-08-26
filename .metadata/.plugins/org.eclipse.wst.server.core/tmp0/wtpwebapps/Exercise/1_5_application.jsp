<%@ page language="java" import="java.util.*,java.text.*" contentType="text/html; charset=utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>application</title>
</head>
<body>
	<h1>application对象</h1>
	<hr>
	<%
		//设置属性
		application.setAttribute("city","北京");
		application.setAttribute("postcode","10000");
		application.setAttribute("email","1375709980@qq.com");
	%>
	
	获取城市：<%=application.getAttribute("city") %><br>
	所有属性：<%
				Enumeration attr=application.getAttributeNames();
				while(attr.hasMoreElements()){
					out.println(attr.nextElement()+"&nbsp;&nbsp;");
				}
			 %><br>
	服务器版本号：<%=application.getServerInfo() %><br>

</body>
</html>
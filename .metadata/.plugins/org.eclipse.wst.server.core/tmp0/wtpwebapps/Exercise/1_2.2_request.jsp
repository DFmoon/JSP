<%@ page language="java" contentType="text/html; charset=utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>request</title>
</head>
<body>
	<h1>request对象</h1>
	<hr>
	<%
		//设置和提交页面一致的编码形式，解决中文乱码，但不能解决URL传参中的中文乱码
		request.setCharacterEncoding("utf-8");
	%>
	用户名：<%=request.getParameter("username") %><br>
	爱好：<%
			String[] fav=request.getParameterValues("favorite");
			if(fav!=null){
				for(int i=0;i<fav.length;i++){
					out.println(fav[i]+"&nbsp;&nbsp;");
				}	
			}
		 %><br>
	电话：<%=request.getParameter("phonenumber") %><br>
	地址：<%=request.getParameter("address") %><br>
	<hr>
	请求体的MIME类型：<%=request.getContentType() %><br>
	协议类型及版本号：<%=request.getProtocol() %><br>
	服务器主机名：<%=request.getServerName() %><br>
	服务器端口号：<%=request.getServerPort() %><br>
	请求文件长度：<%=request.getContentLength() %><br>
	请求客户端的IP地址：<%=request.getRemoteAddr() %><br>
	请求的物理路径：<%=request.getRealPath("1_2.2_request.jsp") %><br>
	请求的上下文路径：<%=request.getContextPath() %><br>
	
</body>
</html>
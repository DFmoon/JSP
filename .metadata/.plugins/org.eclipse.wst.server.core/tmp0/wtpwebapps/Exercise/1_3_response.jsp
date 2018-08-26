<%@ page language="java" import="java.util.*,java.io.*" contentType="text/html; charset=utf-8"%>

	<%
		response.setContentType("text/html；charset=utf-8");//设置响应器的MIME类型
		out.println("<h1>response对象</h1>");
		out.println("<hr>");
		out.flush();	//将之前的缓存全部写入客户端后清空，这样可确保out对象优先显示
		
		PrintWriter outer=response.getWriter();				//获得输出流对象
		outer.println("我是输出流outer对象");				//outer对象总是先于内置对象out
		
		response.sendRedirect("1_2.1_reg.jsp");		//使客户端的请求跳转至其他页面
	%>

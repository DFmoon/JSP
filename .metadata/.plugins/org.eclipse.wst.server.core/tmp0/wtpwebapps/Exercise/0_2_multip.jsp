<%@ page language="java" contentType="text/html; charset=utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>multiple</title>
</head>
<body>
	<h1>九九乘法表</h1>
	<hr>
	<%!
		//方法一：表达式调用实现
		String printMulti1(){
			String s="";
			for(int i=1;i<=9;i++){
				for(int j=1;j<=i;j++){
					s+=i+"*"+j+"="+i*j+"&nbsp;&nbsp;&nbsp;&nbsp;";
				}
				s+="<br>";
			}
			return s;
		}
	
		//方法二：使用jsp内置对象out，脚本方式实现
		void printMulti2(JspWriter out)throws Exception{
			for(int i=1;i<=9;i++){
				for(int j=1;j<=i;j++){
					out.println(i+"*"+j+"="+i*j+"&nbsp;&nbsp;&nbsp;&nbsp;");
				}
				out.println("<br>");
			}
		}
	%>
	<%=printMulti1()%>
	<%printMulti2(out); %>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>reg</title>
</head>
<body>
	<h1>get/post提交</h1>
	<hr>
	<!-- 通过表单传递参数 -->
	<form name="sdf" action="1_2.2_request.jsp" method="post">
		<table>
			<tr>
				<td>用户名：</td>
				<td><input type="text" name="username"/></td>
			</tr>
			<tr>
				<td>密码：</td>
				<td><input type="password" name="password"/></td>
			</tr>
			<tr>
				<td>爱好：</td>
				<td>
					<input type="checkbox" name="favorite" value="read"/>阅读
					<input type="checkbox" name="favorite" value="音乐"/>音乐
					<input type="checkbox" name="favorite" value="movie"/>电影
				</td>
			</tr>
			<tr>
				<td colspan="2"><input type="submit" value="注册"/></td>
			</tr>
		</table>
	</form>
	<hr>
	<!-- 通过URL传递参数 -->
	<a href="1_2.2_request.jsp?phonenumber=1234567&address=浙江">url传参</a>
</body>
</html>
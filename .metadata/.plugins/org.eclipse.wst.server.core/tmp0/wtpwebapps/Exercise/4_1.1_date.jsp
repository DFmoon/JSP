<%@ page language="java" import="java.util.*,java.text.*" contentType="text/html; charset=utf-8"%>
<%
	SimpleDateFormat sdf= new SimpleDateFormat("yyyy年MM月dd日");
	Date d=new Date();
	String s=sdf.format(d);
	out.println(s);
%>
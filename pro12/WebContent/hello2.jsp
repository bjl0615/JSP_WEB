<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%!
	String name = "이순신";
	public String getName() { return name;}
%>
<% String age = request.getParameter("age"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>안녕하세요 <%= name  %>님</h1>
	<h1>나이는 <%= age %>살 입니다.</h1>
</body>
</html>
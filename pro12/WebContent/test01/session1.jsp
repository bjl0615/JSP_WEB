<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
	String name = (String)session.getAttribute("name");
	session.setAttribute("address", "서울시 강남구");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	이름은 <%= name %> 입니다.
	<a href="session2.jsp">두 번째 페이지로 이동</a>
</body>
</html>
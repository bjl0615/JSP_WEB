<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
	request.setAttribute("id", "hong");
	request.setAttribute("pwd", "1234");
	request.setAttribute("name", "손흥민");
	request.setAttribute("email", "hong@test.com");
	application.setAttribute("address", "서울시 강남구");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<jsp:forward page="member4.jsp" />
</body>
</html>
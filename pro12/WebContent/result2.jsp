<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
	request.setCharacterEncoding("UTF-8");
	String user_id = request.getParameter("user_id");
	String user_pw = request.getParameter("user_pw");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	if(user_id == null || user_id.length() == 0) {		
%>
	아이디를 입력하세요 <br>
	<a href="/pro12/login.html">로그인 하기</a>"
<%
	}else {
%>
<h1> 환영합니다. <%= user_id %> 님!!</h1>
<%
	}
%>
</body>
</html>
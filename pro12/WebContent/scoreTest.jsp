<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
	request.setCharacterEncoding("UTF-8");
	int score = Integer.parseInt(request.getParameter("score"));
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1> ���� ���� <%= score %>��</h1>
	<%
		if(score >= 90) {
	%>
	<h1>A���� �Դϴ�.</h1>
	<%
		}else if(score >= 80 && score < 90) {
	%>
	<h1>B���� �Դϴ�.</h1>
	<%
		}else if(score >= 70 && score < 80) {
	%>
	<h1>C���� �Դϴ�.</h1>
	<%
		}else if(score >= 60 && score < 70) {
	%>
	<h1>D���� �Դϴ�.</h1>
	<%
		}else {
	%>
	<h1> F���� �Դϴ�.</h1>
	<%
		}
	%>
	<br>
	<a href="scoreTest.html">���� ���� �Է�</a>
</body>
</html>
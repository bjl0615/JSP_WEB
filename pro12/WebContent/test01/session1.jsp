<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
	String name = (String)session.getAttribute("name");
	session.setAttribute("address", "����� ������");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	�̸��� <%= name %> �Դϴ�.
	<a href="session2.jsp">�� ��° �������� �̵�</a>
</body>
</html>
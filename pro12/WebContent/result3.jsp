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
	���̵� �Է��ϼ��� <br>
	<a href="/pro12/login.html">�α��� �ϱ�</a>"
<%
	}else {
		if(user_id.equals("admin")){
%>
<h1> �����ڷ� �α��� �ϼ̽��ϴ�.</h1>
<form>
	<input type="button" value="ȸ������ �����ϱ�" />
	<input type="button" value="ȸ������ �����ϱ�" />
</form>
<%
		}else {
			
%>
<h1> ȯ���մϴ�. <%= user_id %> ��!!</h1>
<%
		}
	}
%>
</body>
</html>
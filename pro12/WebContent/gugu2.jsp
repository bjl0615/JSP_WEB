<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
	request.setCharacterEncoding("UTF-8");
	int dan = Integer.parseInt(request.getParameter("dan"));
	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	

	<table border="1" width='800'>
		<tr align="center" bgcolor="#FFFF66">
			<td colspan="2"><%= dan %>�� ��� </td>
	<%
		for(int i = 1 ; i <= 9 ; i++) {			
	%>
		<%
			if(i%2 == 1) {
		%>
				<tr align=center bgcolor="#CCFF66">
		<%
			}else {
		%>
				<tr align=center bgcolor="#CCCCFF">
		<%
			}
		%>
		<tr align='center'>
			<td width='400'>
				<%= dan %> * <%= i %>
			</td>	
			<td width='400'>
				<%= i * dan %>
			</td>
		</tr>
	<%
		}
	%>	
	</table>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="util.CookieBox" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>���� ����</title>
</head>
<body>
���� ���� ������
<table border=1>
	<tr>
		<td>
			<form action="<%= request.getContextPath() %>/nov09/member/sessionLoginCheck.jsp" method="post">
				<input type="submit" value="�α��� ���� �˻�">
			</form>
		<td>
	</tr>
	<tr>
		<td>
			<form action="<%= request.getContextPath() %>/nov09/member/sessionLogout.jsp" method="post">
				<input type="submit" value="�α׾ƿ�">
			</form>
		</td>
	<tr>
</table>
</body>
</html>
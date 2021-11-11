<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="util.CookieBox" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>세션 메인</title>
</head>
<body>
세션 메인 페이지
<table border=1>
	<tr>
		<td>
			<form action="<%= request.getContextPath() %>/nov09/member/sessionLoginCheck.jsp" method="post">
				<input type="submit" value="로그인 여부 검사">
			</form>
		<td>
	</tr>
	<tr>
		<td>
			<form action="<%= request.getContextPath() %>/nov09/member/sessionLogout.jsp" method="post">
				<input type="submit" value="로그아웃">
			</form>
		</td>
	<tr>
</table>
</body>
</html>
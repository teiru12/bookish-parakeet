<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>로그인폼</title>
</head>
<body>
<form action="<%= request.getContextPath() %>/nov08/member/login.jsp" method="post">
<table>
	<tr>
		<td>아이디</td>
		<td>
			<input type="text" name="id" size="10"> <br>
		</td>
	</tr>
	<tr>
		<td>암호</td>
		<td>
			<input type="password" name="passwd" size="10"> <br>
		</td>
	</tr>
	<tr>
		<td colspan="2">
			<input type="submit" value="로그인">
		</td>
	</tr>
</table>
</form>
</body>
</html>
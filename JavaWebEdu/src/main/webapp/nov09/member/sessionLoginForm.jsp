<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="util.CookieBox" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>세션 로그인 페이지</title>
</head>
<body>

<form action="<%= request.getContextPath() %>/nov09/member/sessionLogin.jsp"
	 method="post">
	<table>
		<tr>
			<td> ID입력 </td>
			<td>
<%
				CookieBox cookieBox = new CookieBox(request);
				Cookie loginCookie = cookieBox.getCookie("LOGIN");
				Cookie checkCookie = cookieBox.getCookie("CHECK");
				String savedID = "";
				String check = "";
				if(checkCookie!=null) {
					check = checkCookie.getValue();
				}
				if(loginCookie!=null && check.equals("TRUE")) {
					// loginCookie가 존재하면면서 체크 쿠키가 TRUE일 경우
					// text 상자에 출력할 id 설정
					savedID = loginCookie.getValue();
				}
%>
				<input type="text" name="id" size="10" value="<%= savedID %>">
			</td>
		</tr>
		<tr>
			<td> 비밀번호 입력 </td>
			<td>
				<input type="password" name="passwd" size="10">
			</td>				
		</tr>
		<tr>
			<td> ID 저장 </td>
			<td>
				<input type="checkbox" name="save" value="TRUE" checked>
			</td>
		</tr>
		<tr>
			<td colspan=2>
				<input type="submit" value="로그인">
			</td>
		</tr>
	</table> 
</form>

</body>
</html>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="util.CookieBox" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>���� �α��� ������</title>
</head>
<body>

<form action="<%= request.getContextPath() %>/nov09/member/sessionLogin.jsp"
	 method="post">
	<table>
		<tr>
			<td> ID�Է� </td>
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
					// loginCookie�� �����ϸ�鼭 üũ ��Ű�� TRUE�� ���
					// text ���ڿ� ����� id ����
					savedID = loginCookie.getValue();
				}
%>
				<input type="text" name="id" size="10" value="<%= savedID %>">
			</td>
		</tr>
		<tr>
			<td> ��й�ȣ �Է� </td>
			<td>
				<input type="password" name="passwd" size="10">
			</td>				
		</tr>
		<tr>
			<td> ID ���� </td>
			<td>
				<input type="checkbox" name="save" value="TRUE" checked>
			</td>
		</tr>
		<tr>
			<td colspan=2>
				<input type="submit" value="�α���">
			</td>
		</tr>
	</table> 
</form>

</body>
</html>
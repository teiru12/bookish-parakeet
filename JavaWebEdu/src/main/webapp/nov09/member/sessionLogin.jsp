<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="util.CookieBox" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>로그인 성공</title>
</head>
<body>
<%
	String id = request.getParameter("id");
	String passwd = request.getParameter("passwd");
	String check = request.getParameter("save");
	if(check!=null && check.equals("TRUE")) {
		Cookie loginCookie = CookieBox.createCookie("LOGIN", id);
		response.addCookie(loginCookie);
		Cookie checkCookie = CookieBox.createCookie("CHECK", check);
		response.addCookie(checkCookie);
	} else {
		Cookie loginCookie = CookieBox.createCookie("LOGIN", "");
		response.addCookie(loginCookie);
		Cookie checkCookie = CookieBox.createCookie("CHECK", "");
		response.addCookie(checkCookie);
	}
	
	if(!id.equals("")&&(id.equals(passwd))) {
		session.setAttribute("MEMBERID", id);
		String path = request.getContextPath() + "/nov09/member/sessionMain.jsp";
		response.sendRedirect(path);
	} else {
%>
<script>
alert("로그인에 실패하였습니다.");
history.go(-1);
</script>
<%
	}
%>

</body>
</html>
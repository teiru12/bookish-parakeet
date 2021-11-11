<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="util.CookieBox" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>CookieBox 사용 쿠키 생성</title>
</head>
<body>
<%
	response.addCookie(CookieBox.createCookie("name","최범균"));
	response.addCookie(CookieBox.createCookie("id", "madvirus", "/JavaWebEdu", -1));
%>
CookieBox를 사용하여 쿠키 생성
</body>
</html>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="util.CookieBox" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>CookieBox ��� ��Ű ����</title>
</head>
<body>
<%
	response.addCookie(CookieBox.createCookie("name","�ֹ���"));
	response.addCookie(CookieBox.createCookie("id", "madvirus", "/JavaWebEdu", -1));
%>
CookieBox�� ����Ͽ� ��Ű ����
</body>
</html>
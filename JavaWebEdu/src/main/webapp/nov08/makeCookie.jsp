<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="java.net.URLEncoder" %>
<%@ page import="java.net.URLDecoder" %>
<!DOCTYPE html>
<%
	Cookie cookie = new Cookie("name",URLEncoder.encode("�ֹ���", "euc-kr"));
	response.addCookie(cookie);
%>
<html>
<head>
<meta charset="EUC-KR">
<title>��Ű����</title>
</head>
<body>
<%= cookie.getName() %> ��Ű�� �� = <%= URLDecoder.decode(cookie.getValue(), "euc-kr") %>
</body>
</html>
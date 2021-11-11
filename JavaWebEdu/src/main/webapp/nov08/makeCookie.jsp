<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="java.net.URLEncoder" %>
<%@ page import="java.net.URLDecoder" %>
<!DOCTYPE html>
<%
	Cookie cookie = new Cookie("name",URLEncoder.encode("최범균", "euc-kr"));
	response.addCookie(cookie);
%>
<html>
<head>
<meta charset="EUC-KR">
<title>쿠키생성</title>
</head>
<body>
<%= cookie.getName() %> 쿠키의 값 = <%= URLDecoder.decode(cookie.getValue(), "euc-kr") %>
</body>
</html>
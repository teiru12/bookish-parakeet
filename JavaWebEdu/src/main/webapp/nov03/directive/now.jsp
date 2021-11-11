<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="java.util.Date" %>
<%@ page trimDirectiveWhitespaces="true" %>
<!DOCTYPE html>
<html>
	<head>
	<meta charset="EUC-KR">
<title>현재 시간</title>
</head>
<body>
<%
	Date now = new Date();
%>
현재 시각:
<%= now %>

</body>
</html>
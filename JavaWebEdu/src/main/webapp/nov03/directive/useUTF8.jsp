<%@ page contentType="text/html; charset=utf-8" %>
<%@ page pageEncoding="euc-kr" %>
<%@ page import="java.util.Date" %>
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
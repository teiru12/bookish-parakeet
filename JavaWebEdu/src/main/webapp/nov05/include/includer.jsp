<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>include ��Ƽ��</title>
</head>
<body>
<%
	int number = 10;
%>
<%@ include file="includee.jspf" %>
���뺯�� DATAFOLDER = <%= dataFolder %>
</body>
</html>
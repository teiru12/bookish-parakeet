<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<%
	String id = (String) session.getAttribute("MEMBERID");
	String name = (String) session.getAttribute("NAME");
%>
<html>
<head>
<meta charset="EUC-KR">
<title>세션에서 정보를 읽어옴</title>
</head>
<body>
세션에서 정보를 읽어왔습니다.<br>
Member ID : <%= id %> <br>
이름 : <%= name %> <br>
</body>
</html>
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
<title>���ǿ��� ������ �о��</title>
</head>
<body>
���ǿ��� ������ �о�Խ��ϴ�.<br>
Member ID : <%= id %> <br>
�̸� : <%= name %> <br>
</body>
</html>
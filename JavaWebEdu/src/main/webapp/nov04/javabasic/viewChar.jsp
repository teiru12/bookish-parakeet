<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>char Ÿ�� ��� ��</title>
</head>
<body>
<%
	char ch = '��';
%>
������ �����ؼ� ��� : <%= ch %> <br>
ǥ���Ŀ��� ���� ��� : <%= '\ucd08' %> <%='\uae30' %> <%= '\ud654'%>
</body>
</html>
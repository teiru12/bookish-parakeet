<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>out ��ü�� ����� ���� �� �� ���� ��</title>
</head>
<body>
<h1> out ��ü�� ��� �� �� �� </h1>
<%
	int grade=15;
%>

<%
	if(grade>10) {
%>
		<%= "gradeStringA" %>
<%
	} else {
%>
		<%= "gradeStringB" %>
<%
	}
%>
<p>
<h1> out ��ü�� ��� �� ��</h1>
<%
	if(grade>10) {
		out.println("gradeStringA");
	} else {
		out.println("gradeStringB");
	}
%>


</body>
</html>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>out 객체를 사용할 때와 안 할 때의 비교</title>
</head>
<body>
<h1> out 객체를 사용 안 할 때 </h1>
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
<h1> out 객체를 사용 할 때</h1>
<%
	if(grade>10) {
		out.println("gradeStringA");
	} else {
		out.println("gradeStringB");
	}
%>


</body>
</html>
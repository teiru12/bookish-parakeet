<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>INFO</title>
</head>
<body>
body_sub에서 name 파라미터의 값 : <%= request.getParameter("name") %> <br>
name 파라미터 값 목록 :
<ul>
	<%
		String[] names = request.getParameterValues("name");
		for(String str : names) {
		%>
		<li> <%= str %> </li>
		<%	
		}
	%>	
</ul>
</body>
</html>
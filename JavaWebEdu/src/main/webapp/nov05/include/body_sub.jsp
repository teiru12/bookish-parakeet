<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>INFO</title>
</head>
<body>
body_sub���� name �Ķ������ �� : <%= request.getParameter("name") %> <br>
name �Ķ���� �� ��� :
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
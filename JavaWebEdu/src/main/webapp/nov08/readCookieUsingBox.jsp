<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="util.CookieBox" %>
<%
	CookieBox cookieBox = new CookieBox(request);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>CookieBox�� ����Ͽ� ��Ű �б�</title>
</head>
<body>

name ��Ű = <%= cookieBox.getValue("name") %> <br>
<%
	if(cookieBox.exists("id")){
		
%>
	id ��Ű = <%= cookieBox.getValue("id") %> <br>
<%
	}
%>
</body>
</html>
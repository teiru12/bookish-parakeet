<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="java.util.Enumeration" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<%
	Enumeration enums = application.getAttributeNames();
	while(enums.hasMoreElements()) {
		String name = (String) enums.nextElement();
		Object value = application.getAttribute(name);
%>
		application 속성 : <b><%= name %> = <%= value %></b> <br>
<%
	}
%>

</body>
</html>
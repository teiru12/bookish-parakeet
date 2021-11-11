<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="java.net.URLEncoder" %>
<!DOCTYPE html>
<%
	String value = "자바";
	String encodedValue = URLEncoder.encode(value,"euc-kr");
	response.sendRedirect("/JavaWebEdu/nov04/response/login.jsp?memberId="+encodedValue);
%>
<html>
<head>
<meta charset="EUC-KR">
<title>리다이렉트 인코딩</title>
</head>
<body>

</body>
</html>
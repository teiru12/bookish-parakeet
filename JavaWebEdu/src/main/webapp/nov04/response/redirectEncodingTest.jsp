<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="java.net.URLEncoder" %>
<!DOCTYPE html>
<%
	String value = "�ڹ�";
	String encodedValue = URLEncoder.encode(value,"euc-kr");
	response.sendRedirect("/JavaWebEdu/nov04/response/login.jsp?memberId="+encodedValue);
%>
<html>
<head>
<meta charset="EUC-KR">
<title>�����̷�Ʈ ���ڵ�</title>
</head>
<body>

</body>
</html>
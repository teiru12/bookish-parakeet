<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page buffer="1kb" %>
<%@ page errorPage="./error/viewErrorMessage.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>���� �÷��� ���� ���� �߻� ���</title>
</head>
<body>
<%
	for(int i=0;i<256;i++){
		out.println(i);
	}
%>

<%= 1/0 %>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>pageContext �⺻��ü</title>
</head>
<body>

<%
	HttpServletRequest httpRequest =
		(HttpServletRequest) pageContext.getRequest();
%>

request �⺻��ü�� pageContext.getRequest()�� ���� ���� : 
<%= request == httpRequest %>
<br>

pageContext.getOut() �޼��带 ����� ������ ���
<%
	pageContext.getOut().println("�ȳ��ϼ���");
	// pageContext.getOut() -> out �⺻ ��ü
%>


</body>
</html>
<%@ page contentType="text/html; charset=EUC-KR" %>
<%@ page import="java.util.Calendar" %>
<!DOCTYPE html>
<html>
<head>
	<title>Calendar Ŭ���� ���</title>
</head>
<body>
<%
	Calendar cal = Calendar.getInstance();
%>
������
	<%= cal.get(Calendar.YEAR) %>��
	<%= cal.get(Calendar.MONTH)+1 %>��
	<%= cal.get(Calendar.DATE) %>��
�Դϴ�.

</body>
</html>
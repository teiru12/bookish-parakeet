<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>���� �α׾ƿ�</title>
</head>
<body>
<%= session.getAttribute("MEMBERID")%> 
�α׾ƿ� �Ͽ����ϴ�.
<% 
	session.invalidate();
%>
<form action="<%= request.getContextPath() %>/nov09/member/sessionLoginForm.jsp" method="post">
	<input type="submit" value="���ư���">
</form>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>��Ű ��ȿ �ð�����</title>
</head>
<body>
<%
	Cookie cookie = new Cookie("name", "time");
	cookie.setMaxAge(10);	// ��Ű�ð� ���� 10��
	response.addCookie(cookie);
%>
��ȿ �ð��� 10���� ��Ű ����.
</body>
</html>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="util.CookieBox" %>
<%
	String id = request.getParameter("id");
	String passwd = request.getParameter("passwd");
	
	if(id.equals(passwd)) {
		// ID�� ��ȣ�� ������ �α��� ����
		// �α��� ���� ��Ű��, ID ���� ��Ű�� ����
		response.addCookie(CookieBox.createCookie("LOGIN", "SUCCESS", "/", -1));
		response.addCookie(CookieBox.createCookie("ID", id, "/", -1));
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>�α��� ����</title>
</head>
<body>
�α��ο� �����Ͽ����ϴ�.
<jsp:forward page="./test.jsp" />
<%
	} else {	// �α��� ����
%>
<script>
alert("�α��ο� �����Ͽ����ϴ�.");
history.go(-1);
</script>
<%
	}
%>
</body>
</html>
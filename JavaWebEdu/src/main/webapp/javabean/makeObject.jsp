<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<jsp:useBean id="member" class="member.MemberInfo" scope="request" />
<html>
<head>
<meta charset="EUC-KR">
<title>�ڹٺ� ��ü ����</title>
</head>
<body>
<%
	member.setId("madvirus");
	member.setName("�ֹ���");
%>
<jsp:forward page="./useObject.jsp" />

</body>
</html>
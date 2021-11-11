<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<jsp:useBean id="member" class="member.MemberInfo" scope="request" />
<html>
<head>
<meta charset="EUC-KR">
<title>자바빈 객체 생성</title>
</head>
<body>
<%
	member.setId("madvirus");
	member.setName("최범균");
%>
<jsp:forward page="./useObject.jsp" />

</body>
</html>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<jsp:useBean id="member" class="member.MemberInfo" scope="request" />
<html>
<head>
<meta charset="EUC-KR">
<title>자바빈 객체 사용</title>
</head>
<body>
<%= member.getName() %>(<%= member.getId() %>) 회원님 안녕하세요.
</body>
</html>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>쿠키 유효 시간설정</title>
</head>
<body>
<%
	Cookie cookie = new Cookie("name", "time");
	cookie.setMaxAge(10);	// 쿠키시간 설정 10초
	response.addCookie(cookie);
%>
유효 시간이 10초인 쿠키 생성.
</body>
</html>
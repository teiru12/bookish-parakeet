<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>쿠키생성</title>
</head>
<body>
<%
	Cookie cookie1 = new Cookie("id", "madvirus");
	cookie1.setDomain(".madvirus.net");
	response.addCookie(cookie1);
	
	Cookie cookie2 = new Cookie("only", "onlycookie");
	response.addCookie(cookie2);
	
	Cookie cookie3 = new Cookie("invalid", "invalidcookie");
	cookie3.setDomain("javacan.tistory.com");
	response.addCookie(cookie3);
%>
다음과 같이 쿠키를 생성하였습니다. <br>
<%= cookie1.getName() %> = <%= cookie1.getValue() %> [<%= cookie1.getDomain() %>] <br>
<%= cookie2.getName() %> = <%= cookie2.getValue() %> [<%= cookie2.getDomain() %>] <br>
<%= cookie3.getName() %> = <%= cookie3.getValue() %> [<%= cookie3.getDomain() %>] <br>
</body>
</html>
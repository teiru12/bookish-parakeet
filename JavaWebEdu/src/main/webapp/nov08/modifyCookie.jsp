<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="java.net.URLEncoder" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>쿠키 수정</title>
</head>
<body>
<%
	Cookie[] cookies = request.getCookies();
	if(cookies!=null && cookies.length>0) {
		for(int i=0;i<cookies.length;i++) {
			if(cookies[i].getName().equals("name")) {
				Cookie coo = new Cookie("name", URLEncoder.encode("JSP프로그래밍", "euc-kr"));
				response.addCookie(coo);
			}
		}
	}
%>
name 쿠키의 값을 변경합니다.
</body>
</html>
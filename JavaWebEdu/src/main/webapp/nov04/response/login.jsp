<!-- http://localhost:9000/JavaWebEdu/nov4/response/login.jsp?memberId=era13 -->

<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<%
	String id = request.getParameter("memberId");
	if(id.equals("era13")) {		// memeberId가 era13일 경우 리다이렉트
		response.sendRedirect("/JavaWebEdu/now.jsp");
	} else {						// 아닐 경우 html구문 실행
%>
<html>
<head>
<meta charset="EUC-KR">
<title>로그인에 실패</title>
</head>
<body>
아이디가 era13이 아닙니다.

</body>
</html>
<%
	}
%>
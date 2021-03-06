<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>pageContext 기본객체</title>
</head>
<body>

<%
	HttpServletRequest httpRequest =
		(HttpServletRequest) pageContext.getRequest();
%>

request 기본객체와 pageContext.getRequest()의 동일 여부 : 
<%= request == httpRequest %>
<br>

pageContext.getOut() 메서드를 사용한 데이터 출력
<%
	pageContext.getOut().println("안녕하세요");
	// pageContext.getOut() -> out 기본 객체
%>


</body>
</html>
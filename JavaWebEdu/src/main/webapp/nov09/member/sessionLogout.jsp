<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>세션 로그아웃</title>
</head>
<body>
<%= session.getAttribute("MEMBERID")%> 
로그아웃 하였습니다.
<% 
	session.invalidate();
%>
<form action="<%= request.getContextPath() %>/nov09/member/sessionLoginForm.jsp" method="post">
	<input type="submit" value="돌아가기">
</form>
</body>
</html>
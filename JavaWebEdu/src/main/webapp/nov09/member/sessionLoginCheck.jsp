<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>로그인여부 검사</title>
</head>
<body>
<%
	String id = (String)session.getAttribute("MEMBERID");
	boolean login = id != null ? true : false;		// id가 존재하면 null이 아니므로 true 
	if(login) {
%>
		아이디 "<%= id %>""로 로그인 한 상태
<%
	} else {
%>
		로그인하지 않은 상태 <br>
<%
	}
%>
	<form action="<%= request.getContextPath() %>/nov09/member/sessionMain.jsp" method="post">
		<input type="submit" value="돌아가기">
	</form>
</body>
</html>
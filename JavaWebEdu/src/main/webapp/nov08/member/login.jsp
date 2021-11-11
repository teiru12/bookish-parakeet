<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="util.CookieBox" %>
<%
	String id = request.getParameter("id");
	String passwd = request.getParameter("passwd");
	
	if(id.equals(passwd)) {
		// ID와 암호가 같으면 로그인 성공
		// 로그인 성공 쿠키와, ID 저장 쿠키를 생성
		response.addCookie(CookieBox.createCookie("LOGIN", "SUCCESS", "/", -1));
		response.addCookie(CookieBox.createCookie("ID", id, "/", -1));
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>로그인 성공</title>
</head>
<body>
로그인에 성공하였습니다.
<jsp:forward page="./test.jsp" />
<%
	} else {	// 로그인 실패
%>
<script>
alert("로그인에 실패하였습니다.");
history.go(-1);
</script>
<%
	}
%>
</body>
</html>
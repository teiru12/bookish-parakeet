<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="java.net.URLEncoder" %>
<%@ page import="java.net.URLDecoder" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>쿠키 경로 지정</title>
</head>
<body>
<%
	Cookie cookie1 = new Cookie(
			"path1", URLEncoder.encode("경로:/JavaWebEdu/nov08/path1","euc-kr"));
	cookie1.setPath("/JavaWebEdu/nov08/path1");
	response.addCookie(cookie1);
	
	Cookie cookie2 = new Cookie(
			"path2", URLEncoder.encode("경로:","euc-kr"));
	response.addCookie(cookie2);
	
	Cookie cookie3 = new Cookie(
			"path3", URLEncoder.encode("경로:/", "euc-kr"));
	cookie3.setPath("/");
	response.addCookie(cookie3);
	
	Cookie cookie4 = new Cookie(
			"path4", URLEncoder.encode("경로:/JavaWebEdu/nov08/path2","euc-kr"));
	cookie4.setPath("/JavaWebEdu/nov08/path2");
	response.addCookie(cookie4);	
%>
다음과 같이 쿠키를 생성했습니다.<br>
<%= cookie1.getName() %> = <%= URLDecoder.decode(cookie1.getValue(), "euc-kr") %> [
	<%= cookie1.getPath() %>]<br>
<%= cookie2.getName() %> = <%= URLDecoder.decode(cookie2.getValue(), "euc-kr") %> [
	<%= cookie2.getPath() %>]<br>
<%= cookie3.getName() %> = <%= URLDecoder.decode(cookie3.getValue(), "euc-kr") %> [
	<%= cookie3.getPath() %>]<br>
<%= cookie4.getName() %> = <%= URLDecoder.decode(cookie4.getValue(), "euc-kr") %> [
	<%= cookie4.getPath() %>]<br>
</body>
</html>
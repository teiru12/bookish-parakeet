<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page session="true" %>
<%@ page import="java.util.Date" %>
<%@ page import="java.text.SimpleDateFormat" %>
<!DOCTYPE html>
<%
	Date time = new Date();
	SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
%>
<html>
<head>
<meta charset="EUC-KR">
<title>세션정보</title>
</head>
<body>
세션ID : <%= session.getId() %> <br>
<%
	time.setTime(session.getCreationTime());
%>
세션 생성 시간 : <%= formatter.format(time) %> <br>
<%
	time.setTime(session.getLastAccessedTime());
%>
최근 생성 시간 : <%= formatter.format(time) %> <br>
</body>
</html>
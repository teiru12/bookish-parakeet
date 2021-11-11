<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>application 객체의 서버 정보</title>
</head>
<body>
서버 이름 : <%= application.getServerInfo() %> <br>
서블릿 규약 Major 버전 : <%= application.getMajorVersion() %> <br>
서블릿 규약 Minor 버전 : <%= application.getMinorVersion() %> <br>
</body>
</html>
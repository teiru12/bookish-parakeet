<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page buffer="8kb" autoFlush="false" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="EUC-KR">
	<title>버퍼 정보</title>
</head>
<body>
버퍼 크기 : <%= out.getBufferSize() %> <br>
남은 크기 : <%= out.getRemaining() %> <br>
auto flush : <%= out.isAutoFlush() %> <br>
</body>
</html>
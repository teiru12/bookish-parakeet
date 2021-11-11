<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page buffer="1kb" autoFlush="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>autoFlush 속성값 false 예제</title>
</head>
<body>
<%
	for(int i=0;i<1000;i++){
		%>
		1234
		<%
	}
%>
<!-- 에러가 발생한다.  -->
</body>
</html>
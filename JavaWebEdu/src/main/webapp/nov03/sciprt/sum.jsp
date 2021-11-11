<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>합 구하기</title>
</head>
<body>
<%
	int sum = 0;
	for(int i=1;i<=10;i++){
		sum+=i;
	}
%>
1부터 10까지의 합은 <%= sum %>입니다.

<%
	sum=0;
	for(int i=11;i<=20;i++){
		sum+=i;
	}
%>  

11부터 20까지의 합은 <%= sum %>입니다. 
</body>
</html>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>�� ���ϱ�</title>
</head>
<body>
<%
	int sum = 0;
	for(int i=1;i<=10;i++){
		sum+=i;
	}
%>
1���� 10������ ���� <%= sum %>�Դϴ�.

<%
	sum=0;
	for(int i=11;i<=20;i++){
		sum+=i;
	}
%>  

11���� 20������ ���� <%= sum %>�Դϴ�. 
</body>
</html>
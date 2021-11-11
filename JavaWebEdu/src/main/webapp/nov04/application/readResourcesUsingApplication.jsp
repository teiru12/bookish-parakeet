<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="java.io.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>application 기본 객체 사용하여 자원 읽기</title>
</head>
<body>
<%
	BufferedReader br = null;
	char[] buff = new char[512];
	int len = -1;
	
	String path = "nov04/notice/notice.txt";
	
	try {
		br = new BufferedReader(
			new InputStreamReader(
				application.getResourceAsStream(path) ) );
		while( (len = br.read(buff)) != -1) {
			out.println(new String(buff, 0, len));
		}
	} catch(IOException e) { }
	finally {
		if(br!=null){
			try {
				br.close();
			} catch(IOException e) { }
		}
	}
%>

</body>
</html>
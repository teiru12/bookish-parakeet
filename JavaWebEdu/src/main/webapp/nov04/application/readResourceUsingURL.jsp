<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="java.io.*" %>
<%@ page import="java.net.URL" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>application �⺻ ��ü ����Ͽ� �ڿ� �б�2 - URL �̿�</title>
</head>
<body>
<%
	BufferedReader br = null;
	char[] buff = new char[512];
	int len = -1;
	
	String path = "/nov04/notice/notice.txt";
%>
�ڿ��� ���� ��� : <%= application.getRealPath(path) %>
<p>
<%= path %>�� ����<br>
	
<%
	try {
		URL url = application.getResource(path);
		br = new BufferedReader(
			new InputStreamReader(
				url.openStream() ) );
		
		while( (len=br.read(buff)) != -1) {
			out.println(new String(buff, 0, len));
		}
	} catch(IOException e) { }
	finally {
		if(br!=null){
			try{
				br.close();
			} catch(IOException e) { }
		}
	}
%>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="java.net.URLDecoder" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>��Ű ���</title>
</head>
<body>
<%
	Cookie[] cookies = request.getCookies();
	if(cookies!=null && cookies.length>0) {
		for(int i=0;i<cookies.length;i++) {
%>
			<%= cookies[i].getName() %> =
				<%= URLDecoder.decode(cookies[i].getValue(), "euc-kr") %> <br>
<%
		}
	} else {
%>
��Ű�� �������� �ʽ��ϴ�
<%
	}
%>

</body>
</html>
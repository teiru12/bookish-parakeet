<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="java.util.Enumeration" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>�ʱ�ȭ �Ķ���� �о����</title>
</head>
<body>
�ʱ�ȭ �Ķ���� ��� :
<ul>
	<%
		Enumeration initParamEnum = application.getInitParameterNames();
		while(initParamEnum.hasMoreElements()) {
			String initName = (String) initParamEnum.nextElement();
			String initParameter = application.getInitParameter(initName);
	%>
		<li>
	<%
			out.println(initName + " = " + initParameter);
		}
	%>
	</li>
</ul>
</body>
</html>
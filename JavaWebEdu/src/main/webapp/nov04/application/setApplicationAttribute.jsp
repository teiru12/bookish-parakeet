<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<%
	String name = request.getParameter("name");
	String value = request.getParameter("value");
	
	if(name != null && value != null) {
		application.setAttribute(name, value);
	}
%>
<html>
<head>
<meta charset="EUC-KR">
<title>application �Ӽ� ����</title>
</head>
<body>
<%
	if(name!=null && value!=null){
		out.println("application �⺻ ��ü�� �Ӽ� ���� : ");
		out.println(name + " = " + value);
	} else{
		out.println("application �⺻ ��ü�� �Ӽ� ���� ����");
}
%>

</body>
</html>
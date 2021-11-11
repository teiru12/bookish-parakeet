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
<title>application 속성 지정</title>
</head>
<body>
<%
	if(name!=null && value!=null){
		out.println("application 기본 객체의 속성 설정 : ");
		out.println(name + " = " + value);
	} else{
		out.println("application 기본 객체의 속성 설정 안함");
}
%>

</body>
</html>
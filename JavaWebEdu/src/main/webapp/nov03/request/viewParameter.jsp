<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="java.util.Enumeration" %>
<%@ page import="java.util.Map" %>
<%
	request.setCharacterEncoding("euc-kr");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>��û �Ķ���� ���</title>
</head>
<body>
<b>request.getParameter() �޼��� ���</b><br>
name �Ķ���� = <%= request.getParameter("name") %> <br>
address �Ķ���� = <%= request.getParameter("address") %> <br>
<p>
<b>request.getParameterValues() �޼��� ���</b><br>
pet �Ķ���� = 
<%
	String[] values = request.getParameterValues("pet");
	if(values != null) {
		for(int i=0; i<values.length;i++){
%>
			<%=	values[i] %>
<%		
		}
	}
%>
<p>
<b>request.getParameterNames() �޼��� ���</b><br>
<%
	Enumeration paramEnum = request.getParameterNames();
	while(paramEnum.hasMoreElements()){
		String str = (String)paramEnum.nextElement();
%>
		<%= str %>
<%
	}
%>
<p>
<b>request.getParameterMap() �޼��� ���</b><br>
<%
	Map<String, String[]> parameterMap = request.getParameterMap();
	String[] nameMap = parameterMap.get("pet");
	if(nameMap != null) {
		for(int i=0;i<nameMap.length;i++){
%>
			<%= nameMap[i] %>
<%
		}
	}
%>
</body>
</html>
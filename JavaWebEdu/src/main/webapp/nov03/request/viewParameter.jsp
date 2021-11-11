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
<title>요청 파라미터 출력</title>
</head>
<body>
<b>request.getParameter() 메서드 사용</b><br>
name 파라미터 = <%= request.getParameter("name") %> <br>
address 파라미터 = <%= request.getParameter("address") %> <br>
<p>
<b>request.getParameterValues() 메서드 사용</b><br>
pet 파라미터 = 
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
<b>request.getParameterNames() 메서드 사용</b><br>
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
<b>request.getParameterMap() 메서드 사용</b><br>
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
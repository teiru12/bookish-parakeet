<!-- http://localhost:9000/JavaWebEdu/nov4/response/login.jsp?memberId=era13 -->

<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<%
	String id = request.getParameter("memberId");
	if(id.equals("era13")) {		// memeberId�� era13�� ��� �����̷�Ʈ
		response.sendRedirect("/JavaWebEdu/now.jsp");
	} else {						// �ƴ� ��� html���� ����
%>
<html>
<head>
<meta charset="EUC-KR">
<title>�α��ο� ����</title>
</head>
<body>
���̵� era13�� �ƴմϴ�.

</body>
</html>
<%
	}
%>
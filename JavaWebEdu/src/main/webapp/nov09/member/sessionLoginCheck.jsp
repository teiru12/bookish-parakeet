<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>�α��ο��� �˻�</title>
</head>
<body>
<%
	String id = (String)session.getAttribute("MEMBERID");
	boolean login = id != null ? true : false;		// id�� �����ϸ� null�� �ƴϹǷ� true 
	if(login) {
%>
		���̵� "<%= id %>""�� �α��� �� ����
<%
	} else {
%>
		�α������� ���� ���� <br>
<%
	}
%>
	<form action="<%= request.getContextPath() %>/nov09/member/sessionMain.jsp" method="post">
		<input type="submit" value="���ư���">
	</form>
</body>
</html>
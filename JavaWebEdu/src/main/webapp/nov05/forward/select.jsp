<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>�ɼ� ���� ȭ��</title>
</head>
<body>
<form action="<%= request.getContextPath() %>/nov05/forward/view.jsp">
	���� ���� ������ ����:
	<select name="code">
		<option value="A">A������</option>
		<option value="B">B������</option>
		<option value="C">C������</option>
	</select>
	<input type="submit" value="�̵�">
</form>
</body>
</html>
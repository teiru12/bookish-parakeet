<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>ȸ������</title>
<link href="style.css" rel="stylesheet" type="text/css" />
</head>
<body>
<%
	request.setCharacterEncoding("euc-kr");
%>
<div id="wrap">
	<h1>��ȸ��������</h1>
	<div id="body">
			<table width="500px;">
				<colgroup>
					<col width="20%" />
					<col width="*" />
				</colgroup>
				<tr>
					<th colspan="2" class="subTitle">*���̵� �Է�</th>
				</tr>
				<tr>
					<th>����� ID</th>
					<td><%= request.getParameter("id") %></td>
				</tr>
				<tr>
					<th>��й�ȣ</th>
					<td><%= request.getParameter("passwd") %></td>
				</tr>
				<tr>
					<th colspan="2" class="subTitle">*�������� �Է�</th>
				</tr>
				<tr>
					<th>����� �̸�</th>
					<td><%= request.getParameter("name") %></td>
				</tr>
				<tr>
					<th>�ֹε�� ��ȣ</th>
					<td>
						<%= request.getParameter("jumin1") %> - <%= request.getParameter("jumin2") %>
					</td>
				</tr>
				<tr>
					<th>E-Mail</th>
					<td><%= request.getParameter("email") %></td>
				</tr>
				<tr>
					<th>Blog</th>
					<td><%= request.getParameter("blog") %></td>
				</tr>
				<tr>
					<th>�����ȣ</th>
					<td><%= request.getParameter("zipcode") %> </td>
				</tr>
				<tr>
					<th>�ּ�</th>
					<td><%= request.getParameter("address") %></td>
				</tr>
			</table>
	</div>
	<div id="footer">
		The end!!
	</div>
</div>
</body>
</html>
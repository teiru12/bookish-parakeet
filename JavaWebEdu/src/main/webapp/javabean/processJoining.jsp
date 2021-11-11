<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<%
	request.setCharacterEncoding("euc-kr");
%>
<jsp:useBean id="member" class="member.MemberInfo" scope="page" />
<jsp:setProperty name="member" property="*" />
<jsp:setProperty name="member" property="password" value="<%= member.getId() %>" />
<html>
<head>
<meta charset="EUC-KR">
<title>가입</title>
</head>
<body>
	<table width="400" border="1">
		<tr>
			<td>아이디</td>
			<td>
				<jsp:getProperty name="member" property="id" />
			</td>
			<td>비밀번호</td>
			<td>
				<jsp:getProperty name="member" property="password" />
			</td>
		</tr>
		<tr>
			<td>이름</td>
			<td>
				<jsp:getProperty name="member" property="name" />
			</td>
			<td>이메일</td>
			<td>
				<jsp:getProperty name="member" property="email" />
			</td>
		</tr>
		<tr>
			<td>주소</td>
			<td colspan="3">
				<jsp:getProperty name="member" property="address" />
			</td>
		</tr>
	</table>
</body>
</html>
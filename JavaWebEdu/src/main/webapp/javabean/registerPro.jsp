<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ include file="color.jsp" %>
<%
	request.setCharacterEncoding("euc-kr");
%>
<jsp:useBean id="regMem" class="member.RegisterBean" scope="page" />
<jsp:setProperty name="regMem" property="*" />
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>회원가입 확인</title>
<link href="style.css" type="text/css" rel="stylesheet" />
<script type="text/javascripty" src="./script.jsp"></script>
</head>
<body bgcolor="<%= bodyback_c %>">
	<table border="1" cellpadding="5" cellspacing="0" width="600">
		<colgroup>
			<col width="20%" />
			<col width="*" />
		</colgroup>
		<tr>
			<td colspan="3">
				<strong>회원가입 확인</strong>
			</td>
		</tr>
		<tr>
			<th bgcolor="<%= title_c %>">아이디</th>
			<td bgcolor="<%= value_c %>">
				<jsp:getProperty name="regMem" property="id" />
			</td>
		</tr>
		<tr>
			<th bgcolor="<%= title_c %>">비밀번호</th>
			<td bgcolor="<%= value_c %>">
				<jsp:getProperty name="regMem" property="passwd" />
			</td>
		</tr>	
		<tr>
			<th bgcolor="<%= title_c %>">비밀번호확인</th>
			<td bgcolor="<%= value_c %>">
				<jsp:getProperty name="regMem" property="repasswd" />
			</td>
		</tr>	
		<tr>
			<th bgcolor="<%= title_c %>">이름</th>
			<td bgcolor="<%= value_c %>">
				<jsp:getProperty name="regMem" property="name" />
			</td>
		</tr>
		<tr>
			<th bgcolor="<%= title_c %>">이메일</th>
			<td bgcolor="<%= value_c %>">
				<jsp:getProperty name="regMem" property="email" />
			</td>
		</tr>
		<tr>
			<th bgcolor="<%= title_c %>">전화번호</th>
			<td bgcolor="<%= value_c %>">
				<jsp:getProperty name="regMem" property="tel" />
			</td>
		</tr>
	</table>
</body>
</html>
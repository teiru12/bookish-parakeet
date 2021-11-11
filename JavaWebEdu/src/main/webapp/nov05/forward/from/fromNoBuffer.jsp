<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page buffer="none"%>
<%--
	버퍼가 없을 경우 <jsp:forward> 액션 태그가
	올바르게 실행되지 않을 수도 있다.
--%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>버퍼를 사용하지 않는 from.jsp</title>
</head>
<body>
이 페이지는 from.jsp가 생성한 것입니다.
<jsp:forward page="../to/to.jsp" />
</body>
</html>
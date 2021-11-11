<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>쿠키 삭제</title>
</head>
<body>
<% 
	Cookie[] cookies = request.getCookies();
	if(cookies!=null && cookies.length>0){
		for(int i=0;i<cookies.length;i++){
			if(cookies[i].getName().equals("name")){
				Cookie coo = new Cookie("name","");
				coo.setMaxAge(0);
				response.addCookie(coo);
			}
		}
	}
%>
name 쿠키를 삭제합니다.
</body>
</html>
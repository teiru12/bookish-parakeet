<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>��Ű ����</title>
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
name ��Ű�� �����մϴ�.
</body>
</html>
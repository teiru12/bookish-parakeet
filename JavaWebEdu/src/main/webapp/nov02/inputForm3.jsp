<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>회원가입</title>
<link href="style.css" rel="stylesheet" type="text/css" />

<script type="text/javascript">
function checkIt() {
	var userinput = eval("document.userinput");
	if(!userinput.id.value){
		alert("ID를 입력하세요!");
		return false;
	}
	if(!userinput.passwd.value){
		alert("비밀번호를 입력하세요!");
		return false;
	}
	if(!userinput.name.value){
		alert("이름을 입력하세요!");
		return false;
	}
	if(!userinput.jumin1.value || !userinput.jumin2.value){
		alert("주민등록번호를 입력하세요!");
		return false;
	}
}
</script>
</head>
<body>
	<div id="wrap">
		<form action="inputPro.jsp" name="userinput" onsubmit="return checkIt()" method="post">
			<h1>★회원가입★</h1>
			<div id="body">
				<table width="500px;">
					<colgroup>
						<col width="20%" />
						<col width="*" />
					</colgroup>
					<tr>
						<th colspan="2" class="subTitle">*아이디 입력</th>
					</tr>
					<tr>
						<th>사용자 ID</th>
						<td>
						</td>
					</tr>
					<tr>
						<th>비밀번호</th>
						<td>
						</td>
					</tr>
					<tr>
						<th>비밀번호 확인</th>
						<td>
						</td>
					</tr>
					<tr>
		
					</tr>
					<tr> 
						<th>사용자 이름</th>
						<td>
						</td>
					</tr>
					<tr> 
						<th>주민등록 번호</th>
						<td>
						</td>
					</tr>
					<tr> 
						<th>E-mail</th>
						<td>
						</td>
					</tr>
				</table>
			</div>
			<div id="footer">
				<input type="submit" name="confirm" class="inputBtn" value="등 록" />
				<input type="reset" name="reset" class="inputBtn" value="다시입력" />
				<input type="button" value="취 소" class="inputBtn"
					onclick="javascript:window.location='main.jsp'" />
			</div>
		</form>
	</div>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>ȸ������</title>
<link href="style.css" rel="stylesheet" type="text/css" />

<script type="text/javascript">
function checkIt() {
	var userinput = eval("document.userinput");
	if(!userinput.id.value){
		alert("ID�� �Է��ϼ���!");
		return false;
	}
	if(!userinput.passwd.value){
		alert("��й�ȣ�� �Է��ϼ���!");
		return false;
	}
	if(!userinput.name.value){
		alert("�̸��� �Է��ϼ���!");
		return false;
	}
	if(!userinput.jumin1.value || !userinput.jumin2.value){
		alert("�ֹε�Ϲ�ȣ�� �Է��ϼ���!");
		return false;
	}
}
</script>
</head>
<body>
	<div id="wrap">
		<form action="inputPro.jsp" name="userinput" onsubmit="return checkIt()" method="post">
			<h1>��ȸ�����ԡ�</h1>
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
						<td>
						</td>
					</tr>
					<tr>
						<th>��й�ȣ</th>
						<td>
						</td>
					</tr>
					<tr>
						<th>��й�ȣ Ȯ��</th>
						<td>
						</td>
					</tr>
					<tr>
		
					</tr>
					<tr> 
						<th>����� �̸�</th>
						<td>
						</td>
					</tr>
					<tr> 
						<th>�ֹε�� ��ȣ</th>
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
				<input type="submit" name="confirm" class="inputBtn" value="�� ��" />
				<input type="reset" name="reset" class="inputBtn" value="�ٽ��Է�" />
				<input type="button" value="�� ��" class="inputBtn"
					onclick="javascript:window.location='main.jsp'" />
			</div>
		</form>
	</div>
</body>
</html>
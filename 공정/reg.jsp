<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>공정 관리 프로그램</title>
<link rel="stylesheet" href="style.css">

<script type="text/javascript">
	function check() {
		if(fm.WORK_NO.value==""){
			alert("공장지시번호가 입력되지 않았습니다.");
			fm.WORK_NO.focus();
			return false;
		}
		fm.submit();
	}
	
	function resetCheck() {
		alert("정보를 지우고 처음부터 다시 입력합니다");
		fm.WORK_NO.focus();
	}
</script>

</head>
<body>
	<h2 style="text-align: center;">공정 등록</h2>
	
	<form name="fm" method="post" action="reg_ok.jsp">
	<table border="1">
		<tr>
			<td>공정지시번호</td>
			<td style="text-align: left;"><input type="text" name="WORK_NO" autofocus>예 2503001</td>
		</tr>
		
		<tr>
			<td colspan="2" align="center">
				<input type="button" value="공정등록" onclick="check()">
				<input type="reset" value="다시쓰기" onclick="resetCheck()">
			</td>
		</tr>
	</table>
	
	</form>
</body>
</html>
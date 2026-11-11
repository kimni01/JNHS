<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>my shop join</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/style.css">
</head>
<body>
	<div class="form-box">
		<h1>MY SHOP</h1>
		<h2>CREATE ACCOUNT</h2>
		<p>회원가입하고 쇼핑을 시작하세요.</p>
		
		<% 
		if ("duplicate".equals(
				request.getParameter("error"))) {
		%>
		<p class="error">
			이미 사용중인 아이디 또는 이메일입니다.
		</p>	
		<%
		} else if ("invalid".equals(
				request.getParameter("error"))) {
		%>
		<p class="error">
			입력 정보를 확인해주세요
		</p>
		<% } %>
		
		<form action="${pageContext.request.contextPath}/join" method="post">
			<input type="text" name="id" placeholder="아이디" maxlength="50" required>
			<input type="password" name="pw" placeholder="비밀번호" maxlength="72" required>
			<input type="text" name="name" placeholder="이름" maxlength="50" required>
			<input type="email" name="email" placeholder="이메일" maxlength="50" required>
			<button type="submit">
				회원가입
			</button>
		</form>
		<p>이미 회원이신가요?</p>
		<a href="login.jsp">
			로그인 하기
		</a>
		
		<br><br>
		<a href="index.jsp">
			메인으로 돌아가기
		</a>
	</div>
</body>
</html>
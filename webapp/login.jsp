<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<% 
	if(session.getAttribute("loginid") !=null ) {
		response.sendRedirect(
				request.getContextPath() + "/main.jsp"
				);
		return;
	}

%>

<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>my shop | login</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/style.css">
</head>
<body>
	<div class="form-box">
		<h1>MY SHOP</h1>
		<h2>WELCOME BACK</h2>
		<p>로그인하고 쇼핑을 시작하세요.</p>
		
		<% 
		if ("1".equals(
				request.getParameter("error"))) {
		%>
		<p class="error">
			아이디 또는 비밀번호가 틀렸습니다.
		</p>	
		<%
		} else if ("1".equals(
				request.getParameter("joined"))) {
		%>
		<p class="success">
			로그인이 되었습니다.
		</p>
		<% } %>
		
		<form action="${pageContext.request.contextPath}/join" method="post">
			<input type="text" name="id" placeholder="아이디를 입력하세요" maxlength="50" required>
			<input type="password" name="pw" placeholder="비밀번호를 입력하세요" maxlength="72" required>
			<button type="submit">
				로그인
			</button>
		</form>
		<p>아직 회원이 아니신가요?</p>
		<a href="${pageContext.request.contextPath}/reg.jsp">
			회원가입하기
		</a>
		
		<br><br>
		<a href="${pageContext.request.contextPath}/index.jsp">
			처음 화면으로
		</a>
	</div>
</body>
</html>
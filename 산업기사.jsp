<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>일정 관리 프로그램</title>
<link rel="stylesheet" type="text/css" href="style.css">
</head>
<body>
<header><h2>일정 관리 프로그램</h2></header>

<nav>
	<ul>
		<li><a href = "reg.jsp" target = "section_page">일정등록</a></li>
		<li><a href = "list.jsp" target = "section_page">회원현황</a></li>
		<li><a href = "list_j.jsp" target = "section_page">일정현황</a></li>
		<li><a href = "main.jsp" target = "section_page">홈으로</a></li>
	</ul>
</nav>
<section>
	<iframe name = "section_page" src = "main.jsp"></iframe>
</section>

<footer>
	<h3>Copyright (c) 2026 주식회사 0000 Inc All Rights Reserved.</h3>
</footer>

</body>
</html>

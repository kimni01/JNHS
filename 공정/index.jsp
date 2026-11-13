<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>공정 관리 프로그램</title>
<link rel="stylesheet" href="style.css">
</head>
<body>
	<header>
		<h2>공정 관리 프로그램</h2>
	</header>
	
	<nav>
		<ul>
			<li><a href="reg.jsp" target="aa">공정 등록</a></li>
			<li><a href="list.jsp" target="aa">공정내역조회</a></li>
			<li><a href="main.jsp" target="aa">홈으로</a></li>
		</ul>
	</nav>
	<section>
		<iframe name="aa" src="main.jsp"></iframe>
	</section>
	<footer>
		<h4>HRDKOREA Copyrightⓒ All rights reserved. Human Resources Development
            Service of Korea
		</h4>
	</footer>
</body>
</html>
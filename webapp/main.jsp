<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<% 
	String username = 
		(String)session.getAttribute("loginname");

	if(username == null) {
		
		response.sendRedirect(
				request.getContextPath() + "/login.jsp"
				);
		return;
	}

%>

<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>my shop</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/style.css">

</head>

<body>
	<header>
		<h1>MY SHOP</h1>
		
		<nav>
			<a href="main.jsp">HOME</a>
			<a href="product.jsp">SHOP</a>
			<a href="cart.jsp">CART</a>
			<a href="logout.jsp">LOGOUT</a>
		</nav>
	</header>
	
	<section class="banner">
		<h2>your style, your life</h2>
		
		<p>환영합니다, <%=username %> 님!</p>
		
		<p>나만의 스타일을 완성해 보세요.</p>
		
		<a href="product.jsp" class="btn">shop now</a>
	</section>
	
	<section class="products">
		<h2>best products</h2>
		
		<div class="product-list">
		
		
		
		<div class="product">
			<div class="product-image">★</div>
			<h3>프리미엄 후드티</h3>
			<p>39,000원</p>
			<a href="product.jsp">상품 보기</a>
		</div>
		
		<div class="product">
			<div class="product-image">♠</div>
			<h3>데일리 운동화</h3>
			<p>59,000원</p>
			<a href="product.jsp">상품 보기</a>
		</div>
		
		<div class="product">
			<div class="product-image">ⓦ</div>
			<h3>미니멀 백팩</h3>
			<p>45,000원</p>
			<a href="product.jsp">상품 보기</a>
		</div>
		
		<div class="product">
			<div class="product-image">θ</div>
			<h3>베이직 반팔티</h3>
			<p>19,000원</p>
			<a href="product.jsp">상품 보기</a>
		</div>
	</div>
	</section>
	
	<footer>
		<p>my shop ⓒ 2026</p>
		<p>premium online store</p>
	</footer>
	
</body>
</html>
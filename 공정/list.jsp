<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="DBPKG.util" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>작업 공정 조회</title>
<link rel="stylesheet" href="style.css">
</head>
<body>
	<h2 style="text-align: center;">작업 공정 조회</h2>
	
	<table border="1">
		<tr>
			<td>공정 지시 번호</td>
		</tr>
		
		<%
		Connection conn = util.getConnection();
		
		String sql = """
				select WORK_NO from tbl_worklist
				""";
		PreparedStatement pstmt = conn.prepareStatement(sql);
		ResultSet rs = pstmt.executeQuery();
		
		%>
		<% while(rs.next()) { %>
		<tr>
			<td><%= rs.getString(1) %></td>
		</tr>
		<% } %>
		
		<%
		rs.close();
		pstmt.close();
		conn.close();
		%>
	</table>
</body>
</html>
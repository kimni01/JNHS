<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"  %>
<%@ page import="DBPKG.util" %>

<% 
request.setCharacterEncoding("UTF-8");

String WORK_NO = request.getParameter("WORK_NO");

Connection conn = util.getConnection();

String sql = """
			insert into tbl_worklist(WORK_NO) values (?)
""";
PreparedStatement pstmt = conn.prepareStatement(sql);

pstmt.setString(1, WORK_NO);

pstmt.executeUpdate();

pstmt.close();
conn.close();
%>

<script>
alert("공정등록이 정상적으로 등록되었습니다.");
location.href="main.jsp";
</script>
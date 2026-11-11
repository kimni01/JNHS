<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<% 
String userid = 
	(String)session.getAttribute("logindid");

	if(userid == null) {
		
		response.sendRedirect(
				request.getContextPath() + "/login.jsp"
				);
	}else {
		
		response.sendRedirect(
				request.getContextPath() + "/main.jsp"
				);
	}

%>
    
 
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

    <%
    
    session.removeAttribute("name"); // 해당 세션을 지워줘
    
    response.sendRedirect("test01.jsp");
    
    %>
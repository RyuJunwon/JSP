<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
	response.sendRedirect("test08.jsp");
	// 처음에 전송한(요청한) 데이터가 유지되지 않음
	// URL이 변경된다.
	// == 새로운 요청이 처리된다.
%>

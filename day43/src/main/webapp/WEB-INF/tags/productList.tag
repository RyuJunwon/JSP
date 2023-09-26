<%@ tag language="java" pageEncoding="UTF-8"%>

<%@ attribute name="border" %>
<%@ attribute name="bgcolor" %>
<!-- 3,4번 라인을 통해 변수가 생긴 것임 -->

<jsp:useBean id="pb" class="test.ProductBean" />

<!-- 태그 바디에 있는 걸 불러올 수 있음 -->
<h1><jsp:doBody /></h1>
<hr>

<table border = "${ border }" bgcolor = "${ bgcolor }">
	<% for(String v : pb.getPdatas()) { %>
	<tr><td><%= v %></td></tr>
	<% }  %>
</table>
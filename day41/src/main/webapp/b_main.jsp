<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="model.BoardVO,java.util.ArrayList" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>메인</title>
</head>
<body>
<!-- VIEW 에서의 모든 요청은 Controller로 간다는 것!! 중요!! -->
<%
	String mid = (String)session.getAttribute("mid");
	// == 아, 세션에 로그인 정보가 "name"이라는 변수명으로 저장되어 있구나!

	if(mid == null){ // 로그인 안된 상태
%>
	<a href = "controller.jsp?action=signupPage">회원가입</a>
	<form action="controller.jsp" method="post">
		<input type="hidden" name="action" value="login" > 
		아이디: <input type="text" name="mid" placeholder = "아이디를 입력하세요"> <br> <br>
		비밀번호: <input type="password" name="mpw" placeholder = "비밀번호를 입력하세요"> <br>
		<input type="submit" value="로그인">
	</form>
	
<%
   }
   else {
      // form 태그는 input 태그 등으로 "데이터를 보낼수있음"
      // a 태그는 별도로 데이터를 보내지않을때 사용함
      out.println("<a href='controller.jsp?action=mypagePage'>" + mid +"님, 마이페이지</a> <a href='controller.jsp?action=logout'>로그아웃</a>");
   }
%>

<hr>

<table border="1">
	<tr>
		<th>글 번호</th><th>글 제목</th><th>작성자</th>
	</tr>
	<%
		ArrayList<BoardVO> datas=(ArrayList<BoardVO>)request.getAttribute("datas"); 
		// ㄴ> 매 순간 DB에서 받아오기 때문에 session 데이터가 아님.
		for(BoardVO v:datas){
	%>
	<tr>
		<td><a href="controller.jsp?action=board&num=<%=v.getNum()%>"><%=v.getNum()%></a></td>
		<!-- ㄴ> 글 번호를 누르면 해당 페이지로 가줄래? 글마다 정보가 다르기 때문에 ? 뒤에 코드 사용 -->
		<td><%=v.getTitle()%></td>
		<td><%=v.getWriter()%></td>
	</tr>
	<%
		}
	%>
</table>
<br>
<%
	if(mid != null){
%>
		<a href = "controller.jsp?action=writePage">게시글 작성</a>
<% 
	}
%>


</body>
</html>
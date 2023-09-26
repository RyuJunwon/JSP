<%@ tag language="java" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ attribute name="type" %>
<%@ attribute name="bid" %>

<!-- 응집도가 높이기 위해 아래와 같이 사용 : 작성과 관련된 코드가 모두 모여있기 때문 -->

<c:if test="${empty mid}">
	<input type="text" placeholder="내용을 작성하려면 로그인하세요." disabled size="30">
</c:if>

<c:if test="${not empty mid}">
	<c:choose>
		
		<c:when test="${ type == 'board' }">
			<form action="insertBoard.do" method="post">
				<input type="text" name="mid" value="${ mid }" readonly> 
				<input type="text" name="bcontent" required placeholder="내용을 작성하세요.">
				<input type="submit" value="글 작성하기">
			</form>
		</c:when>

		<c:when test="${ type == 'reply' }">
			<form action="insertReply.do" method="post">
				<input type="text" name="mid" value="${ mid }" readonly> 
				<input type="hidden" name="bid" value="${ board.bid }"> 
				<input type="text" name="rcontent" required placeholder="댓글을 입력하세요.">
				<input type="submit" value="댓글 작성">
			</form>
		</c:when>
	</c:choose>
</c:if>

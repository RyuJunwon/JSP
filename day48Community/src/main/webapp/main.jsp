<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib tagdir="/WEB-INF/tags" prefix="kim" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>메인 페이지</title>
</head>
<body>

<script type="text/javascript">
	function signup(){
		window.open("signup.jsp","회원가입 창","width=450,height=300");
	}
</script>

<div id="header">
	<h1>SNS 커뮤니티 실습 프로젝트</h1>
</div>

<div id="gnb">
	<ul>
		<li><a href="main.do">메인으로 가기</a></li>
		<kim:login />
	</ul>
</div>

<div id="content">
	<section>
		<kim:write type="board" bid="${ board.bid }" />
		
	</section>
	<hr>
	<section>
		<c:forEach var="v" items="${ datas }">
			<c:set var="board" value="${ v.board }" /> <!-- 새로운 변수를 생성하는 것보단 변수명을 줄이기 위한 목표로 앞과 같이 -->
			<c:set var="rdatas" value="${ v.rdatas }" /> <!-- v.rdatas를 rdatas로 줄여서 사용한다. -->
			${ board.bid } ${ board.bcontent } | <a href="fav.do?bid=${ board.bid }">하트</a> [${ board.favCnt }] <br>
			<c:forEach var="r" items="${rdatas }">
				${ r.rid } ${ r.rcontent } <br>
			</c:forEach>
			<kim:write type="reply" bid="${ board.bid }" />
			<hr>
		</c:forEach>
		<a href="main.do?count=${ count+2 }">[ 더보기 ]</a> <!-- 페이지네이션 -->
	</section>
</div>

<div id="footer">
	<h3>&copy; NAVER corp. | 회사소개 | 이용약관 | 개인정보처리방침 | 고객센터</h3>
</div>

</body>
</html>
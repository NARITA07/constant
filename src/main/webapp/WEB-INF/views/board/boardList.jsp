<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>공지사항</title>
	<link rel="stylesheet" href="../../../resources/css/csslist.css">
	<script type="text/javascript" src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
</head>
<body>
	<div class="board_wrap">
		<div class="board_title">
			<strong>공지사항</strong>
			<p>공지사항을 빠르고 정확하게 알려드립니다.</p>
		</div>
		<div class="board_list_wrap">
				<div class="board_list">
					<div class="top">
						<div class="num">번호</div>
						<div class="title">제목</div>
						<div class="writer">글쓴이</div>
						<div class="date">작성일</div>
						<div class="count">조회</div>
					</div>
					<div>
					<c:forEach items="${list}" var="boardlist">
						<div class="num">${boardlist.bno}</div>
						<div class="title"><a href="/board/boardDetail?bno=${boardlist.bno}">${boardlist.title}</a></div>
						<div class="writer">${boardlist.id}</div>
						<div class="date">${boardlist.regdate}</div>
						<div class="count">${boardlist.cnt}</div>
					</c:forEach>
					</div>
				</div>
				<div class="board_page">
					<c:if test="${paging.prev}">
						<a href="/board/boardList?type=${paging.cri.type}&keyword=${paging.cri.keyword}&pageNum=${paging.startPage-1}&amount=${paging.cri.amount}" class="bt prev">이전</a>
					</c:if>
					
					<!-- begin(1)이 end(10)될 동안 반복(1일 10일 될 동안 반복) -->
					<c:forEach begin="${paging.startPage}" end="${paging.endPage}" var="num">
					 	<a href="/board/boardList?type=${paging.cri.type}&keyword=${paging.cri.keyword}&pageNum=${num}&amount=${paging.cri.amount}" class="num">${num}</a>
					</c:forEach>
					
					<!-- next(다음)이 true이면 다음버튼 활성화 -->
					<c:if test="${paging.next}">
						<a href="/board/boardList?type=${paging.cri.type}&keyword=${paging.cri.keyword}&pageNum=${paging.endPage+1}&amount=${paging.cri.amount}" class="bt next">다음</a>
					</c:if>
					<!-- 
					<a href="#" class="bt first"><<</a>
					<a href="#" class="bt prev"><</a>
					<a href="#" class="num on">1</a>
					<a href="#" class="num">2</a>
					<a href="#" class="num">3</a>
					<a href="#" class="num">4</a>
					<a href="#" class="num">5</a>
					<a href="#" class="bt next">></a>
					<a href="#" class="bt last">>></a>
					 -->
				</div>
				<div class="bt_wrap">
					<c:if test="${login.id!=null}">
						<a href="/board/boardWrite" class="on">등록</a>
					</c:if>
					<!-- <a href="#">수정</a> -->
				</div>
		</div>
	</div>
<script type="text/javascript" src="/resources/js/list.js"></script>
</body>
</html>
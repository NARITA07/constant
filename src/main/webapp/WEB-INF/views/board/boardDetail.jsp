<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>글보기</title>
<script type="text/javascript" src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script type="text/javascript" src="../../../resources/js/reply.js"></script>
<link rel="stylesheet" href="../../../resources/css/csslist.css">
</head>
<body>

	<div class="board_wrap">
		<div class="board_title">
			<strong>게시판</strong>
			<p> </p>
		</div>
		<div class="board_view_wrap">
				<div class="board_view">
					<div class="board_view">
					
						<div class="title">
							${detail.title}
						</div>
						<div class="info">
							<dl>
								<dt>번호</dt>
								<dd>${detail.bno}</dd>
							</dl>
							<dl>
								<dt>글쓴이</dt>
								<dd>${detail.id}</dd>
							</dl>
							<dl>
								<dt>작성일</dt>
								<dd>${detail.regdate}</dd>
							</dl>
							<dl>
								<dt>조회</dt>
								<dd>${detail.cnt}</dd>
							</dl>
						</div>
						<div class="cont">
							${detail.content}
						</div>
						<div id="uploadResult">
							<ul>
								
							</ul>
						</div>
						<div>
							<label>댓글</label>
							<input type="hidden" value="${detail.bno}" id="bno" name="bno">
							<input type="hidden" value="${sessionScope.login.id}" id="id">
						</div>
						<div>
							<textarea rows="5" cols="50" id="reply" placeholder="로그인후 작성해주세요."></textarea>
						</div>
						<div>	
							<input type="button" value="댓글쓰기" id="add">
						</div>
						<div id="chat">
							<ul id="replyUL">
							</ul>
						</div>
						<div id="replyPage">
						</div>
					</div>
				</div>
				
				<%-- <c:set var="a" value='session.getAttribute("id")' />--%>
				<%--<c:set var="b" value="<%=rs.getString(4)%>" />  --%>
				<div class="bt_wrap">
					<a href="boardList" class="on">목록</a>
						<c:if test="${sessionScope.login.id == detail.id}">
							<a href="boardEdit?bno=${detail.bno}">수정</a>
						</c:if>
						<c:if test="${sessionScope.login.id == detail.id}">
							<a href="boardRemove?bno=${detail.bno}&content=${detail.content}">삭제</a>
						</c:if>
				</div>
		</div>
	</div>

<!--  <script type="text/javascript" src="../../../resources/js/attach.js"></script> -->
</body>
</html>
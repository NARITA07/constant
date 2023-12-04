<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>수정</title>
	<link rel="stylesheet" href="../../../resources/css/csslist.css">
</head>
<body>
<form action="/board/boardEdit" method="post">
	<div class="board_wrap">
		<div class="board_title">
			<strong>수정 페이지</strong>
			<p> </p>
		</div>
		<div class="board_write_wrap">
				<div class="board_write">
					<div class="title">
						<dl>
							<dt>제목</dt>
							<dd><input type="text" placeholder="제목 입력" name="title" value="${edit.title}">${edit.title}</dd>
						</dl>
					</div>
					<div class="info">
						<dl>
							<dt>글쓴이</dt>
							<dd>${edit.id}<input type="hidden" name="id" readonly value="${sessionScope.login.id}"></dd>
						</dl>
						<dl>
							<dd><input type="hidden" name="bno" readonly value="${edit.bno}"></dd>
						</dl>
					</div>
					<div class="cont">
						<textarea placeholder="내용 입력" name="content">${edit.content}</textarea>
					</div>
				</div>
				
				<div class="bt_wrap">
					<input type="submit" value="수정">
					<a href="/board/boardList">취소</a>
				</div>
				
		</div>
	</div>
</form>
<script type="text/javascript">alert("삭제되었습니다.");</script>
</body>
</html>
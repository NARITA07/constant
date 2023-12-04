<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>글쓰기</title>
	<link rel="stylesheet" href="../../../resources/css/csslist.css">
</head>
<body>
<form id="form" action="/board/boardWrite" method="post">
	<div class="board_wrap">
		<div class="board_title">
			<strong>게시판</strong>
			<p> </p>
		</div>
		<div class="board_write_wrap">
				<div class="board_write">
					<div class="title">
						<dl>
							<dt>제목</dt>
							<dd><input type="text" placeholder="제목 입력" name="title"></dd>
						</dl>
					</div>
					<div class="info">
						<dl>
							<dt>ID</dt>
							<dd>${sessionScope.login.id}<input type="hidden" name="id" readonly value="${sessionScope.login.id}"></dd>
						</dl>
						<dl>
							
						</dl>
					</div>
					<div class="cont">
						<textarea placeholder="내용 입력" name="content"></textarea>
					</div>
				</div>
				
				<div class="bt_wrap">
					<input type="submit" id="input1" value="등록">
					<a href="/board/boardList">취소</a>
				</div>
		</div>
	</div>
</form>
</body>
<script type="text/javascript">

ClassicEditor
.create(document.querySelector('content'))
.catch(error=>{
	console.error(error);
});

</script>
</html>
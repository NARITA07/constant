<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script type="text/javascript" src="/resources/js/uploadAjax.js"></script>
<script src="https://cdn.ckeditor.com/ckeditor5/35.1.0/classic/ckeditor.js"></script>

</head>
<body>

<h1>게시판 글쓰기 화면</h1>

<form id="form" action="/write" method="post">
제목 <input type="text" name="title"><br>
<!-- 내용 <input type="text" name="content"><br> -->
<textarea rows="" cols="" name="content" id="content_area"></textarea>

<!-- <input type="file" name="uploadFile" multiple > -->
<input type="button" id="uploadBtn" value="글쓰기">

</form>
<div id="uploadResult">
	<ul>
		
	</ul>	
</div>	


</body>
<script type="text/javascript">

ClassicEditor
.create(document.querySelector('#content_area'))
.catch(error=>{
	console.error(error);
});

</script>
</html>
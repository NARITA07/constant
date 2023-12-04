<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>회원상세페이지</h1>
<form method="post">
<table border="1">
	<tr>
		<td>아이디</td><td><input type="hidden" name="id" value="${detail.id}">${detail.id}</td>
	</tr>
	<tr>
		<td>비밀번호</td><td><input type="password" name="password" value="${detail.password}"></td>
	</tr>
	<tr>
		<td>이름</td><td><input type="text" name="name" value="${detail.name}"></td>
	</tr>
	<tr>
		<td colspan="2">
			<input type="submit" value="회원정보수정" formaction="modify">
			<input type="submit" value="회원삭제" formaction="remove">
		</td>
	</tr>
</table>
</form>
</body>
</html>
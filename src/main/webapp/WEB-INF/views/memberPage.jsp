<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h2>회원가입 페이지 입니다.(member 폴더를 생성 안함.)</h2>
<form action="memberPage" method="post">
	<table border="1">
		<tr>
			<td>아이디</td><td><input type="text" name="id"></td>
		</tr>
		<tr>
			<td>비밀번호</td><td><input type="password" name="password"></td>
		</tr>
		<tr>
			<td>이름</td><td><input type="text" name="name"></td>
		</tr>
		<tr>
			<td colspan="2">
				<input type="submit" value="회원가입">
				<a href="memberlist">회원목록리스트(관리자)</a>
			</td>
		</tr>
	</table>
</form>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>회원목록리스트</h1>
<table border="1">
<tr>
	<td>id</td><td>이름</td>
</tr>
<c:forEach items="${list}" var="boardlist">
	<tr>
		<td><a href="memberdetail?id=${boardlist.id}">${boardlist.id}</a></td><td>${boardlist.name}</td>
	</tr>
</c:forEach>
</table>
</body>
</html>
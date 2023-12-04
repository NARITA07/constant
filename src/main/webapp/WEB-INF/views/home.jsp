<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<html>
<head>
	<title>Home</title>
</head>
<body>
<h1>
	Hello world!  
</h1>

<P>  The time on the server is ${serverTime}. </P>

<a href="memberPage">회원가입 화면으로 이동</a><br> <!-- localhost8080/ 은 자동으로 입력됨 -->
<a href="http://localhost:8080/board/boardList">게시판으로 이동</a>
</body>
</html>

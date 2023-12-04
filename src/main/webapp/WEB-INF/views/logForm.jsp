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
<form method="post">
<table>
	<tr>
		<td>ID</td>
		<td>
			<input type="text" name="id">
		</td>
	</tr>
	<tr>
		<td>PW</td>
		<td>
			<input type="password" name="password">
		</td>
	</tr>
	<tr>
		<td colspan="2">
			<c:choose> 
				<c:when test="${sessionScope.login eq null}">
					<input type="submit" formaction="login" value="로그인">
				</c:when>
				<c:otherwise>
					<input type="submit" formaction="logout" value="로그아웃">
				</c:otherwise>
			</c:choose>
		</td>
	</tr>
</table>
</form>
</body>
</html>
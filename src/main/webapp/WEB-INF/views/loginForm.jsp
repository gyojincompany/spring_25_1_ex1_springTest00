<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>loginForm.jsp</title>
</head>
<body>
	<h2>관리자 로그인</h2>
	<hr>
	<c:url value="j_spring_security_check" var="loginUrl"></c:url>	
	<form action="${loginUrl }" method="post">
		<c:if test="${param.ng != null}">
		<p>로그인이 실패하였습니다.<br>
			<c:if test="${SPRING_SECURITY_LAST_EXCEPTION != NULL }">
			에러메세지 : <c:out value="${SPRING_SECURITY_LAST_EXCEPTION.message }"></c:out><br>
			</c:if>	
		</p>		
		</c:if>
		아이디 : <input type="text" name="j_username"><br><br>
		비밀번호 : <input type="text" name="j_password"><br><br>
		<input type="submit" value="관리자로그인">
	
	</form>
</body>
</html>
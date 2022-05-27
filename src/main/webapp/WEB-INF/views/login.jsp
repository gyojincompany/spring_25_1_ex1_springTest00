<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>login.jsp</title>
</head>
<body>
	<h2>여기는 login.jsp 입니다!!</h2><br>
	<hr>	
	
	<c:if test="${not empty pageContext.request.userPrincipal }">
		<p>로그인 상태임</p>	
	</c:if>
	<c:if test="${empty pageContext.request.userPrincipal }">
		<p>로그인 하지 않은 상태임</p>	
	</c:if>
	
	로그인한 아이디 : ${pageContext.request.userPrincipal.name }<br><br>
	
	<a href="${pageContext.request.contextPath}/j_spring_security_logout">로그아웃</a>
</body>
</html>
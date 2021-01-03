<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<div class="header">
	<span class="logo"> <a href="${pageContext.request.contextPath}/admin">LOGO</a>
	</span>
	<div class="auth">
		<div class="user">사용자 : ${sessionScope.memberName}(${sessionScope.memberID})</div>
		<div class="logout">
			<a href="${pageContext.request.contextPath}/logout">로그아웃</a>
		</div>
	</div>
</div>
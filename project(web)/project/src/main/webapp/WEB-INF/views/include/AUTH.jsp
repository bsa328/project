<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<div class="header">
	<span class="logo"> <a href="${pageContext.request.contextPath}/admin">LOGO</a>
	</span>
	<div class="auth">
		<div class="user">사용자 : ${sessionScope.empName}, 사원번호 : ${sessionScope.empNum}, 권한 : ${sessionScope.empAuth}</div>
		<div class="logout">
			<a href="#" id="logout">로그아웃</a>
		</div>
	</div>
</div>
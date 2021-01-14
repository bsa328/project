<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<div class="header">
	<span class="logo"> <a href="${pageContext.request.contextPath}/admin">LOGO</a>
	</span>
	<div class="auth">
		<div class="user">
			[${sessionScope.empName}, ${sessionScope.empNum}] {권한 : ${sessionScope.empAuth}} <a href="#" id="logout">로그아웃</a>
		</div>
		<div class="logout"><a href="${pageContext.request.contextPath}" id=""><i class="fas fa-home"></i></a></div>
	</div>
</div>
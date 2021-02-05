<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html lang="ko">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>LOGO</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/reset.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/main.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
</head>

<body>
	<div class="auth">
		<div class="info p400">
			<c:if test="${sessionScope.empName == null}">
				<a href="${pageContext.request.contextPath}/login">로그인</a>
			</c:if>
			<c:if test="${sessionScope.empName == null}">
				<a href="${pageContext.request.contextPath}/register">사원가입</a>
			</c:if>
			<c:if test="${sessionScope.empName != null}">
				<span class="user"><a href="#">[${sessionScope.empBuseoName}] ${sessionScope.empName}님이 로그인 중입니다.</a></span>
				<a href="#" id="logout">로그아웃</a>
			</c:if>
			<a href="${pageContext.request.contextPath}/admin">그룹웨어로 접속</a>
		</div>
	</div>
	<div class="body">
		<div class="nav p400">
			<div class="">
				<h1>
					<a href="${pageContext.request.contextPath}" style="color: #2357b6;">LOGO</a>
				</h1>
			</div>
			<div class="menu">
				<a href="#">회사소개</a>
				<a href="#">사업소개</a>
				<a href="#">채용정보</a>
				<a href="#">커뮤니티</a>
				<a href="#">사내마당</a>
			</div>
		</div>
		<div class="main">
			<img src="images/main-img.jpg">
			<div class="intro">CONTACT US</div>
			<div class="board p400">
				<div class="b-menu">
					<img src="images/email.png">
					<div class="a">Email</div>
					<div class="b">greenart@naver.com</div>
				</div>
				<div class="b-menu">
					<img src="images/visit.png">
					<div class="a">Visit</div>
					<div class="b">부산광역시 부산남구 수영로 299, 루미너스 빌딩 10층</div>
				</div>
				<div class="b-menu">
					<img src="images/tel.jpg">
					<div class="a">Tel</div>
					<div class="b">051-912-1000</div>
				</div>
			</div>
		</div>
	</div>
	<hr>
	<footer class="">
		<span class="">&copy;Copyright All Rights reserved.</span>
	</footer>
</body>

	<script>
		$(function() {
			$("#logout").click(function() {
				
				$.ajax({
					url : "${pageContext.request.contextPath}/logout",
					type : "POST",
					data : "",
					success : function(data) {
						if (data == "success") {
							alert("로그아웃 되었습니다.");
							window.location.href = '${pageContext.request.contextPath}';
							}
						},
						error : function() {
							alert("시스템 에러");
						}
					});
				
				});
			});
	</script>
</html>
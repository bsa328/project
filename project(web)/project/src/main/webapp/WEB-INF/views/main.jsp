<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html lang="ko">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>LOGO</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
</head>

<body>
	<c:if test="${sessionScope.empName == null}">
		<a href="${pageContext.request.contextPath}/login">로그인</a>
	</c:if>
	<c:if test="${sessionScope.empName == null}">
		<a href="${pageContext.request.contextPath}/register">사원가입</a>
	</c:if>
	<c:if test="${sessionScope.empName != null}">
		<span class="">${sessionScope.empName}님이 로그인 중입니다.</span>
		<a href="#" id="logout">로그아웃</a>
	</c:if>
	<a href="${pageContext.request.contextPath}/admin">그룹웨어로 접속</a>
</body>
	
<script>
	$(function() {
		$("#logout").click(function() {
			$.ajax({
				url		: "${pageContext.request.contextPath}/logout",
				type	: "POST",
				data	: "",
				success	: function(data) {
					if(data == "success") {
						alert("로그아웃 되었습니다.");		
						window.location.href = '${pageContext.request.contextPath}';
					}
				},
				error	: function() {
					alert("시스템 에러");
				}
			});
		});
	});
</script>

</html>
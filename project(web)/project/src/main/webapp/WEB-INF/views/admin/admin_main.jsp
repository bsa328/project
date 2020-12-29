<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>LOGO</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/reset.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/common.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/admin_main.css">
</head>

<body>
    <div class="header">
        <div class="">
            <a href="${pageContext.request.contextPath}/admin">LOGO</a>
        </div>
        <div class="">
        	${sessionScope.userName}(${sessionScope.userID})님 환영합니다!
        </div>
        <div class="logout">
            <a href="${pageContext.request.contextPath}/logout">로그아웃</a>
        </div>
    </div>

    <div class="body">
        <div class="menu-wrap">
            메뉴
        </div>
        <div class="main-wrap">
            메인
        </div>
    </div>
</body>

</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>GROUPWARE | 회원가입</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/reset.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/login.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/register.css">
</head>

<body>
    <div class="login-box">
        <div class="image-wrap">
            <div class="logo">
                <h1>Groupware</h1>
                <h3>computer supported corporative</h3>
            </div>
        </div>
        <div class="login-wrap">
            <h1>회원가입</h1>
            <form method="POST" action="${pageContext.request.contextPath}/member/register" autocomplete="off">
                <input type="text" name="userid" id="userid" placeholder="이름" required tabindex="1" autofocus />
                <input type="text" name="userid" id="userid" placeholder="아이디 6~10자리" required tabindex="2" />
                <input type="password" name="passwd" id="passwd" placeholder="비밀번호 8자리 이상" required tabindex="3" />
                <input type="password" name="passwd" id="passwd" placeholder="비밀번호 확인" required tabindex="4" />
                <button type="submit" class="btn" tabindex="5">가입하기</button>
                <div class="register">
                    <div class="forgot">
                    </div>
                    <div class="join" tabindex="6">
                        <a href="${pageContext.request.contextPath}/login">로그인</a>
                    </div>
                </div>
            </form>
        </div>
    </div>
</body>

</html>
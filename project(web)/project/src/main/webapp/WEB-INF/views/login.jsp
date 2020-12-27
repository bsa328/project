<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>LOGO</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/login.css">
    <script src="https://kit.fontawesome.com/3249ba5f1a.js" crossorigin="anonymous"></script>
</head>

<body>
    <div class="login-box">
        <div class="image-wrap">
            <div class="logo">
				<h1>LOGO</h1>
				<h3>logo logo logo logo logo</h3>
            </div>
        </div>
        <div class="login-wrap">
            <h1>로그인</h1>
            <form method="POST" action="${pageContext.request.contextPath}/login" autocomplete="off">
                <input type="text" name="userID" id="userID" placeholder="아이디" required autofocus />
                <input type="password" name="passwd" id="passwd" placeholder="비밀번호" required />
                <button type="submit" class="btn">로그인</button>
                <div class="register">
                    <div class="forgot">
                        <a href="#">아이디/비밀번호 찾기</a>
                    </div>
                    <div class="join">
                        <a href="${pageContext.request.contextPath}/member/register">회원가입</a>
                    </div>
                </div>
            </form>
            <div class="" style="margin-top:80px;text-align: center;color: #f00;">
            	${loginMsg}
            </div>
        </div>
    </div>
</body>

</html>
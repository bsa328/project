<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>LOGO</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/register.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
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
            <h1>회원가입</h1>
            <form onSubmit="return checkPwd();" method="POST" action="${pageContext.request.contextPath}/member/register" autocomplete="off">
                <input type="text" name="userName" id="userName" placeholder="이름" required tabindex="1" autofocus />
                <input type="text" name="userID" id="userID" placeholder="아이디 4~10자리" required tabindex="2" />
                <input type="password" name="passwd" id="passwd" placeholder="비밀번호 5자리 이상" required tabindex="3" />
                <input type="password" name="repasswd" id="repasswd" placeholder="비밀번호 확인" required tabindex="4" />
                <button type="submit" class="btn" tabindex="5">가입하기</button>
                <div class="register">
                    <div class="forgot">
                    </div>
                    <div class="join" tabindex="6">
                        <a href="${pageContext.request.contextPath}/login">로그인</a>
                    </div>
                </div>
            </form>
             <div class="" style="margin-top:40px;text-align: center;color: #f00;">
            	${registerMsg}
            </div>
        </div>
    </div>
</body>
<script>
	function checkPwd() {
		var a = $("#userID");
		var b = $("#passwd");
		var c = $("#repasswd");

		if(a.val().length < 4 || a.val().length > 10 ) {
			alert("아이디는 4자리 이상 10자리 이하로 입력하셔야 합니다.");
			a.val("");
			a.focus();
			return false;
		}

		if(b.val().length < 5) {
			alert("비밀번호는 5자리 이상 입력하셔야 합니다.");
			b.val("");
			b.focus();
			return false;
		}

		if(b.val() != c.val()) {
			alert("입력하신 비밀번호가 다릅니다. 다시 입력해주세요.");
			c.val("");
			c.focus();
			return false;
		}

	}
</script>

</html>
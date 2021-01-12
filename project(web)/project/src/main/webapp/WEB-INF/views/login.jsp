<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>LOGO</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/login.css">
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
			<form method="post" id="frm" action="${pageContext.request.contextPath}/login" autocomplete="off">
				<input type="text" class="noto" name="memberID" id="memberID" placeholder="사원번호를 입력하세요." required  tabindex="1" autofocus />
				<input type="password" class="noto" name="memberPasswd" id="memberPasswd" placeholder="비밀번호를 입력하세요."  tabindex="2" required />
				<button type="submit" class="btn bold" tabindex="3">로그인</button>
				<div class="register">
					<div class="forgot" tabindex="4">
						<a href="#">사원번호·비밀번호 찾기</a>
					</div>
					<div class="join" tabindex="5">
						<a href="${pageContext.request.contextPath}/register">사원가입</a>
					</div>
				</div>
			</form>
			<div class="" style="font-size: 15px; font-weight: 700; margin-top: 80px; text-align: center; color: #f00;">
			${loginMsg}
			</div>
		</div>
	</div>
</body>

</html>
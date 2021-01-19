<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>LOGO</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/login.css">
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
			<h1>로그인</h1>
			<form method="post" id="frm" action="${pageContext.request.contextPath}/login" autocomplete="off">
				<input type="text" class="noto" name="empNum" id="empNum" placeholder="사원번호를 입력하세요." required  tabindex="1" autofocus />
				<input type="password" class="noto" name="empPwd" id="empPwd" placeholder="비밀번호를 입력하세요."  tabindex="2" required />
				<button type="submit" class="btn bold" tabindex="3" id="btn">로그인</button>
				<div class="register">
					<div class="forgot" tabindex="4">
						<a href="${pageContext.request.contextPath}">메인으로</a>
					</div>
					<div class="join" tabindex="5">
						<a href="${pageContext.request.contextPath}/register">사원가입</a>
					</div>
				</div>
			</form>
			<div class="" style="font-size: 15px; font-weight: 700; margin-top: 80px; text-align: center; color: #f00;">
			
			</div>
		</div>
	</div>
</body>

<script>
	function checkInfo() {

		$("#btn").click(function() {

			if ($.trim($("#empNum").val()) == '') {
				alert("사원번호를 입력하세요.");
				$("#empNum").focus();
				
				return false;
			}

			if ($.trim($("#empPwd").val()) == '') {
				alert("비밀번호를 입력하세요.");
				$("#empPwd").focus();
				
				return false;
			}

			$("#frm").submit();
			
		});
		
	}

	$(function() {
		checkInfo();
	});
</script>

</html>
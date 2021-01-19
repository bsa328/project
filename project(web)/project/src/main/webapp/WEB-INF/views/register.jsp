<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>LOGO</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/register.css">
<link rel="stylesheet" href="http://code.jquery.com/ui/1.8.18/themes/base/jquery-ui.css" type="text/css" />
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
<script src="http://code.jquery.com/ui/1.8.18/jquery-ui.min.js"></script>

<script>
	$(document).ready(function() {
		$("#empEnter").datepicker({
			dateFormat : 'yy-mm-dd'
		});
	});
</script>
<body>
	<div class="login-box">
		<div class="image-wrap">
			<div class="logo">
				<h1>LOGO</h1>
				<h3>logo logo logo logo logo</h3>
			</div>
		</div>
		<div class="login-wrap">
			<h1>사원가입</h1>
			<form id="frm" method="post" action="${pageContext.request.contextPath}/register" autocomplete="off">
				<select name="empBuseoCode" id="empBuseoCode" class="noto">
					<option value="buseo">부서를 선택하세요.</option>
					<option value="100">관리부</option>
					<option value="200">기획부</option>
					<option value="300">인사부</option>
					<option value="400">영업부</option>
					<option value="500">생산부</option>
				</select>
				<select name="empGradeCode" id="empGradeCode" class="noto">
					<option value="grade">직책을 선택하세요.</option>
					<option value="1">부장</option>
					<option value="2">과장</option>
					<option value="3">대리</option>
					<option value="4">사원</option>
				</select>
				<input type="text" class="noto" name="empEnter" id="empEnter" placeholder="입사년월일을 선택하세요." required tabindex="1" />
				<input type="text" class="noto" name="empName" id="empName" placeholder="사원명을 입력하세요." required tabindex="2" />
				<input type="password" class="noto" name="empPwd" id="empPwd" placeholder="비밀번호를 입력하세요." required tabindex="3" />
				<input type="password" class="noto" name="repasswd" id="repasswd" placeholder="비밀번호 확인을 입력하세요." required tabindex="4" />
				<button type="button" id="btn" class="btn bold" tabindex="5">가입하기</button>
				<div class="register">
					<div class="forgot">
						<a href="${pageContext.request.contextPath}">메인으로</a>
					</div>
					<div class="join" tabindex="6">
						<a href="${pageContext.request.contextPath}/login">로그인</a>
					</div>
				</div>
			</form>
		</div>
	</div>
</body>

<script>
	function checkInfo() {

		$("#btn").click(function() {

			if ($("#empBuseoCode").val() == 'buseo') {
				alert("부서를 선택해주세요.");

				return false;
			}

			if ($("#empGradeCode").val() == 'grade') {
				alert("직책을 선택해주세요.");

				return false;
			}

			if ($("#empEnter").val() == '') {
				alert("입사년월일을 선택하세요.");

				return false;
			}

			if ($.trim($("#empName").val()) == '') {
				alert("사원명을 입력하세요.");
				$("#empName").focus();

				return false;
			}

			if ($.trim($("#empPwd").val()) == '') {
				alert("비밀번호를 입력하세요.");
				$("#empPwd").focus();

				return false;
			}

			if ($.trim($("#repasswd").val()) == '') {
				alert("비밀번호 확인을 입력하세요.");
				$("#repasswd").focus();

				return false;
			}

			if ($("#empPwd").val() != $("#repasswd").val()) {
				alert("비밀번호를 다시 확인해주세요.");
				$("#repasswd").val("");
				$("#repasswd").focus();

				return false;
			}

			$("#frm").submit();
			alert("회원가입이 완료되었습니다.");
			
		});

	}

	$(function() {
		checkInfo();
	});
</script>

</html>
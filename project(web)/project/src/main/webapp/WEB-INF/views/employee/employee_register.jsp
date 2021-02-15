<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/include/HEADER.jsp"%>
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/board.css">
<script src="${pageContext.request.contextPath}/lib/jquery.js" type="text/javascript"></script>
<script src="${pageContext.request.contextPath}/ckeditor/ckeditor.js"></script>
<link rel="stylesheet" href="http://code.jquery.com/ui/1.8.18/themes/base/jquery-ui.css" type="text/css" />
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
<script src="http://code.jquery.com/ui/1.8.18/jquery-ui.min.js"></script>

<script>
	$(document).ready(function() {
		$("#datepicker").datepicker({
			dateFormat : 'yy-mm-dd'
		});
	});
</script>

<body>
	<div class="html">
		<%@ include file="/WEB-INF/views/include/AUTH.jsp"%>
		<div class="body">
			<%@ include file="/WEB-INF/views/include/MENU.jsp"%>
			<div class="main">
				<div class="page-wrap">
					<div class="title m-b10 bold">
						<span class="">사원관리 > 사원등록</span>
					</div>
					<div class="btn-box m-b5">
						<button></button>
						<button class="btn-white" id="list" onclick="location.href='${pageContext.request.contextPath}/employee/employee_list'">목록으로</button>
					</div>
					<form id="frm" method="post" action="${pageContext.request.contextPath}/employee/employee_register" autocomplete="off">
						<div class="board- btn-box">
							<div class="photo-box">
								<div class="photo m-b5">
									<div style="width: 100%; height: 100%; background-color: #eee;"></div>
								</div>
								<div class="file">
									<input type="file" />
								</div>
							</div>
							<table border="1" style="width: 89%;">
								<tr class="center">
									<td class="bg-eee td-8">회사명</td>
									<td class="td-12 p-3">
										<input type="text" id="empCompany" name="empCompany" value="그린컴퓨터" readonly />
									</td>
									<td class="bg-eee td-8">*부서명</td>
									<td class="td-12 p-3">
										<select class="select" id="empBuseoCode" name="empBuseoCode">
											<option value="buseo">부서를 선택하세요.</option>
											<option value="100">관리부</option>
											<option value="200">기획부</option>
											<option value="300">인사부</option>
											<option value="400">영업부</option>
											<option value="500">생산부</option>
										</select>
									</td>
									<td class="bg-eee td-8">*직책명</td>
									<td class="td-12 p-3">
										<select class="select" id="empGradeCode" name="empGradeCode">
											<option value="grade">직책을 선택하세요.</option>
											<option value="1">부장</option>
											<option value="2">과장</option>
											<option value="3">대리</option>
											<option value="4">사원</option>
										</select>
									</td>
									<td class="bg-eee td-8">*입사년월일</td>
									<td class="td-12 p-3">
										<input type="text" id="datepicker" name="empEnter" readonly />
									</td>
									<td class="bg-eee td-8">*비밀번호</td>
									<td class="td-12 p-3">
										<input type="text" id="empPwd" name="empPwd" />
									</td>
								</tr>
								<tr class="center">
									<td class="bg-eee td-8">*사원명</td>
									<td class="td-12 p-3">
										<input type="text" id="empName" name="empName" />
									</td>
									<td class="bg-eee td-8">성별</td>
									<td class="td-12 p-3">
										<select class="select" id="empGender" name="empGender">
											<option value="남자">남자</option>
											<option value="여자">여자</option>
										</select>
									</td>
									<td class="bg-eee td-8">생년월일</td>
									<td class="td-12 p-3">
										<input type="text" class="td-62" id="empBirth" name="empBirth" placeholder="ex)19970328" maxlength="8" />
										<select class="td-36" name="empBth">
											<option value="양력">양력</option>
											<option value="음력">음력</option>
										</select>
									</td>
									<td class="bg-eee td-8">휴대폰</td>
									<td class="td-12 p-3">
										<select class="td-36">
											<option value="010">010</option>
										</select>
										<input type="text" class="td-62" id="empPhone" name="empPhone" maxlength="8" placeholder="- 생략" />
									</td>
									<td class="bg-eee td-8">내선번호</td>
									<td class="td-12 p-3">
										<select class="td-36">
											<option value="051">051</option>
										</select>
										<input type="text" class="td-62" id="empTel" name="empTel" maxlength="7" placeholder="- 생략" />
									</td>
								</tr>
							</table>
						</div>
						<div class="total-num" style="text-align: right;">*는 필수항목</div>
						<div class="board- m-t10">
							<div class="total-num bold m-b5">추가사항 입력</div>
							<textarea name="empDetail" id="editor" class="noto"></textarea>
							<script>
								CKEDITOR.replace('editor');
								CKEDITOR.config.height = 200;
							</script>
						</div>
						<div class="center m-t5">
							<button type="submit" class="btn-blue" id="btn">등록하기</button>
							<button type="reset" class="btn-white">새고로침</button>
						</div>
						<input type="hidden" name="empNum" value="${empNum}" />
					</form>
				</div>
			</div>
		</div>
	</div>
	<%@ include file="/WEB-INF/views/include/FOOTER.jsp"%>
	<script>
	$("#list").click(function () {
		alert("내용저장에 실패했습니다.");
	});
	
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

			if ($("#datepicker").val() == '') {
				alert("입사년월일을 선택하세요.");
				return false;
			}

			if ($.trim($("#empPwd").val()) == '') {
				alert("비밀번호를 입력하세요.");
				$("#empPwd").focus();
				return false;
			}

			if ($.trim($("#empName").val()) == '') {
				alert("사원명을 입력하세요.");
				$("#empName").focus();
				return false;
			}

			$("#frm").submit();
			alert("사원등록이 완료되었습니다.");
		});

	}

	$(function() {
		checkInfo();
	});
	</script>
</html>

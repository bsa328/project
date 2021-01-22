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
						<button class="btn-white" onclick="location.href='${pageContext.request.contextPath}/employee/employee_list'">목록으로</button>
					</div>
					<form id="frm" method="post" action="${pageContext.request.contextPath}/employee/employee_register" autocomplete="off">
						<div class="board-list btn-box">
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
										<select class="td-36">
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
								<tr class="center">
									<td class="bg-eee td-8">채용형태</td>
									<td class="td-12 p-3">
										<select class="select" id="empRecruit" name="empRecruit">
											<option value="공개채용">공개채용</option>
											<option value="특별채용">특별채용</option>
											<option value="수시채용">수시채용</option>
										</select>
									</td>
									<td class="bg-eee td-8">희망직무</td>
									<td class="td-12 p-3">
										<input type="text" name="empHopeJob">
									</td>
									<td class="bg-eee td-8">이메일</td>
									<td class="td-12 p-3">
										<input type="text" id="empEmail" name="empEmail" />
									</td>
									<td class="bg-eee td-8">병역구분</td>
									<td class="td-12 p-3">
										<select class="select" name="empMilitary">
											<option value="병역필">병역필</option>
											<option value="병역미필">병역미필</option>
											<option value="공익">공익</option>
										</select>
									</td>
									<td class="bg-eee td-8">종교</td>
									<td class="td-12 p-3">
										<select class="select" name="empReligion">
											<option value="무교">무교</option>
											<option value="불교">불교</option>
											<option value="기독교">기독교</option>
										</select>
									</td>
								</tr>
								<tr class="center">
									<td class="bg-eee td-8">취미</td>
									<td class="td-12 p-3">
										<input type="text" name="empHobby" />
									</td>
									<td class="bg-eee td-8">특기</td>
									<td class="td-12 p-3">
										<input type="text" name="empSpecialty" />
									</td>
									<td class="bg-eee td-8">장애여부</td>
									<td class="td-12 p-3">
										<select class="select" name="empDisability">
											<option value="비장애">비장애</option>
											<option value="장애">장애</option>
										</select>
									</td>
									<td class="bg-eee td-8">보훈대상여부</td>
									<td class="td-12 p-3">
										<select class="select" name="empVeteran">
											<option value="비대상">비대상</option>
											<option value="대상">대상</option>
										</select>
									</td>
									<td class="bg-eee td-8">결혼여부</td>
									<td class="td-12 p-3">
										<select class="select" name="empMarriage">
											<option value="미혼">미혼</option>
											<option value="기혼">기혼</option>
										</select>
									</td>
								</tr>
								<tr class="center">
									<td class="bg-eee td-8">보유자격1</td>
									<td class="td-12 p-3">
										<input type="text" name="empQualification1" />
									</td>
									<td class="bg-eee td-8">보유자격2</td>
									<td class="td-12 p-3">
										<input type="text" name="empQualification2" />
									</td>
									<td class="bg-eee td-8">보유자격3</td>
									<td class="td-12 p-3">
										<input type="text" name="empQualification3" />
									</td>
									<td class="bg-eee td-8">보유자격4</td>
									<td class="td-12 p-3">
										<input type="text" name="empQualification4" />
									</td>
									<td class="bg-eee td-8">보유자격5</td>
									<td class="td-12 p-3">
										<input type="text" name="empQualification5" />
									</td>
								</tr>
								<tr class="center">
									<td class="bg-eee td-8">어학사항1</td>
									<td class="td-12 p-3">
										<input type="text" class="td-62" name="empLanguage1" />
										<select class="td-36" name="empLanguageLevel1" id="empLanguageLevel1">
											<option value="">등급</option>
											<option value="상">상</option>
											<option value="중">중</option>
											<option value="하">하</option>
										</select>
									</td>
									<td class="bg-eee td-8">어학사항2</td>
									<td class="td-12 p-3">
										<input type="text" class="td-62" name="empLanguage2" />
										<select class="td-36" name="empLanguageLevel2" id="empLanguageLevel2">
											<option value="">등급</option>
											<option value="상">상</option>
											<option value="중">중</option>
											<option value="하">하</option>
										</select>
									</td>
									<td class="bg-eee td-8">어학사항3</td>
									<td class="td-12 p-3">
										<input type="text" class="td-62" name="empLanguage3" />
										<select class="td-36" name="empLanguageLevel3" id="empLanguageLevel3">
											<option value="">등급</option>
											<option value="상">상</option>
											<option value="중">중</option>
											<option value="하">하</option>
										</select>
									</td>
									<td class="bg-eee td-8">어학사항4</td>
									<td class="td-12 p-3">
										<input type="text" class="td-62" name="empLanguage4" />
										<select class="td-36" name="empLanguageLevel4" id="empLanguageLevel4">
											<option value="">등급</option>
											<option value="상">상</option>
											<option value="중">중</option>
											<option value="하">하</option>
										</select>
									</td>
									<td class="bg-eee td-8">어학사항5</td>
									<td class="td-12 p-3">
										<input type="text" class="td-62" name="empLanguage5" />
										<select class="td-36" name="empLanguageLevel5" id="empLanguageLevel5">
											<option value="">등급</option>
											<option value="상">상</option>
											<option value="중">중</option>
											<option value="하">하</option>
										</select>
									</td>
								</tr>
								<tr class="center">
									<td class="bg-eee td-8">상벌사항1</td>
									<td class="td-12 p-3">
										<input type="text" name="empRewardPunish1" />
									</td>
									<td class="bg-eee td-8">상벌사항2</td>
									<td class="td-12 p-3">
										<input type="text" name="empRewardPunish2" />
									</td>
									<td class="bg-eee td-8">상벌사항3</td>
									<td class="td-12 p-3">
										<input type="text" name="empRewardPunish3" />
									</td>
									<td class="bg-eee td-8">상벌사항4</td>
									<td class="td-12 p-3">
										<input type="text" name="empRewardPunish4" />
									</td>
									<td class="bg-eee td-8">상벌사항</td>
									<td class="td-12 p-3">
										<input type="text" name="empRewardPunish5" />
									</td>
								</tr>
							</table>
						</div>
						<div class="total-num" style="text-align: right;">*는 필수항목</div>
						<div class="board-list m-t10">
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
						<input type="hidden" name="empNum" value="${sessionScope.empNum}" />
					</form>
				</div>
			</div>
		</div>
	</div>
	<%@ include file="/WEB-INF/views/include/FOOTER.jsp"%>
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

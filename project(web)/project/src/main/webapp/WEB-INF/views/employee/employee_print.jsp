<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/include/HEADER.jsp"%>
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/board.css">

<body>
	<div class="page-wrap p-10">
		<div class="title m-b10 bold">
			<span class="">${view.empNum}, ${view.empName}</span>
		</div>
		<div class="board-list btn-box">
			<div class="photo-box">
				<div class="photo m-b5">
					<img src="${pageContext.request.contextPath}/images/not-found.jpg" style="width: 100%; height: 100%;" />
				</div>
				<div class="file"></div>
			</div>
			<table border="1" style="width: 89%;">
				<tr class="center">
					<td class="bg-eee td-8">회사명</td>
					<td class="td-12 p-10 left">${view.empCompany}</td>
					<td class="bg-eee td-8">부서명</td>
					<td class="td-12 p-10 left">${view.empBuseoName}</td>
					<td class="bg-eee td-8">직책명</td>
					<td class="td-12 p-10 left">${view.empGradeName}</td>
					<td class="bg-eee td-8">입사년월일</td>
					<td class="td-12 p-10 left">${view.empEnter}</td>
					<td class="bg-eee td-8">비밀번호</td>
					<td class="td-12 p-10 left">
						<c:choose>
							<c:when test="${sessionScope.empNum eq 'admin' || sessionScope.empNum eq view.empNum}">${view.empPwd}</c:when>
							<c:otherwise>****</c:otherwise>
						</c:choose>
					</td>
				</tr>
				<tr class="center">
					<td class="bg-eee td-8">사원명</td>
					<td class="td-12 p-10 left">${view.empName}</td>
					<td class="bg-eee td-8">성별</td>
					<td class="td-12 p-10 left">${view.empGender}</td>
					<td class="bg-eee td-8">생년월일</td>
					<td class="td-12 p-10 left">
						<c:if test="${view.empBirth == null}"></c:if>
						<c:if test="${view.empBirth != null}">${view.empBirth} (${view.empBth})</c:if>
					</td>
					<td class="bg-eee td-8">휴대폰</td>
					<td class="td-12 p-10 left">
						<c:if test="${view.empPhone == null}"></c:if>
						<c:if test="${view.empPhone != null}">010${view.empPhone}</c:if>
					</td>
					<td class="bg-eee td-8">내선번호</td>
					<td class="td-12 p-10 left">
						<c:choose>
							<c:when test="${view.empTel == null}"></c:when>
							<c:otherwise>051${view.empTel}</c:otherwise>
						</c:choose>
					</td>
				</tr>
				<tr class="center">
					<td class="bg-eee td-8">채용형태</td>
					<td class="td-12 p-10 left">${view.empRecruit}</td>
					<td class="bg-eee td-8">희망직무</td>
					<td class="td-12 p-10 left">${view.empHopeJob}</td>
					<td class="bg-eee td-8">이메일</td>
					<td class="td-12 p-10 left">${view.empEmail}</td>
					<td class="bg-eee td-8">병역구분</td>
					<td class="td-12 p-10 left">${view.empMilitary}</td>
					<td class="bg-eee td-8">종교</td>
					<td class="td-12 p-10 left">${view.empReligion}</td>
				</tr>
				<tr class="center">
					<td class="bg-eee td-8">취미</td>
					<td class="td-12 p-10 left">${view.empHobby}</td>
					<td class="bg-eee td-8">특기</td>
					<td class="td-12 p-10 left">${view.empSpecialty}</td>
					<td class="bg-eee td-8">장애여부</td>
					<td class="td-12 p-10 left">${view.empDisability}</td>
					<td class="bg-eee td-8">보훈대상여부</td>
					<td class="td-12 p-10 left">${view.empVeteran}</td>
					<td class="bg-eee td-8">결혼여부</td>
					<td class="td-12 p-10 left">${view.empMarriage}</td>
				</tr>
				<tr class="center">
					<td class="bg-eee td-8">보유자격1</td>
					<td class="td-12 p-10 left">${view.empQualification1}</td>
					<td class="bg-eee td-8">보유자격2</td>
					<td class="td-12 p-10 left">${view.empQualification2}</td>
					<td class="bg-eee td-8">보유자격3</td>
					<td class="td-12 p-10 left">${view.empQualification3}</td>
					<td class="bg-eee td-8">보유자격4</td>
					<td class="td-12 p-10 left">${view.empQualification4}</td>
					<td class="bg-eee td-8">보유자격5</td>
					<td class="td-12 p-10 left">${view.empQualification5}</td>
				</tr>
				<tr class="center">
					<td class="bg-eee td-8">어학사항1</td>
					<td class="td-12 p-10 left">
						<c:if test="${view.empLanguage1 == null}"></c:if>
						<c:if test="${view.empLanguage1 != null}">${view.empLanguage1} (${view.empLanguageLevel1})</c:if>
					</td>
					<td class="bg-eee td-8">어학사항2</td>
					<td class="td-12 p-10 left">
						<c:if test="${view.empLanguage2 == null}"></c:if>
						<c:if test="${view.empLanguage2 != null}">${view.empLanguage2} (${view.empLanguageLevel2})</c:if>
					</td>
					<td class="bg-eee td-8">어학사항3</td>
					<td class="td-12 p-10 left">
						<c:if test="${view.empLanguage3 == null}"></c:if>
						<c:if test="${view.empLanguage3 != null}">${view.empLanguage3} (${view.empLanguageLevel3})</c:if>
					</td>
					<td class="bg-eee td-8">어학사항4</td>
					<td class="td-12 p-10 left">
						<c:if test="${view.empLanguage4 == null}"></c:if>
						<c:if test="${view.empLanguage4 != null}">${view.empLanguage4} (${view.empLanguageLevel4})</c:if>
					</td>
					<td class="bg-eee td-8">어학사항5</td>
					<td class="td-12 p-10 left">
						<c:if test="${view.empLanguage5 == null}"></c:if>
						<c:if test="${view.empLanguage5 != null}">${view.empLanguage5} (${view.empLanguageLevel5})</c:if>
					</td>
				</tr>
				<tr class="center">
					<td class="bg-eee td-8">상벌사항1</td>
					<td class="td-12 p-10 left">${view.empRewardPunish1}</td>
					<td class="bg-eee td-8">상벌사항2</td>
					<td class="td-12 p-10 left">${view.empRewardPunish2}</td>
					<td class="bg-eee td-8">상벌사항3</td>
					<td class="td-12 p-10 left">${view.empRewardPunish3}</td>
					<td class="bg-eee td-8">상벌사항4</td>
					<td class="td-12 p-10 left">${view.empRewardPunish4}</td>
					<td class="bg-eee td-8">상벌사항5</td>
					<td class="td-12 p-10 left">${view.empRewardPunish5}</td>
				</tr>
			</table>
		</div>
		<div class="board-list m-t10">
			<div class="total-num bold m-b5">추가사항</div>
			<div class="memo noto p-10">${view.empDetail}</div>
		</div>
		<div class="center m-t5">
			<button type="button" class="btn-blue" id="btn" onClick="doPrint();">프린트하기</button>
			<button type="button" class="btn-white" id="" onClick="doClose();">창닫기</button>
		</div>
	</div>
</body>
<script>
	function doPrint() {
		window.print();
	}

	function doClose() {
		window.close();
	}
</script>
</html>
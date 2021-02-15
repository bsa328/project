<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/include/HEADER.jsp"%>
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/board.css">

<body>
	<div class="html">
		<%@ include file="/WEB-INF/views/include/AUTH.jsp"%>
		<div class="body">
			<%@ include file="/WEB-INF/views/include/MENU.jsp"%>
			<div class="main">
                <div class="page-wrap">
                    <div class="title m-b10 bold">
                        <span class="">${view.empNum}, ${view.empName}</span>
                    </div>
                    <div class="btn-box m-b5">
                        <button></button>
                        <button class="btn-white"
                            onclick="location.href='${pageContext.request.contextPath}/employee/employee_list'">목록으로</button>
                    </div>
                    <div class="board-list btn-box">
                        <div class="photo-box">
                            <div class="photo m-b5">
                                <img src="${pageContext.request.contextPath}/images/not-found.jpg" style="width: 100%; height: 100%;" />
                            </div>
                            <div class="file">
                            </div>
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
                        </table>
                    </div>
                    <div class="board-list m-t10">
                        <div class="total-num bold m-b5">추가사항</div>
                        <div class="memo noto p-10">${view.empDetail}</div>
                    </div>
                    <div class="center m-t5">
                        <c:if test="${sessionScope.empNum eq 'admin' || sessionScope.empNum eq view.empNum}">
                        	<button class="btn-red">사원수정</button>
                        </c:if>
                        <button type="button" class="btn-blue" id="" onClick="empPrint();">인쇄하기</button>
                    </div>
                </div>
            </div>
		</div>
	</div>
	<%@ include file="/WEB-INF/views/include/FOOTER.jsp"%>
	
<script>
function empPrint() {
	var url 	= "${pageContext.request.contextPath}/employee/employee_print?empNum="+${view.empNum};
	var nick 	= "print";
	var opt 	= "width=1000, height=600";
	window.open(url, nick, opt);
}
</script>
</html>
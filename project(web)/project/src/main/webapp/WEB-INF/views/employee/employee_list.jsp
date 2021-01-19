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
                        <span class="">사원관리 > 사원목록</span>
                    </div>
                    <div class="btn-box m-b5">
                        <button class="btn-red" id="">선택삭제</button>
                        <button class="btn-blue"
                            onclick="location.href='${pageContext.request.contextPath}/employee/employee_register'">사원등록</button>
                    </div>
                    <div class="board-list">
                        <table border="1">
                            <tr class="center bg-eee">
                                <td class="td-3"><input type="checkbox" onClick="chkAll();" id="chkAll" /></td>
                                <td class="td-4">번호</td>
                                <td class="">사원명</td>
                                <td class="td-12">근무부서</td>
                                <td class="td-8">직급</td>
                                <td class="td-10">사원번호</td>
                                <td class="td-10">비밀번호</td>
                                <td class="td-10">입사년월일</td>
                                <td class="td-10">가입일</td>
                                <td class="td-6">승인여부</td>
                                <td class="td-4">권한</td>
                                <td class="td-6">비고</td>
                            </tr>
                            <tr class="center">
                                <td><input type="checkbox" name="chk" class="chk" /></td>
                                <td>10</td>
                                <td><a href="${pageContext.request.contextPath}/employee/employee_view">박부장</a></td>
                                <td>관리부</td>
                                <td>부장</td>
                                <td><a href="${pageContext.request.contextPath}/employee/employee_view">2110011</a></td>
                                <td>1</td>
                                <td>2021-01-01</td>
                                <td>2021-01-15</td>
                                <td class="p-3">
                                    <select class="select" name="searchOpt">
                                        <option value="">거부</option>
                                        <option value="">승인</option>
                                    </select>
                                </td>
                                <td>1</td>
                                <td><button class="s-btn-blue" id="">수정</button>
                                    <button class="s-btn-white" id="">삭제</button>
                                </td>
                            </tr>
                        </table>
                    </div>
                    <div class="search-box m-t5">
                        <div class="total-num">전체 사원수 : 10명</div>
                        <form method="post" action="${pageContext.request.contextPath}/employee/employee_list">
	                        <div class="">
	                                <select class="w-150" name="searchOpt">
	                                    <option value="">전체검색</option>
	                                    <option value=""> 사원명</option>
	                                    <option value="">근무부서</option>
	                                    <option value="">사원번호</option>
	                                </select>
	                                <input type="text" class="w-150" name="words" required autocomplete="off" />
	                                <button type="submit" class="btn-white" style="width: 70px;">검색</button>
	                        </div>
                        </form>
                    </div>
                    <div class="paging m-t10 center">
						<span class="page"><a href=""><i class="fas fa-angle-double-left"></i></a></span>
						<span class="page"> <a href=""><i class="fas fa-angle-left"></i></a></span>
						<span class="page page-active"><a href="" class="f6">1</a></span>
						<span class="page"> <a href=""><i class="fas fa-angle-right"></i></a></span>
						<span class="page"> <a href=""><i class="fas fa-angle-double-right"></i></a></span>
					</div>
                </div>
            </div>
		</div>
	</div>
	<%@ include file="/WEB-INF/views/include/FOOTER.jsp"%>
	<script>
	var flag = false; 
	function chkAll() {
	
		var chk = document.getElementsByName("chk");
		
		if( flag == false) {
			flag = true;
	
			for(var i = 0; i < chk.length; i++) {
				chk[i].checked = true;
			}
		}else{
			flag = false;
			for(var i = 0; i < chk.length; i++) {
				chk[i].checked = false;
			}
		}	
	}	
	</script>
</html>

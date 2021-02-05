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
                    <c:if test="${sessionScope.empNum eq 'admin'}">
	                    <div class="btn-box m-b5">
	                        <button class="btn-red" id="delete">선택삭제</button>
	                        <button class="btn-blue"
	                            onclick="location.href='${pageContext.request.contextPath}/employee/employee_register'">사원등록</button>
	                    </div>
					</c:if>
                    <div class="board-list">
                        <table border="1">
                            <tr class="center bg-eee">
                            	<c:if test="${sessionScope.empNum eq 'admin'}">
	                                <td class="td-3">
	                                	<input type="checkbox" onClick="chkAll();" id="chkAll" />
	                                </td>
                                </c:if>
                                <td class="td-4">번호</td>
                                <td class="">사원명</td>
                                <td class="td-12">근무부서</td>
                                <td class="td-8">직급</td>
                                <td class="td-10">사원번호</td>
                                <td class="td-10">비밀번호</td>
                                <td class="td-10">입사년월일</td>
                                <td class="td-10">가입일</td>
                                <c:if test="${sessionScope.empNum eq 'admin'}">
                                	<td class="td-6">승인여부</td>
                                </c:if>
                                <td class="td-4">권한</td>
                                <c:if test="${sessionScope.empNum eq 'admin'}">
                                	<td class="td-6">비고</td>
                                </c:if>
                            </tr>
                            <c:forEach items="${list}" var="empList" varStatus="status">
	                            <tr class="center">
	                            	<c:if test="${sessionScope.empNum eq 'admin'}">
		                                <c:choose>
		                                	<c:when test="${empList.empNum eq 'admin'}">
		                                		<td>-</td>
		                                	</c:when>
		                                	<c:otherwise>
		                                		<td><input type="checkbox" name="chk" class="chk" data-uid="${empList.empID}" /></td>
											</c:otherwise>
										</c:choose>
									</c:if>
									<td>${empList.empID}</td>
	                                <td>
	                                	<c:choose>
	                                		<c:when test="${empList.empNum eq 'admin'}">${empList.empName}</c:when>
	                                		<c:otherwise>
	                                			<a href="${pageContext.request.contextPath}/employee/employee_view?empNum=${empList.empNum}">${empList.empName}</a>
	                                		</c:otherwise>
	                                	</c:choose>
	                                </td>
	                                <td>
	                                	<c:if test="${empList.empNum eq 'admin'}">-</c:if>
	                                	<c:if test="${empList.empNum ne 'admin'}">${empList.empBuseoName}</c:if>
	                                </td>
	                                <td>
	                                	<c:if test="${empList.empNum eq 'admin'}">-</c:if>
	                                	<c:if test="${empList.empNum ne 'admin'}">${empList.empGradeName}</c:if>
	                                </td>
	                                <td>
	                                	<c:choose>
		                                	<c:when test="${empList.empNum eq 'admin'}">admin</c:when>
		                                	<c:otherwise>
		                                		<a href="${pageContext.request.contextPath}/employee/employee_view?empNum=${empList.empNum}">${empList.empNum}</a>
		                                	</c:otherwise>
		                                </c:choose>
	                                </td>
	                                <td>
	                                <c:if test="${sessionScope.empNum eq 'admin'}">${empList.empPwd}</c:if>
	                                <c:if test="${sessionScope.empNum ne 'admin'}">****</c:if>	
	                                </td>
	                                <td><c:if test="${empList.empNum eq 'admin'}">-</c:if>${empList.empEnter}</td>
	                                <td><c:if test="${empList.empNum eq 'admin'}">-</c:if>${empList.empRegdate}</td>
	                                <c:if test="${sessionScope.empNum eq 'admin'}">
		                                <td class="p-3">
		                                	<c:choose>
		                                		<c:when test="${empList.empNum eq 'admin'}">승인</c:when>
		                                		<c:otherwise>
				                                    <select onChange="confirmChange(this.value, '${empList.empNum}');" class="select" name="empConfirm" id="empConfirm">
				                                        <option value="Y" <c:if test="${empList.empConfirm eq 'Y'}">selected</c:if>>승인</option>
				                                        <option value="N" <c:if test="${empList.empConfirm eq 'N'}">selected</c:if>>거부</option>
				                                    </select>
												</c:otherwise>
											</c:choose>
		                                </td>
									</c:if>
	                                <td>${empList.empAuth}</td>
	                                <c:if test="${sessionScope.empNum eq 'admin'}">
	                                	<c:choose>
	                                		<c:when test="${empList.empNum eq 'admin'}"><td>-</td></c:when>
	                                		<c:otherwise>
	                                			<td>
	                                				<button class="s-btn-blue" id="">수정</button>
	                                				<button class="s-btn-white" id="">삭제</button>
	                                			</td>
	                                		</c:otherwise>
										</c:choose>
	                                </c:if>
	                            </tr>
                            </c:forEach>
                        </table>
                    </div>
                    <div class="search-box m-t5">
                        <div class="total-num">전체 사원수 : ${count}명</div>
                        <form method="post" action="${pageContext.request.contextPath}/employee/employee_list">
	                        <div class="">
	                        	<select class="w-150" name="">
									<option value="all">전체검색</option>
									<option value="emp_name"> 사원명</option>
									<option value="buseo_name">근무부서</option>
									<option value="emp_num">사원번호</option>
								</select>
								<input type="text" class="w-150" name="words" required autocomplete="off" />
								<button type="submit" class="btn-white" style="width: 70px;">검색</button>
	                        </div>
                        </form>
                    </div>
                    <c:if test="${count > 0}">
                    	<div class="paging m-t10 center">
                    		<c:choose>
                    			<c:when test="${curPage > 1}">
                    				<a href="${pageContext.request.contextPath}/employee/employee_list?curPage=1"><span class="page"><i class="fas fa-angle-double-left"></i></span></a>
                    			</c:when>
                    			<c:otherwise>
	                    			<a href=""><span class="page"><i class="fas fa-angle-double-left"></i></span></a>
	                    		</c:otherwise>
                    		</c:choose>
                    		<c:choose>
                    			<c:when test="${curPage > 1}">
                    				<a href="${pageContext.request.contextPath}/employee/employee_list?curPage=${curPage-1}"><span class="page"><i class="fas fa-angle-left"></i></span></a>
                    			</c:when>
                    			<c:otherwise>
                    				<span class="page"><i class="fas fa-angle-left"></i></span>
                    			</c:otherwise>
                    		</c:choose>
                    		<c:forEach begin="${blockBegin}" end="${blockEnd}" var="num">
                    			<c:if test="${selected != num}">
                    				<a href="${pageContext.request.contextPath}/employee/employee_list?curPage=${num}"><span class="page">${num}</span></a>
                    			</c:if>
                    			<c:if test="${selected == num}">
                    				<a href="" class="f6"><span class="page page-active">${num}</span></a>
                    			</c:if>
                    		</c:forEach>
                    		<c:choose>
                    			<c:when test="${curPage != totalPage}">
									<a href="${pageContext.request.contextPath}/employee/employee_list?curPage=${curPage+1}"><span class="page"><i class="fas fa-angle-right"></i></span></a>
								</c:when>
								<c:otherwise>
									<span class="page"><i class="fas fa-angle-right"></i></span>
								</c:otherwise>
							</c:choose>
							<c:choose>
								<c:when test="${curPage != totalPage}">
									<a href="${pageContext.request.contextPath}/employee/employee_list?curPage=${totalPage}"><span class="page"><i class="fas fa-angle-double-right"></i></span></a>
								</c:when>
								<c:otherwise>
									<a href=""><span class="page"><i class="fas fa-angle-double-right"></i></span></a>
								</c:otherwise>
							</c:choose>
						</div>
					</c:if>
                </div>
            </div>
		</div>
	</div>
	<%@ include file="/WEB-INF/views/include/FOOTER.jsp"%>	
	<script>
	$("#delete").click(function () {
		var str = confirm("선택한 사원을 삭제하시겠습니까?");

		if(str) {
			var chkArr = new Array();
			$(".chk:checked").each(function () {
				chkArr.push($(this).attr("data-uid"));
			});

	        $.ajax({
	        	url 	: "${pageContext.request.contextPath}/employee/employee_delete",
	        	type 	: "POST", 	
	        	data 	: { chkArr : chkArr },
	        	success	: function (resData) {
	        		alert("삭제되었습니다.");
		    		window.location.reload();
	            },
	            error 	: function() {
	            	alert("삭제할 사원을 선택하세요.");
	            }
	        });
		}
		
	});
	</script>
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
	<script>
	function confirmChange(empConfirm, empNum) {
		
		if(confirm("승인여부를 변경하시겠습니까?")) {
			var reqData = {
				empConfirm 	: empConfirm,
				empNum	: empNum
			};
	
			$.ajax({
				url 	: "${pageContext.request.contextPath}/employee/employee_confirm_change",
				type	: "POST",
				data	: reqData,
				success	: function(resData) {
					alert("승인여부가 변경되었습니다.");
					window.location.reload();
				},
				error	: function() {
					alert("시스템 에러");
				}
			});
			
		}else{
			window.location.reload();
		}
		
	}
	</script>
</html>

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
						<span class="">게시판 관리 > 게시판 생성</span>
					</div>
					<form method="post" id="frm" autocomplete="off">
						<div class="board-list">
							<table border="1">
								<tr class="center">
									<td class="bg-eee td-10">게시판 그룹</td>
									<td class="td-15 p-3">
										<input type="text" name="boardGroup" id="boardGroup" value="${sessionScope.empBuseoName}" readonly />
									</td>
									<td class="bg-eee td-10">게시판 코드</td>
									<td class="td-15 p-3">
										<input type="text" onBlur="codeCheck();" placeholder="영어로 입력하세요." name="boardCode" id="boardCode" />
									</td>
									<td class="bg-eee td-10">게시판 관리자</td>
									<td class="td-15 p-3">
										<input type="text" name="boardManager" value="${sessionScope.empName}" readonly />
									</td>
									<td class="bg-eee td-10">게시판 색상</td>
									<td class="td-15 p-3">
										<select class="select" name="boardColor" id="boardColor">
											<option value="color">색상을 선택하세요.</option>
											<option value="#e68fcd">분홍</option>
											<option value="#e9d565">노랑</option>
											<option value="#78dc57">초록</option>
											<option value="#98d1e6">파랑</option>
											<option value="#a578ca">보라</option>
											<option value="#eee">선택안함</option>
										</select>
									</td>
								</tr>
								<tr class="center">
									<td class="bg-eee td-10">게시판 제목</td>
									<td class="td-15 p-3" colspan="3">
										<input type="text" placeholder="제목을 입력하세요." name="boardTitle" id="boardTitle" />
									</td>
									<td class="bg-eee td-10">열람 권한</td>
									<td class="td-15 p-3">
										<select class="select" name="boardRead" id="boardRead">
											<option value="0">공개 범위를 선택하세요.</option>
											<option value="1">모두</option>
											<option value="2">해당 부서</option>
										</select>
									</td>
									<td class="bg-eee td-10">작성 권한</td>
									<td class="td-15 p-3">
										<select class="select" name="boardWrite" id="boardWrite">
											<option value="0">작성 범위를 선택하세요.</option>
											<option value="1">모두</option>
											<option value="2">게시판 관리자</option>
										</select>
									</td>
								</tr>
							</table>
						</div>
						<div class="center m-t5 m-b10">
							<button type="button" class="btn-blue" id="btn">게시판 생성</button>
							<button type="reset" class="btn-white">취소하기</button>
						</div>
					</form>
					<div class="title m-b10 bold">
						<span class="">게시판 관리 > 게시판 목록</span>
					</div>
					<c:if test="${sessionScope.empNum eq 'admin'}">
						<div class="btn-box m-b5">
							<button class="btn-red" id="delete">선택삭제</button>
						</div>
					</c:if>
					<div class="board-list">
						<table border="1">
							<tr class="center bg-eee" id="rowColor">
								<c:if test="${sessionScope.empNum eq 'admin'}">
									<td class="td-3">
										<input type="checkbox" onClick="chkAll();" id="chkAll" />
									</td>
								</c:if>
								<td class="td-4">번호</td>
								<td class="td-8">게시판 그룹</td>
								<td class="td-8">게시판 코드</td>
								<td class="">게시판 제목</td>
								<td class="td-8">게시판 관리자</td>
								<td class="td-8">게시판 색상</td>
								<td class="td-4">공개 범위</td>
								<td class="td-4">작성 권한</td>
								<td class="td-8">등록 날짜</td>
							</tr>
							<c:if test="${count == 0}">
								<tr class="center">
									<td class="bold" colspan="10">등록된 게시판이 없습니다.</td>
								</tr>
							</c:if>
							<c:forEach items="${list}" var="boardList" varStatus="status">
								<tr class="center">
									<c:if test="${sessionScope.empNum eq 'admin'}">
										<td>
											<input type="checkbox" name="chk" class="chk" data-uid="${boardList.boardCode}" />
										</td>
									</c:if>
									<td>${boardList.boardID}</td>
									<td>${boardList.boardGroup}</td>
									<td>
										<a href="${pageContext.request.contextPath}/article/article_list?boardCode=${boardList.boardCode}" target="_blank">${boardList.boardCode}</a>
									</td>
									<td class="">
										<a href="${pageContext.request.contextPath}/article/article_list?boardCode=${boardList.boardCode}" target="_blank">${boardList.boardTitle}</a>
									</td>
									<td class="">${boardList.boardManager}</td>
									<td>${boardList.boardColor}</td>
									<td>${boardList.boardRead}</td>
									<td>${boardList.boardWrite}</td>
									<td class="">${boardList.boardRegdate}</td>
								</tr>
							</c:forEach>
						</table>
					</div>
					<div class="search-box m-t5">
						<div class="total-num">전체 게시판수 : ${count}개</div>
						<form method="post" action="${pageContext.request.contextPath}/board">
							<div class="">
								<select class="w-150" name="">
									<option value="">전체검색</option>
									<option value="">게시판 그룹</option>
									<option value="">게시판 코드</option>
									<option value="">게시판 제목</option>
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
                    				<a href="${pageContext.request.contextPath}/board?curPage=1"><span class="page"><i class="fas fa-angle-double-left"></i></span></a>
                    			</c:when>
                    			<c:otherwise>
	                    			<a href=""><span class="page"><i class="fas fa-angle-double-left"></i></span></a>
	                    		</c:otherwise>
                    		</c:choose>
                    		<c:choose>
                    			<c:when test="${curPage > 1}">
                    				<a href="${pageContext.request.contextPath}/board?curPage=${curPage-1}"><span class="page"><i class="fas fa-angle-left"></i></span></a>
                    			</c:when>
                    			<c:otherwise>
                    				<span class="page"><i class="fas fa-angle-left"></i></span>
                    			</c:otherwise>
                    		</c:choose>
                    		<c:forEach begin="${blockBegin}" end="${blockEnd}" var="num">
                    			<c:if test="${selected != num}">
                    				<a href="${pageContext.request.contextPath}/board?curPage=${num}"><span class="page">${num}</span></a>
                    			</c:if>
                    			<c:if test="${selected == num}">
                    				<a href="" class="f6"><span class="page page-active">${num}</span></a>
                    			</c:if>
                    		</c:forEach>
                    		<c:choose>
                    			<c:when test="${curPage != totalPage}">
									<a href="${pageContext.request.contextPath}/board?curPage=${curPage+1}"><span class="page"><i class="fas fa-angle-right"></i></span></a>
								</c:when>
								<c:otherwise>
									<span class="page"><i class="fas fa-angle-right"></i></span>
								</c:otherwise>
							</c:choose>
							<c:choose>
								<c:when test="${curPage != totalPage}">
									<a href="${pageContext.request.contextPath}/board?curPage=${totalPage}"><span class="page"><i class="fas fa-angle-double-right"></i></span></a>
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
	$(function () {
	    $("#boardColor").change(function() {
	        $("#rowColor").css({
	            backgroundColor : this.value
	        });
	    });
	});
	</script>
	<script>
	$("#delete").click(function () {
		var str = confirm("선택한 게시판을 삭제하시겠습니까?");
		
		if(str) {
			var chkArr = new Array();
			$(".chk:checked").each(function () {
				chkArr.push($(this).attr("data-uid"));
			});
	        $.ajax({
	        	url 	: "${pageContext.request.contextPath}/board/board_delete",
	        	type 	: "POST", 	
	        	data 	: { chkArr : chkArr },
	        	success	: function (resData) {
	        		alert("삭제되었습니다.");
		    		window.location.reload();
	            },
	            error 	: function() {
	            	alert("삭제할 게시판을 선택하세요.");
	            }
	        });
		}
		
	});
	</script>
	<script>
		function boardMake() {
			if ($.trim($("#boardCode").val()) == '') {
				alert("게시판 코드를 입력하세요.");
				$("#boardCode").focus();
				return false;
			}
			if ($("#boardColor").val() == 'color') {
				alert("게시판 색상을 선택하세요.");
				return false;
			}
			if ($.trim($("#boardTitle").val()) == '') {
				alert("게시판 제목을 입력하세요.");
				$("#boardTitle").focus();
				return false;
			}
			if ($("#boardRead").val() == '0') {
				alert("열람 권한을 선택하세요.");
				return false;
			}
			if ($("#boardWrite").val() == '0') {
				alert("작성 권한을 선택하세요.");
				return false;
			}
			$.ajax({
				url : "${pageContext.request.contextPath}/board/board_insert",
				type : "POST",
				data : $("#frm").serialize(),
				success : function(resData) {
					alert("[" + $("#boardGroup").val() + ":" + $("#boardCode").val() + "] 게시판이 생성되었습니다.");
					window.location.href = "${pageContext.request.contextPath}/board";
				},
				error : function() {
					alert("시스템 에러");
				}
			});
			
		}
		$("#btn").click(function() {
			boardMake();
		});
	</script>
	
	<script>
	function codeCheck() {
		var formData = {
			boardCode : $("#boardCode").val()
		};
		$.ajax({
			url		: "${pageContext.request.contextPath}/board/code_check",
			type 	: "POST",
			data 	: formData,
			success	: function(resData) {
				if(resData == "false") {
					alert("이미 사용중인 게시판 코드입니다.");
					$("#boardCode").val("");
					$("#boardCode").focus();
				}
			},
			error	: function() {
				alert("시스템 에러");
			}
		});
	}
	</script>

	<script>
		$(function() {
			$("#boardCode").keyup(function() {
				$(this).val($(this).val().replace(/[0-9]|[^\!-z]/gi, ""));
			});
		});
		var flag = false;
		function chkAll() {
			var chk = document.getElementsByName("chk");
			if (flag == false) {
				flag = true;
				for (var i = 0; i < chk.length; i++) {
					chk[i].checked = true;
				}
			} else {
				flag = false;
				for (var i = 0; i < chk.length; i++) {
					chk[i].checked = false;
				}
			}
		}
	</script>
</html>
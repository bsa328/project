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
						<span class="">${boardGroup} > ${boardCode} (관리자 : ${boardManager})</span>
					</div>
					<div class="btn-box m-b5">
						<c:choose>
							<c:when test="${sessionScope.empName eq boardManager || sessionScope.empNum eq '1'}"><button class="btn-red" id="delete">선택삭제</button></c:when>
							<c:otherwise><button class="" id=""></button></c:otherwise>
						</c:choose>
						<button type="button" class="btn-blue" onclick="location.href='${pageContext.request.contextPath}/article/article_insert?boardCode=${boardCode}'">게시글 작성</button>
					</div>
					<div class="board-list">
						<table border="1">
							<tr class="center bg-eee" style="background-color:${boardColor}">
								<c:if test="${sessionScope.empName eq boardManager || sessionScope.empNum eq '1'}">
									<td class="td-3">
										<input type="checkbox" onClick="chkAll();" id="chkAll" />
									</td>
								</c:if>
								<td class="td-4">번호</td>
								<td class="td-8">분류</td>
								<td class="">게시글 제목</td>
								<td class="td-8">작성자</td>
								<td class="td-8">날짜</td>
								<td class="td-4">조회</td>
								<c:if test="${sessionScope.empName eq boardManager || sessionScope.empNum eq '1'}">
									<td class="td-8">게시글 관리</td>
								</c:if>
							</tr>
							<c:if test="${count == 0}">
								<tr class="center">
									<td class="bold" colspan="8">등록된 게시글이 없습니다.</td>
								</tr>
							</c:if>
							<c:forEach items="${list}" var="articleList" varStatus="status">
								<tr class="center">
									<c:if test="${sessionScope.empName eq boardManager || sessionScope.empNum eq '1'}">
										<td>
											<input type="checkbox" name="chk" class="chk" data-uid="${articleList.articleID}" data-code="${boardCode}" />
										</td>
									</c:if>
									<td>${articleList.articleID}</td>
									<td>
										<c:if test="${articleList.articleDivision eq 'Y'}"><span class="notice">공지사항</span></c:if>
										<c:if test="${articleList.articleDivision eq 'N'}">일반</c:if>
									</td>
									<td class="p-10 left">
										<a href="${pageContext.request.contextPath}/article/article_view?boardCode=${boardCode}&articleID=${articleList.articleID}">${articleList.articleTitle}</a>
									</td>
									<td>${articleList.articleWriter}</td>
									<td>${articleList.articleRegdate}</td>
									<td>${articleList.articleHit}</td>
									<c:if test="${sessionScope.empName eq boardManager || sessionScope.empNum eq '1'}">
										<td>
											<button class="s-btn-blue" id="">수정</button>
											<button class="s-btn-white" id="">삭제</button>
										</td>
									</c:if>
								</tr>
							</c:forEach>
						</table>
					</div>
					<div class="search-box m-t5">
						<div class="total-num">전체 게시글수 : ${count}개</div>
						<form method="post" action="${pageContext.request.contextPath}/article/article_list">
							<div class="">
								<select class="w-150" name="">
									<option value="">전체검색</option>
									<option value="">분류</option>
									<option value="">게시글 제목</option>
									<option value="">작성자</option>
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
                    				<a href="${pageContext.request.contextPath}/article/article_list?boardCode=${boardCode}&curPage=1"><span class="page"><i class="fas fa-angle-double-left"></i></span></a>
                    			</c:when>
                    			<c:otherwise>
	                    			<a href=""><span class="page"><i class="fas fa-angle-double-left"></i></span></a>
	                    		</c:otherwise>
                    		</c:choose>
                    		<c:choose>
                    			<c:when test="${curPage > 1}">
                    				<a href="${pageContext.request.contextPath}/article/article_list?boardCode=${boardCode}&curPage=${curPage-1}"><span class="page"><i class="fas fa-angle-left"></i></span></a>
                    			</c:when>
                    			<c:otherwise>
                    				<span class="page"><i class="fas fa-angle-left"></i></span>
                    			</c:otherwise>
                    		</c:choose>
                    		<c:forEach begin="${blockBegin}" end="${blockEnd}" var="num">
                    			<c:if test="${selected != num}">
                    				<a href="${pageContext.request.contextPath}/article/article_list?boardCode=${boardCode}&curPage=${num}"><span class="page">${num}</span></a>
                    			</c:if>
                    			<c:if test="${selected == num}">
                    				<a href="" class="f6"><span class="page page-active">${num}</span></a>
                    			</c:if>
                    		</c:forEach>
                    		<c:choose>
                    			<c:when test="${curPage != totalPage}">
									<a href="${pageContext.request.contextPath}/article/article_list?boardCode=${boardCode}&curPage=${curPage+1}"><span class="page"><i class="fas fa-angle-right"></i></span></a>
								</c:when>
								<c:otherwise>
									<span class="page"><i class="fas fa-angle-right"></i></span>
								</c:otherwise>
							</c:choose>
							<c:choose>
								<c:when test="${curPage != totalPage}">
									<a href="${pageContext.request.contextPath}/article/article_list?boardCode=${boardCode}&curPage=${totalPage}"><span class="page"><i class="fas fa-angle-double-right"></i></span></a>
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
		var str = confirm("선택한 게시글을 삭제하시겠습니까?");
		var boardCode = $(".chk").attr("data-code");

		if(str) {
			var chkArr = new Array();
			var boardArr = new Array();
			$(".chk:checked").each(function () {
				chkArr.push($(this).attr("data-uid"));
			});
			
	        $.ajax({
	        	url 	: "${pageContext.request.contextPath}/article/article_delete",
	        	type 	: "POST", 	
	        	data 	: {
		        	chkArr : chkArr,
	        		boardCode : boardCode
	        	},
	        	success	: function (resData) {
	        		alert("삭제되었습니다.");
		    		window.location.reload();
	            },
	            error 	: function() {
	            	alert("삭제할 게시글을 선택하세요.");
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
</html>

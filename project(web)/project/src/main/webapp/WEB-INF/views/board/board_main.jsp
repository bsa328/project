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
					<div class="title">
						<span class=""><i class="fas fa-cube"> 공지사항 > 게시판</i></span>
					</div>
					<div class="btn-box m-t10 m-b10">
						<button class="td-5 btn-red" id="delete">선택삭제</button>
						<button type="button" class="td-7 btn-blue" onclick="location.href='${pageContext.request.contextPath}/board/board_insert'">게시글작성</button>
					</div>
					<div class="board-list">
						<table>
							<tr class="center">
								<td class="td-5">
									<input type="checkbox" onClick="chkAll();" id="chkAll" />
								</td>
								<td class="td-5">번호</td>
								<td class="">제목</td>
								<td class="td-12">작성자</td>
								<td class="td-12">등록일</td>
								<td class="td-7">조회수</td>
							</tr>

							<c:if test="${count == 0}">
								<tr class="center">
									<td colspan="6">등록된 게시물이 없습니다.</td>
								</tr>
							</c:if>

							<c:forEach items="${list}" var="boardList" varStatus="status">
								<tr>
									<td class="center">
										<input type="checkbox" name="chk" class="chk" data-uid="${boardList.boardNum}" />
									</td>
									<td class="center">${boardList.boardNum}</td>
									<td class="title-left p-l30">
										<a href="${pageContext.request.contextPath}/board/board_view?boardNum=${boardList.boardNum}">${boardList.boardTitle}</a>
									</td>
									<td class="center">${boardList.boardWriter}</td>
									<td class="center">${boardList.boardRegdate}</td>
									<td class="center">${boardList.boardViews}</td>
								</tr>
							</c:forEach>
						</table>
					</div>
					<div class="search-box m-t10">
						<div class="total-num">전체 게시글수 : ${count}개</div>
						<div class="">
							<form method="post" action="${pageContext.request.contextPath}/board">
								<select class="" name="searchOpt">
									<option value="board_title">제목</option>
									<option value="board_writer">작성자</option>
									<option value="all">전체검색</option>
								</select>
								<input value="${words}" type="text" class="" name="words" required autocomplete="off" />
								<button type="submit" class="btn-gray" style="width: 70px;">검색</button>
							</form>
						</div>
					</div>
					<div class="paging m-t50 center">
						<span class="page"><a href=""><i class="fas fa-angle-double-left"></i></a></span>
						<span class="page"><a href=""><i class="fas fa-angle-left"></i></a></span>
						<span class="page page-active"> <a href="" class="f6">1</a></span>
						<span class="page"><a href="">2</a></span>
						<span class="page"><a href="">3</a></span>
						<span class="page"><a href="">4</a></span>
						<span class="page"><a href="">5</a></span>
						<span class="page"><a href=""><i class="fas fa-angle-right"></i></a></span>
						<span class="page"><a href=""><i class="fas fa-angle-double-right"></i></a></span>
					</div>
				</div>
			</div>
		</div>
	</div>
	<%@ include file="/WEB-INF/views/include/FOOTER.jsp"%>
	
	<script>
	$("#delete").click(function() {
	    var str = confirm("선택하신 게시글을 삭제하시겠습니까?");
	    
	    if( str ) {
	        var chkArr = new Array();
	        $(".chk:checked").each(function () {
	        	chkArr.push($(this).attr("data-uid"));
	        });
	        
	        //alert(chkArr);

	        $.ajax({
	        	url 	: "${pageContext.request.contextPath}/board/board_delete",
	        	type 	: "POST", 	
	        	data 	: { chkArr : chkArr },
	        	success	: function (resData) {
	        		alert("삭제되었습니다.");
		    		window.location.reload();
	            },
	            error 	: function() {
	            	alert("선택하신 게시글이 없습니다.");
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
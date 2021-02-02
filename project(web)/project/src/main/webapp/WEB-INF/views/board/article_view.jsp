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
						<span class="">${boardGroup} > ${boardCode}</span>
					</div>
					<div class="btn-box m-b5">
						<button></button>
						<button class="btn-white" onclick="location.href='${pageContext.request.contextPath}/article/article_list?boardCode=${boardCode}'">목록으로</button>
					</div>
					<table border="1">
						<tr class="center">
							<td class="bg-eee td-10" style="background-color:${boardColor}">게시글 제목</td>
							<td class="p-10 left" colspan="3">${view.articleTitle}</td>
						</tr>
						<tr class="center">
							<td class="bg-eee td-10" style="background-color:${boardColor}">작성자</td>
							<td class="td-40 p-10 left">${view.articleWriter}</td>
						</tr>
						<tr class="center">
							<td class="bg-eee td-10" style="background-color:${boardColor}">내용</td>
							<td class="p-10 left top" style="height: 320px;" colspan="3">${view.articleContent}</td>
						</tr>
						<tr class="center">
							<td class="bg-eee td-10" style="background-color:${boardColor}">첨부파일</td>
							<td class="p-10 left" colspan="3">-</td>
						</tr>
						<tr class="center">
							<td class="bg-eee td-10" style="background-color:${boardColor}">조회수</td>
							<td class="p-10 left" colspan="3">${view.articleHit}</td>
						</tr>
					</table>
				</div>
				<div class="center m-t5">
					<c:if test="${sessionScope.empNum eq '1' || sessionScope.empName eq boardManager}">
						<button class="btn-blue" onclick="location.href='${pageContext.request.contextPath}/article/article_modify?boardCode=${boardCode}&articleID=${view.articleID}'">게시물 수정</button>
						<button class="btn-red">삭제하기</button>
					</c:if>
				</div>
				<div class="comment-box">
					<div class="comment-make m-t50">
						<div class="total-num m-b5">댓글 작성하기</div>
						<form id="frm">
							<input type="hidden" id="boardCode" name="boardCode" value="${boardCode}" />
							<input type="hidden" name="articleID" value="${view.articleID}" />
							<input type="hidden" name="commentWriter" value="${sessionScope.empName}" />
							<textarea id="commentContent" name="commentContent" class="comment p-10" placeholder="댓글을 입력하세요."></textarea>
							<div class="btn-box">
								<button class="" id=""></button>
								<button id="btn" type="submit" class="btn-blue m-t5">댓글 등록</button>
							</div>
						</form>
					</div>
				</div>
				<div id="commentList"></div>
			</div>
		</div>
	</div>
	<%@ include file="/WEB-INF/views/include/FOOTER.jsp"%>
	
	<script>
	function insertComment() {
		
		if ($.trim($("#commentContent").val()) == '') {
			alert("댓글 내용을 입력하세요.");
			$("#commentContent").focus();
			return false;
		}

		var formData = $("#frm").serialize();

		$.ajax({
			url : "${pageContext.request.contextPath}/comment/comment_insert",
			type : "POST",
			data : formData,
			success : function(resData) {
				alert("댓글이 등록 되었습니다.");
				listComment();
				$("#commentContent").val('');
			},
			error : function() {
				alert("시스템 에러");
			},
			complete : function() {
			}

		});
		
	}

	function listComment() {
		var formData = $("#frm").serialize();

		$.ajax({
			url : "${pageContext.request.contextPath}/comment/comment_list",
			type : "POST",
			data : formData,
			success : function(resData) {

				var a = '';
				var b = '';
				b += resData.count;
				a += '<div class="total-num m-t10 m-b5">전체 댓글수 : '+b+'개</div>';
				
				if ( b == 0 ) {
				a += '<div class="">';
				a += '<hr style="border-width: 1px 0px 0px 0px; border-style: solid; height: 1px; border-color: #e7e7e7;">';
				a += '<div class="m-t50 center" style="margin-bottom: 40px; font-size: 15px;">등록된 댓글이 없습니다.</div>';
				a += '</div>';
				}
				
				$.each(resData.list, function(key, value) {
					a += '<div class="comment-view">';
					a += '<div class="">';
					a += '<hr style="border-width: 1px 0px 0px 0px; border-style: solid; height: 1px; border-color: #e7e7e7;">';
					a += '<div class="" style="padding: 30px;">';
					a += '<div class="comment-writer m-b5" style="font-size: 13px; color: #444;">'+value.commentWriter+'</div>';
					a += '<div class="comment-content" style="font-size: 15px;">'+value.commentContent+'</div>';
					a += '<div class="btn-box" style="margin-top: 30px;">';
					a += '<div class="comment-regdate" style="color: #999; font-size: 13px;">'+value.commentRegdate+'</div>';
					a += '<div class="comment-btn">';
					a += '<button class="s-btn-blue" style="margin-right: 5px;">수정</button>';
					a += '<button class="s-btn-white" onClick="deleteComment('+value.commentID+')">삭제</button>';
					a += '</div>';
					a += '</div>';
					a += '</div>';
					a += '</div>';
					a += '</div>';
				});

				$("#commentList").html(a);
			},
			error : function() {
				alert("시스템 에러");
			},
			complete : function() {
			}
				
		});
		
	}

	function deleteComment(commentID) {
		var msg = "선택한 댓글을 삭제하시겠습니까?";
		if (confirm(msg)) {

			var formData = {
				commentID : commentID,
				boardCode : $("#boardCode").val()
			}

			$.ajax({
				url : "${pageContext.request.contextPath}/comment/comment_delete",
				type : "POST",
				data : formData,
				success : function(resData) {
					alert("댓글이 삭제되었습니다.");
					listComment();
				},
				error : function() {
					alert("시스템 에러");
				},
				complete : function() {
				}

			});
		}
	}

	$("#btn").click(function() {
		insertComment();
	});

	$(function() { 
		listComment();
	});
	</script>
</html>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/include/HEADER.jsp"%>
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/board.css">
<script src="${pageContext.request.contextPath}/lib/jquery.js" type="text/javascript"></script>
<script src="${pageContext.request.contextPath}/ckeditor/ckeditor.js"></script>


<body>
	<div class="html">
		<%@ include file="/WEB-INF/views/include/AUTH.jsp"%>
		<div class="body">
			<%@ include file="/WEB-INF/views/include/MENU.jsp"%>
			<div class="main">
				<div class="page-wrap">
					<div class="title m-b10 bold">
						<span class="">${boardCode} > 게시글 작성</span>
					</div>
					<div class="btn-box m-b5">
						<button></button>
						<button type="button" id="list" class="btn-white" onclick="location.href='${pageContext.request.contextPath}/article/article_list?boardCode=${boardCode}'">목록으로</button>
					</div>
					<form id="frm" method="post" action="${pageContext.request.contextPath}/article/article_insert" autocomplete="off">
						<input type="hidden" name="boardCode" value="${boardCode}" />
						<div class="board-list">
							<table border="1">
								<tr class="center">
									<td class="bg-eee td-10">게시글 분류</td>
									<td class="p-3">
										<select class="select" name="articleDivision" id="articleDivision">
											<option value="">게시글 종류</option>
											<option value="Y">공지사항</option>
											<option value="N">일반 게시글</option>
										</select>
									</td>
								</tr>
								<tr class="center">
									<td class="bg-eee td-10">게시글 제목</td>
									<td class="p-3">
										<input type="text" name="articleTitle" id="articleTitle" placeholder="제목을 입력하세요." />
									</td>
								</tr>
								<tr class="center">
									<td class="bg-eee td-10">작성자</td>
									<td class="p-3">
										<input type="text" name="articleWriter" readonly value="${sessionScope.empName}" />
									</td>
								</tr>
								<tr class="center">
									<td class="bg-eee td-10">내용</td>
									<td class="p-3">
										<textarea name="articleContent" id="editor" class="noto"></textarea>
										<script>
											CKEDITOR.replace('editor');
											CKEDITOR.config.height = 400;
										</script>
									</td>
								</tr>
								<tr class="center">
									<td class="bg-eee td-10">첨부파일</td>
									<td class="p-3">
										<input type="file" name="" />
									</td>
								</tr>
							</table>
						</div>
						<div class="center m-t5">
							<button type="submit" class="btn-blue" id="btn">등록하기</button>
						</div>
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
	
	function articleMake() {
		$("#btn").click(function() {

			if($("#articleDivision").val() == '') {
				alert("게시글 종류를 선택하세요.");
				return false;
			}

			if($.trim($("#articleTitle").val()) == '') {
				alert("게시글 제목을 입력하세요.");
				$("#articleTitle").focus();
				return false;
			}

			$("#frm").submit();
			alert("게시글이 등록되었습니다.");
		});
		
	}
	
	$(function() {
		articleMake();
	});
	</script>
</html>

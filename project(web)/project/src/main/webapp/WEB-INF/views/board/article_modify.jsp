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
						<span class="">notice > 게시글 수정</span>
					</div>
					<div class="btn-box m-b5">
						<button></button>
						<button type="button" class="btn-white" onclick="location.href='${pageContext.request.contextPath}/article/article_list'">목록으로</button>
					</div>
					<form id="frm" method="post" action="${pageContext.request.contextPath}/article/article_insert" autocomplete="off">
						<input type="hidden" name="" value="" />
						<input type="hidden" name="" value="" />
						<div class="board-list">
							<table border="1">
								<tr class="center">
									<td class="bg-eee td-10">게시글 분류</td>
									<td class="p-3">
										<select class="select" name="searchOpt">
											<option value="">게시글 종류</option>
											<option value="">공지사항</option>
											<option value="">일반 게시글</option>
										</select>
									</td>
								</tr>
								<tr class="center">
									<td class="bg-eee td-10">게시글 제목</td>
									<td class="p-3">
										<input type="text" placeholder="제목을 입력하세요." />
									</td>
								</tr>
								<tr class="center">
									<td class="bg-eee td-10">작성자</td>
									<td class="p-3">
										<input type="text" readonly value="관리자" />
									</td>
								</tr>
								<tr class="center">
									<td class="bg-eee td-10">내용</td>
									<td class="p-3">
										<textarea name="" id="editor" class="noto"></textarea>
										<script>
											CKEDITOR.replace('editor');
											CKEDITOR.config.height = 400;
										</script>
									</td>
								</tr>
								<tr class="center">
									<td class="bg-eee td-10">첨부파일</td>
									<td class="p-3">
										<input type="file" />
									</td>
								</tr>
							</table>
						</div>
						<div class="center m-t5">
							<button type="submit" class="btn-blue">수정하기</button>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>
	<%@ include file="/WEB-INF/views/include/FOOTER.jsp"%>
</html>

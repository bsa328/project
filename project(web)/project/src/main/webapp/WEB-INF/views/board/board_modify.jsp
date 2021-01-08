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
					<div class="title">
						<span class=""><i class="fas fa-cube"> 공지사항 > 게시판 > 게시글 수정</i></span>
					</div>
					<div class="btn-box m-t10 m-b10">
						<button class="" id=""></button>
						<button type="button" class="td-7 btn-gray" onclick="location.href='${pageContext.request.contextPath}/board'">게시글 목록</button>
					</div>
					<form method="POST" action="${pageContext.request.contextPath}/board">
						<div class="board-list">
							<table border="1" class="insert-box">
								<tr class="" style="border-bottom: 1px solid #abb3b8a2;">
									<td class="center td-15">게시글 분류</td>
									<td class="p-5 bg-white">
										<select name="" class="td-15">
											<option value="notice">공지사항</option>
											<option value="normal">일반 게시글</option>
										</select>
									</td>
								</tr>
								<tr>
									<td class="center bg-blue">제목</td>
									<td class="p-5">
										<input value="${modify.boardTitle}" type="text" class="td-100" />
									</td>
								</tr>
								<tr>
									<td class="center bg-blue">작성자</td>
									<td class="p-5">${modify.boardWriter}</td>
								</tr>
								<tr>
									<td class="center bg-blue">내용</td>
									<td class="p-5">
										<textarea name="" id="editor">${modify.boardContent}</textarea>
										<script>
											CKEDITOR.replace('editor');
											CKEDITOR.config.height = 350;
										</script>
									</td>
								</tr>
								<tr>
									<td class="center bg-blue">첨부파일</td>
									<td class="p-5">
										<input type="file" class="td-100" />
									</td>
								</tr>
							</table>
						</div>
						<div class="center m-t10">
							<button type="submit" class="td-7 btn-blue">게시물 수정</button>
						</div>
					</form>
					<div class="search-box m-t10"></div>
				</div>
			</div>
		</div>
	</div>
	<%@ include file="/WEB-INF/views/include/FOOTER.jsp"%>
	
</html>	
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
					<div class="board-list">
						<table border="1">
							<tr class="center">
								<td class="bg-eee td-10">게시글 제목</td>
								<td class="p-10 left" colspan="3">${view.articleTitle}</td>
							</tr>
							<tr class="center">
								<td class="bg-eee td-10">작성자</td>
								<td class="td-40 p-10 left">${view.articleWriter}</td>
							</tr>
							<tr class="center">
								<td class="bg-eee td-10">내용</td>
								<td class="p-10 left top" style="height: 320px;" colspan="3">${view.articleContent}</td>
							</tr>
							<tr class="center">
								<td class="bg-eee td-10">첨부파일</td>
								<td class="p-10 left" colspan="3">-</td>
							</tr>
							<tr class="center">
								<td class="bg-eee td-10">조회수</td>
								<td class="p-10 left" colspan="3">${view.articleHit}</td>
							</tr>
						</table>
					</div>
					<div class="center m-t5">
						<button class="btn-blue" onclick="location.href='${pageContext.request.contextPath}/article/article_modify?boardCode=${boardCode}&articleID=${view.articleID}'">게시물 수정</button>
						<button class="btn-red">삭제하기</button>
					</div>
				</div>
			</div>
		</div>
	</div>
	<%@ include file="/WEB-INF/views/include/FOOTER.jsp"%>
</html>

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
					<c:choose>
						<c:when test="${sessionScope.empName eq boardManager || sessionScope.empNum eq '1'}">
							<div class="center m-t5">
								<button class="btn-blue" onclick="location.href='${pageContext.request.contextPath}/article/article_modify?boardCode=${boardCode}&articleID=${view.articleID}'">게시물 수정</button>
								<button class="btn-red">삭제하기</button>
							</div>
						</c:when>
						<c:otherwise></c:otherwise>
					</c:choose>
					<div class="comment-box">
						<div class="comment-make m-t50">
							<div class="total-num m-b5">댓글 작성하기</div>
							<textarea type="text" class="comment p-10" placeholder="댓글을 입력하세요."></textarea>
							<div class="btn-box">
								<button class="" id=""></button>
								<button type="button" class="btn-blue m-t5">댓글 등록</button>
							</div>
						</div>
						<div class="comment-view">
							<div class="total-num m-t10 m-b5">전체 댓글수 : 10개</div>
							<div class="">
								<hr class="hr-line">
								<div class="m-t50 m-b50 center">등록된 댓글이 없습니다.</div>
							</div>
							<div>
								<hr class="hr-line">
								<div class="p-30">
									<div class="comment-writer m-b5">[영업부] 김부장</div>
									<div class="comment-content">댓글입니다. 댓글입니다. 댓글입니다.</div>
									<div class="btn-box m-t30">
										<div class="comment-regdate">02-01 15:19</div>
										<div class="comment-btn">
											<button class="s-btn-blue">수정</button>
											<button class="s-btn-white">삭제</button>
										</div>
									</div>
								</div>
							</div>
							<div>
								<hr class="hr-line">
								<div class="p-30">
									<div class="comment-writer m-b5">[영업부] 김부장</div>
									<div class="comment-content">댓글입니다. 댓글입니다. 댓글입니다.</div>
									<div class="btn-box m-t30">
										<div class="comment-regdate">02-01 15:19</div>
										<div class="comment-btn">
											<button class="s-btn-blue">수정</button>
											<button class="s-btn-white">삭제</button>
										</div>
									</div>
								</div>
							</div>
							<div>
								<hr class="hr-line">
								<div class="p-30">
									<div class="comment-writer m-b5">[영업부] 김부장</div>
									<div class="comment-content">댓글입니다. 댓글입니다. 댓글입니다.</div>
									<div class="btn-box m-t30">
										<div class="comment-regdate">02-01 15:19</div>
										<div class="comment-btn">
											<button class="s-btn-blue">수정</button>
											<button class="s-btn-white">삭제</button>
										</div>
									</div>
								</div>
							</div>
							<div>
								<hr class="hr-line">
								<div class="p-30">
									<div class="comment-writer m-b5">[영업부] 김부장</div>
									<div class="comment-content">댓글입니다. 댓글입니다. 댓글입니다.</div>
									<div class="btn-box m-t30">
										<div class="comment-regdate">02-01 15:19</div>
										<div class="comment-btn">
											<button class="s-btn-blue">수정</button>
											<button class="s-btn-white">삭제</button>
										</div>
									</div>
								</div>
							</div>
							<div>
								<hr class="hr-line">
								<div class="p-30">
									<div class="comment-writer m-b5">[영업부] 김부장</div>
									<div class="comment-content">댓글입니다. 댓글입니다. 댓글입니다.</div>
									<div class="btn-box m-t30">
										<div class="comment-regdate">02-01 15:19</div>
										<div class="comment-btn">
											<button class="s-btn-blue">수정</button>
											<button class="s-btn-white">삭제</button>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<%@ include file="/WEB-INF/views/include/FOOTER.jsp"%>
</html>

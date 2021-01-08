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
						<span class=""><i class="fas fa-cube"> 공지사항 > 게시판 > 게시글 보기</i></span>
					</div>
					<div class="btn-box m-t10 m-b10">
						<button class="" id=""></button>
						<button type="button" class="td-7 btn-gray" onclick="location.href='${pageContext.request.contextPath}/board'">게시글 목록</button>
					</div>
					<div class="board-list">
						<table border="1" class="insert-box">
							<tr class="" style="border-bottom: 1px solid #abb3b8a2;">
								<td class="center td-15">제목</td>
								<td class="p-10 bg-white">${view.boardTitle}</td>
							</tr>
							<tr>
								<td class="center bg-blue">작성자</td>
								<td class="p-10">${view.boardWriter}</td>
							</tr>
							<tr>
								<td class="center bg-blue">등록일</td>
								<td class="p-10">${view.boardRegdate}</td>
							</tr>
							<tr>
								<td class="center bg-blue">내용</td>
								<td class="p-10" style="height: 300px;">${view.boardContent}</td>
							</tr>
							<tr>
								<td class="center bg-blue">첨부파일</td>
								<td class="p-10"></td>
							</tr>
							<tr>
								<td class="center bg-blue">조회수</td>
								<td class="p-10">${view.boardViews}회</td>
							</tr>
						</table>
					</div>
					<div class="center m-t10">
						<button class="td-7 btn-blue" onClick="location.href='${pageContext.request.contextPath}/board/board_modify?boardNum=${boardList.boardNum}'">게시물 수정</button>
						<button class="td-7 btn-red">게시글 삭제</button>
					</div>
					<div class="search-box m-t10"></div>
				</div>
			</div>
		</div>
	</div>
	<%@ include file="/WEB-INF/views/include/FOOTER.jsp"%>
	
</html>	
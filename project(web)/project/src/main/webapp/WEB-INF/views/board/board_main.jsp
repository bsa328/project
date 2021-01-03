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
						<button class="td-5 btn-red" id="">선택삭제</button>
						<button type="button" class="td-7 btn-blue" onclick="location.href='${pageContext.request.contextPath}/board'">게시글작성</button>
					</div>
					<div class="board-list">
						<table>
							<tr class="">
								<td class="td-5">
									<input type="checkbox" />
								</td>
								<td class="td-5">글번호</td>
								<td class="">제목</td>
								<td class="td-12">작성자</td>
								<td class="td-12">작성일</td>
								<td class="td-7">조회수</td>
							</tr>
							<tr>
								<td>
									<input type="checkbox" />
								</td>
								<td>1</td>
								<td class="title-left">
									<a href="${pageContext.request.contextPath}/board">공지사항입니다.</a>
								</td>
								<td>관리자</td>
								<td>2021-01-01</td>
								<td>3</td>
							</tr>
							<tr>
								<td>
									<input type="checkbox" />
								</td>
								<td>1</td>
								<td class="title-left">
									<a href="${pageContext.request.contextPath}/board">공지사항입니다.</a>
								</td>
								<td>관리자</td>
								<td>2021-01-01</td>
								<td>3</td>
							</tr>
						</table>
					</div>
					<div class="search-box m-t10">
						<form method="post" action="${pageContext.request.contextPath}/board">
							<select class="td-7" name="search">
								<option value="subject">게시물 제목</option>
								<option value="writer">작성자</option>
							</select>
							<input type="text" class="td-12" name="search-word" required autocomplete="off" />
							<button type="submit" class="td-5 btn-gray">검색</button>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>

</html>
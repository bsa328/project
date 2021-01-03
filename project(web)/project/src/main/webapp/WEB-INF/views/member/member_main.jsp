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
						<span class=""><i class="fas fa-cube"> 회원관리 > 회원목록</i></span>
					</div>
					<div class="btn-box m-t10 m-b10">
						<button class="td-5 btn-red" id="">선택삭제</button>

					</div>
					<div class="board-list">
						<table>
							<tr class="center">
								<td class="td-5">
									<input type="checkbox" />
								</td>
								<td class="">회원이름</td>
								<td class="">회원아이디</td>
								<td class="td-15">회원가입일</td>
								<td class="td-15">등급</td>
							</tr>
							<tr class="center">
								<td class="td-5">
									<input type="checkbox" />
								</td>
								<td class="">관리자</td>
								<td class="">admin</td>
								<td class="td-15">2020-12-25</td>
								<td class="td-15">관리</td>
							</tr>
							<tr class="center">
								<td class="td-5">
									<input type="checkbox" />
								</td>
								<td class="">배수아</td>
								<td class="">qotndk</td>
								<td class="td-15">2021-01-01</td>
								<td class="td-15">일반</td>
							</tr>
						</table>
					</div>
					<div class="search-box m-t10">
						<form method="post" action="${pageContext.request.contextPath}/member">
							<select class="td-7" name="search">
								<option value="member-name">회원이름</option>
								<option value="member-id">회원아이디</option>
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
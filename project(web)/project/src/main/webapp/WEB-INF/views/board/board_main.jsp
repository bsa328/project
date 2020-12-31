<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>LOGO</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/reset.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/header_menu.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/common.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/board.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://kit.fontawesome.com/3249ba5f1a.js" crossorigin="anonymous"></script>
</head>

<body>
	<div class="html">
		<div class="header">
			<span class="logo"> <a href="${pageContext.request.contextPath}/admin">LOGO</a>
			</span>
			<div class="auth">
				<div class="user">사용자 : ${sessionScope.userName}(${sessionScope.userID})</div>
				<div class="logout">
					<a href="${pageContext.request.contextPath}/logout">로그아웃</a>
				</div>
			</div>
		</div>
		<div class="body">
			<div class="menu">
				<div class="menu-box">
					<span class="big-menu"> 공지사항 <i class="fas fa-chevron-down"></i>
					</span>
					<div class="small-menu">
						<a href="${pageContext.request.contextPath}/board">- 게시판</a>
					</div>
				</div>
				<div class="menu-box">
					<span class="big-menu"> 일정관리 <i class="fas fa-chevron-down"></i>
					</span>
					<div class="small-menu">
						<a href="${pageContext.request.contextPath}/calendar">- 일정등록</a>
					</div>
				</div>
				<div class="menu-box">
					<span class="big-menu"> 회원관리 <i class="fas fa-chevron-down"></i>
					</span>
					<div class="small-menu">
						<a href="#">- 회원목록</a>
					</div>
				</div>
				<div class="menu-box">
					<span class="big-menu"> 마이페이지 <i class="fas fa-chevron-down"></i>
					</span>
					<div class="small-menu">
						<a href="#">- 정보수정</a>
					</div>
				</div>
			</div>
			<div class="main">
				<div class="page-wrap">
					<div class="title">
						<span class=""><i class="fas fa-cube"> 공지사항 > 게시판</i></span>
					</div>
					<div class="btn-box m-t10 m-b10">
						<button class="td-5 btn-red" id="">선택삭제</button>
						<button type="button" class="td-7 btn-blue" onclick="location.href='board_insert.html'">게시글작성</button>
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
								<td>3</td>
								<td class="title-left">
									<a href="board_view.html">연말 행사 및 축제 공고입니다.</a>
								</td>
								<td>관리자</td>
								<td>2020-10-20</td>
								<td>43</td>
							</tr>
							<tr>
								<td>
									<input type="checkbox" />
								</td>
								<td>2</td>
								<td class="title-left">
									<a href="board_view.html">자유게시판입니다.</a>
								</td>
								<td>관리자</td>
								<td>2020-11-05</td>
								<td>18</td>
							</tr>
							<tr>
								<td>
									<input type="checkbox" />
								</td>
								<td>1</td>
								<td class="title-left">
									<a href="board_view.html">자유게시판입니다.</a>
								</td>
								<td>관리자</td>
								<td>2020-12-29</td>
								<td>65</td>
							</tr>
						</table>
					</div>
					<div class="search-box m-t10">
						<form method="post" action="board.html">
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

<script>
	$(function() {
		$(".big-menu").click(function() {
			$(this).toggleClass("active").next().toggle();
		});
	});
</script>

</html>
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

<link rel="stylesheet" href="${pageContext.request.contextPath}/calendar/core/main.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/calendar/daygrid/main.css">

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
						<span class=""><i class="fas fa-cube"> 일정관리 > 일정등록</i></span>
					</div>
					<div class="btn-box m-t10 m-b10"></div>
					<div class="board-list">
						<div id="calendar" class="calendar"></div>
					</div>
					<div class="search-box m-t10"></div>
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

<script src="${pageContext.request.contextPath}/calendar/core/main.js"></script>
<script src="${pageContext.request.contextPath}/calendar/core/locales/ko.js"></script>
<script src="${pageContext.request.contextPath}/calendar/interaction/main.js"></script>
<script src="${pageContext.request.contextPath}/calendar/daygrid/main.js"></script>

<script>
	document.addEventListener('DOMContentLoaded', function() {
		var calendarEl = document.getElementById('calendar');

		var calendar = new FullCalendar.Calendar(calendarEl, {
			plugins : [ 'interaction', 'dayGrid' ],
			header : {
				left : 'prevYear,prev,next,nextYear today',
				center : 'title',
				right : 'dayGridMonth,dayGridWeek,dayGridDay'
			},
			navLinks : true,
			editable : true,
			eventLimit : true,
			locales : "ko",
			events : [ {
				title : '',
				start : '',
				end : '',
				color : ''
			}, {
				title : '',
				start : '',
				end : '',
				color : ''
			} ]
		});

		calendar.render();
	});
</script>

<script>
	$(function() {
		$("#startDate, #endDate").datepicker({
			dataFormat : 'yy-mm-dd'
		});
	});
</script>

</html>
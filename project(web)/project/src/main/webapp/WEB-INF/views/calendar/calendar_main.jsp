<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/include/HEADER.jsp"%>
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/calendar.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/calendar/core/main.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/calendar/daygrid/main.css">

<link rel="stylesheet" href="http://code.jquery.com/ui/1.8.18/themes/base/jquery-ui.css" type="text/css" />
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
<script src="http://code.jquery.com/ui/1.8.18/jquery-ui.min.js"></script>

<script>
	$(document).ready(function() {
		$("#startDate").datepicker({
			dateFormat : 'yy-mm-dd'
		});

		$("#endDate").datepicker({
			dateFormat : 'yy-mm-dd'
		});
	});
</script>

<body>
	<div class="html">
		<%@ include file="/WEB-INF/views/include/AUTH.jsp"%>
		<div class="body">
			<%@ include file="/WEB-INF/views/include/MENU.jsp"%>
			<div class="main">
				<div class="page-wrap">
					<div class="title m-b10 bold">
						<span class="">일정관리 > 일정등록</span>
					</div>
					<form id="frm" method="post">
						<input type="hidden" name="" value="" />
						<div class="board-list">
							<table border="1" class="cal">
								<tr class="center tr">
									<td class="bg-eee td-8">시작일</td>
									<td class="p-3 td-12">
										<input type="text" id="startDate" class="td-80" /> <span class="i"><i class="far fa-calendar-alt"></i></span>
									</td>
									<td class="bg-eee td-8">종료일</td>
									<td class="p-3 td-12">
										<input type="text" id="endDate" class="td-80" /> <span class="i"><i class="far fa-calendar-alt"></i></span>
									</td>
									<td class="bg-eee td-8">내용</td>
									<td class="p-3">
										<input type="text" placeholder="일정 내용을 입력하세요." />
									</td>
									<td class="bg-eee td-8">등록자</td>
									<td class="p-3 td-15">
										<input type="text" readonly value="${sessionScope.empName}" />
									</td>
								</tr>
							</table>
						</div>
						<div class="center m-t5 m-b10">
							<button type="submit" class="btn-blue" id="">일정 등록</button>
							<button type="reset" class="btn-white">새로고침</button>
						</div>
					</form>
					<div class="title m-b10 bold">
						<span class="">일정관리 > 일정목록</span>
					</div>
					<div class="board-list">
						<div id="calendar" class="calendar"></div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<%@ include file="/WEB-INF/views/include/FOOTER.jsp"%>

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
					title : '일정내용\n등록자',
					start : '2021-01-07',
					end : '2021-01-12',
					color : '#61b3d2'
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
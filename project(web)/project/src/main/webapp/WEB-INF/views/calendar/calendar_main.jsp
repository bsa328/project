<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/include/HEADER.jsp"%>
<link rel="stylesheet" href="${pageContext.request.contextPath}/calendar/core/main.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/calendar/daygrid/main.css">

<body>
	<div class="html">
		<%@ include file="/WEB-INF/views/include/AUTH.jsp"%>
		<div class="body">
			<%@ include file="/WEB-INF/views/include/MENU.jsp"%>
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
	<footer class="center" style="height: 200px; line-height: 200px; color: #aaa; font-size: 15px;">
	<span class="copy">&copy;Copyright All Rights reserved.</span>
</footer>
</body>

<script>
	$(function() {
		$("#logout").click(function() {
			$.ajax({
				url		: "${pageContext.request.contextPath}/logout",
				type	: "POST",
				data	: "",
				success	: function(data) {
					if(data == "success") {
						alert("로그아웃 되었습니다.");
						window.location.href = '${pageContext.request.contextPath}/login';
					}
				},
				error	: function() {
					alert("시스템 에러");
				}
			});
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
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/include/HEADER.jsp"%>
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/calendar.css">
<link rel="stylesheet" href="http://code.jquery.com/ui/1.8.18/themes/base/jquery-ui.css" type="text/css" />
<link href='${pageContext.request.contextPath}/calendar/core/main.css' rel='stylesheet' />
<link href='${pageContext.request.contextPath}/calendar/daygrid/main.css' rel='stylesheet' />

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
						<c:choose>
							<c:when test="${sessionScope.empNum eq 'admin'}">
								<input type="hidden" name="calWriter" value="${sessionScope.empName}" />
							</c:when>
							<c:otherwise>
								<input type="hidden" name="calWriter" value="${sessionScope.empBuseoName} - ${sessionScope.empName}" />
							</c:otherwise>
						</c:choose>
						<div class="board-list">
							<table border="1" class="cal">
								<tr class="center tr">
									<td class="bg-eee td-8">시작일</td>
									<td class="p-3 td-12">
										<input type="text" id="calStartDate" name="calStartDate" class="td-80" readonly /> <span class="i"><i class="far fa-calendar-alt"></i></span>
									</td>
									<td class="bg-eee td-8">종료일</td>
									<td class="p-3 td-12">
										<input type="text" id="calEndDate" name="calEndDate" class="td-80" readonly /> <span class="i"><i class="far fa-calendar-alt"></i></span>
									</td>
									<td class="bg-eee td-8">내용</td>
									<td class="p-3">
										<input type="text" name="calContent" id="calContent" placeholder="일정 내용을 입력하세요." />
									</td>
									<td class="bg-eee td-8">등록자</td>
									<td class="p-3 td-15">
										<c:choose>
											<c:when test="${sessionScope.empNum eq 'admin'}">
												<input type="text" readonly name="calWriter" value="${sessionScope.empName}" />
											</c:when>
											<c:otherwise>
												<input type="text" readonly name="calWriter" value="${sessionScope.empBuseoName} - ${sessionScope.empName}" />
											</c:otherwise>
										</c:choose>
									</td>
								</tr>
							</table>
						</div>
						<div class="center m-t5 m-b10">
							<button type="submit" class="btn-blue" id="btn">일정 등록</button>
							<button type="reset" class="btn-white">새로고침</button>
						</div>
					</form>
					<div class="title m-b10 bold">
						<span class="">일정관리 > 일정목록</span>
					</div>
					<div class="board-list">
                        <div id='calendar' class="calendar"></div>
                    </div>
				</div>
			</div>
		</div>
	</div>
	<%@ include file="/WEB-INF/views/include/FOOTER.jsp"%>

	<script src='${pageContext.request.contextPath}/calendar/core/main.js'></script>
	<script src='${pageContext.request.contextPath}/calendar/core/locales/ko.js'></script>
	<script src='${pageContext.request.contextPath}/calendar/interaction/main.js'></script>
	<script src='${pageContext.request.contextPath}/calendar/daygrid/main.js'></script>

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
				events : resData
			});

			calendar.render();
		});
	</script>

	<script>
	    $(document).ready(function () {
	        $("#calStartDate").datepicker({
	            onSelect: function (selected) {
	                $("#calEndDate").datepicker("option", "minDate", selected)
	            },
	            minDate : 0
	        });
	
	        $("#calEndDate").datepicker({
	            onSelect: function (selected) {
	                $("#calStartDate").datepicker("option", "maxDate", selected)
	            }
	        });
	    });

		$("#btn").click(function() {
			
			if($("#calStartDate").val() == '') {
				alert("시작일을 선택하세요.");
				return false;
			}

			if($("#calEndDate").val() == '') {
				alert("종료일을 선택하세요.");
				return false;
			}

			if($.trim($("#calContent").val()) == '') {
				$("#calContent").focus();
				alert("일정 내용을 입력하세요.");
				return false;
			}

			$("#frm").submit();
			alert("일정이 등록되었습니다.");
			
		});
	</script>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<div class="menu">
	<div class="menu-box">
		<span class="big-menu">사원관리 </span>
		<div class="small-menu">
			<div>
				<a href="${pageContext.request.contextPath}/employee/employee_list">사원목록</a>
			</div>
			<c:if test="${sessionScope.empNum eq 'admin'}">
				<div>
					<a href="${pageContext.request.contextPath}/employee/employee_register">사원등록</a>
				</div>
			</c:if>
		</div>
	</div>
	<div class="menu-box">
		<span class="big-menu">게시판관리 </span>
		<div class="small-menu">
			<a href="${pageContext.request.contextPath}/board">게시판생성</a>
		</div>
	</div>
	<div class="menu-box">
		<span class="big-menu">일정관리 </span>
		<div class="small-menu">
			<a href="${pageContext.request.contextPath}/calendar">일정목록</a>
		</div>
	</div>
</div>
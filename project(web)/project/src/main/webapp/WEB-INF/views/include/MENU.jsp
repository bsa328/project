<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<div class="menu">
	<div class="menu-box">
		<span class="big-menu"> 사원관리 <i class="fas fa-chevron-down"></i>
		</span>
		<div class="small-menu">
			<div>
				<a href="${pageContext.request.contextPath}/member/member_main">- 사원목록</a>
			</div>
			<div>
				<a href="${pageContext.request.contextPath}/member/member_register">- 사원등록</a>
			</div>
			<div>
				<a href="#">- 조직도</a>
			</div>
		</div>
	</div>
	<div class="menu-box">
		<span class="big-menu"> 게시판관리 <i class="fas fa-chevron-down"></i>
		</span>
		<div class="small-menu">
			<a href="${pageContext.request.contextPath}/board">- 게시판생성</a>
		</div>
	</div>
	<div class="menu-box">
		<span class="big-menu"> 일정관리 <i class="fas fa-chevron-down"></i>
		</span>
		<div class="small-menu">
			<a href="${pageContext.request.contextPath}/calendar">- 일정목록</a>
		</div>
	</div>

</div>
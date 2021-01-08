<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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
			<a href="${pageContext.request.contextPath}/member">- 회원목록</a>
		</div>
	</div>
	<div class="menu-box">
		<span class="big-menu"> 마이페이지 <i class="fas fa-chevron-down"></i>
		</span>
		<div class="small-menu">
			<a href="${pageContext.request.contextPath}/mypage">- 정보수정</a>
		</div>
	</div>
</div>
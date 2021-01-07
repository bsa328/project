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
								<td class="td-5">회원번호</td>
								<td class="">회원이름</td>
								<td class="">아이디</td>
								<td class="">비밀번호</td>
								<td class="td-15">회원가입일</td>
								<td class="td-15">등급</td>
							</tr>
							<c:forEach items="${list}" var="memberList" varStatus="status">
								<tr class="center">
									<td class="td-5">
										<input type="checkbox" name="check" class="check" data-uid="${memberList.memberNum}" />
									</td>
									<td class="td-5">${memberList.memberNum}</td>
									<td class="">${memberList.memberName}</td>
									<td class="">${memberList.memberID}</td>
									<td class="">${memberList.memberPasswd}</td>
									<td class="td-15">${memberList.memberRegdate}</td>
									<td class="td-15">-</td>
								</tr>
							</c:forEach>
						</table>
					</div>
					<div class="search-box m-t10">
						<form method="post" action="${pageContext.request.contextPath}/member">
							<select class="td-7" name="searchOpt">
								<option value="member_name" <c:if test="${searchOpt eq 'member_name'}">selected</c:if>>회원이름</option>
								<option value="member_id" <c:if test="${searchOpt eq 'member_id'}">selected</c:if>>회원아이디</option>
								<option value="all" <c:if test="${searchOpt eq 'all'}">selected</c:if>>전체검색</option>
							</select>
							<input value="${search-word}" type="text" class="td-12" name="search-word" required autocomplete="off" />
							<button type="submit" class="td-5 btn-gray">검색</button>
						</form>
					</div>
					
					<c:if test="${count > 0}">
						<div class="paging m-t50 center">
							<c:choose>
								<c:when test="${curPage > 1}">
									<span class="page">
									<a href="${pageContext.request.contextPath}/member?curPage=1&searchOpt=${searchOpt}&search-word=${search-word}">
										<i class="fas fa-angle-double-left"></i>
									</a>
									</span>
								</c:when>
							</c:choose>
							
							
							<span class="page"><a href=""><i class="fas fa-angle-left"></i></a></span>
							
							
							<span class="page page-active"><a href="" class="f6">1</a></span>
							
							
							<span class="page"><a href="">2</a></span>
							
							
							<span class="page"><a href="">3</a></span>
							
							
							<span class="page"><a href="">4</a></span>
							
							
							<span class="page"><a href="">5</a></span>
							
							
							<span class="page"><a href=""><i class="fas fa-angle-right"></i></a></span>
							
							
							<span class="page"> <a href=""><i class="fas fa-angle-double-right"></i></a></span>
							
							
						</div>
					</c:if>
					
				</div>
			</div>
		</div>
	</div>
	<%@ include file="/WEB-INF/views/include/FOOTER.jsp"%>
	
</html>
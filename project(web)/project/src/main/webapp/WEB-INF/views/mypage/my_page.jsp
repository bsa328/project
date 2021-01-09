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
						<span class=""><i class="fas fa-cube"> 마이페이지 > 정보수정</i></span>
					</div>
					<div class="btn-box m-t10 m-b10">
					</div>
					<div class="board-list">
						<table>
							<tr class="center">
								<td class="td-5">
									<input type="checkbox" onClick="chkAll();" id="chkAll" />
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
										<input type="checkbox" name="chk" class="chk" data-uid="${memberList.memberNum}" />
									</td>
									<td class="td-5">${memberList.memberNum}</td>
									<td class="">
										<a href="${pageContext.request.contextPath}/member/member_view?memberNum=${boardList.memberNum}">${memberList.memberName} </a>
									</td>
									<td class="">${memberList.memberID}</td>
									<td class="">${memberList.memberPasswd}</td>
									<td class="td-15">${memberList.memberRegdate}</td>
									<td class="td-15">-</td>
								</tr>
							</c:forEach>

						</table>
					</div>
				</div>
			</div>
		</div>
	</div>
	<%@ include file="/WEB-INF/views/include/FOOTER.jsp"%>

</html>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/include/HEADER.jsp"%>
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/board.css">

<style>
tr:nth-child(1) {
	background-color: #fff;
	border-bottom: 1px solid #abb3b8a2;
}
</style>

<body>
	<div class="html">
		<%@ include file="/WEB-INF/views/include/AUTH.jsp"%>
		<div class="body">
			<%@ include file="/WEB-INF/views/include/MENU.jsp"%>
			<div class="main">
				<div class="page-wrap">
					<div class="title">
						<span class=""><i class="fas fa-cube"> 마이페이지 > 내 정보 > 정보 수정</i></span>
					</div>
					<div class="btn-box m-t10 m-b10">
						<button class="" id=""></button>
						<button type="button" class="td-7 btn-gray" onclick="location.href='${pageContext.request.contextPath}/member/member_view'">이전으로</button>
					</div>
					<form id="frm" method="POST" action="${pageContext.request.contextPath}/member/member_modify" autocomplete="off">
						<div class="board-list btn-box">
							<div class="photo p-5">
								<div class="" style="background-color: #eee; width: 100%; height: 100%;"></div>
							</div>
							<div class="info-table">
								<table border="1" class="insert-box center">
									<tr class="">
										<td class="td-10 bg-blue">이름</td>
										<td class="p-5 td-23">
											<input type="text" class="td-100" />
										</td>
										<td class="td-10 bg-blue">아이디</td>
										<td class="p-5 td-23">
											<input type="text" class="td-100" placeholder="" readonly />
										</td>
										<td class="td-10 bg-blue">비밀번호</td>
										<td class="p-5 td-23">
											<input type="text" class="td-100" value="" />
										</td>
									</tr>
									<tr class="">
										<td class="td-10 bg-blue">회원번호</td>
										<td class="p-5">
											<input type="text" class="td-100" />
										</td>
										<td class="td-10 bg-blue">회원가입일</td>
										<td class="p-5">
											<input type="text" class="td-100" placeholder="-" readonly />
										</td>
										<td class="td-10 bg-blue">회원등급</td>
										<td class="p-5">
											<input type="text" class="td-100" placeholder="-" readonly />
										</td>
									</tr>
									<tr class="">
										<td class="td-10 bg-blue">성별</td>
										<td class="p-5">
											<select name="" class="td-100">
												<option value="men">남</option>
												<option value="woman">여</option>
												<option value="no">선택안함</option>
											</select>
										</td>
										<td class="td-10 bg-blue">생년월일</td>
										<td class="p-5">
											<input type="text" class="td-100" placeholder="ex) 19970328" maxlength="8" />
										</td>
										<td class="td-10 bg-blue">전화번호</td>
										<td class="p-5">
											<select name="" class="td-25">
												<option value="1" class="">010</option>
												<option value="2">051</option>
												<option value="no">없음</option>
											</select>
											- <input type="text" class="td-33" maxlength="4" />
											- <input type="text" class="td-33" maxlength="4" />
										</td>
									</tr>
									<tr class="">
										<td class="td-10 bg-blue">취미</td>
										<td class="p-5">
											<input type="text" class="td-100" />
										</td>
										<td class="td-10 bg-blue">특기</td>
										<td class="p-5">
											<input type="text" class="td-100" />
										</td>
										<td class="td-10 bg-blue">종교</td>
										<td class="p-5">
											<select name="" class="td-100">
												<option value="1">무교</option>
												<option value="2">불교</option>
												<option value="3">기독교</option>
											</select>
										</td>
									</tr>
									<tr class="">
										<td class="td-10 bg-blue">추가사항1</td>
										<td class="p-5">
											<input type="text" class="td-100" />
										</td>
										<td class="td-10 bg-blue">추가사항2</td>
										<td class="p-5">
											<input type="text" class="td-100" />
										</td>
										<td class="td-10 bg-blue">추가사항3</td>
										<td class="p-5">
											<input type="text" class="td-100" />
										</td>
									</tr>
								</table>
							</div>
						</div>
						<div class="m-t5">
							<input type="file" class="" style="width: 12%;" />
						</div>
						<div class="center m-t10">
							<button class="td-7 btn-blue" type="submit">수정하기</button>
							<button class=""></button>
						</div>
					</form>
					<div class="search-box m-t10"></div>
				</div>
			</div>
		</div>
	</div>
	<%@ include file="/WEB-INF/views/include/FOOTER.jsp"%>
</html>

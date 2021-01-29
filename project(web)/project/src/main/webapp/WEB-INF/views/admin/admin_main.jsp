<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/include/HEADER.jsp"%>
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/board.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/admin.css">


<body>
	<div class="html">
		<%@ include file="/WEB-INF/views/include/AUTH.jsp"%>
		<div class="body">
			<%@ include file="/WEB-INF/views/include/MENU.jsp"%>
			<div class="main" style="padding: 0;">
				<div class="btn-box html">
					<div class="main-1">
						<div class="main-1-1">
							<div class="bold m-b10">근태관리</div>
							<div class="date">2021년 01월 27일 수요일</div>
							<div class="btn-box bold m-b10" style="font-size: 14px;">
								<span class="">출근시간</span>
								<span class="">AM 08:58</span>
							</div>
							<div class="btn-box bold m-b10" style="font-size: 14px;">
								<span class="">퇴근시간</span>
								<span class="">PM 17:58</span>
							</div>
							<div class="btn-box bold m-b10" style="font-size: 14px;">
								<span class="">현재상태</span>
								<span class="">업무중</span>
							</div>
							<div class="btn-box">
								<button class="work-on">출근하기</button>
								<button class="work-off">퇴근하기</button>
							</div>
						</div>
						<div class="main-1-2">
							<div class="bold m-b10">메일관리</div>
							<div class="date">2021년 01월 27일 수요일</div>
							<div class="btn-box bold m-b10" style="font-size: 14px;">
								<span class="">받은 메일함</span>
								<span class="">0건</span>
							</div>
							<div class="btn-box bold m-b10" style="font-size: 14px;">
								<span class="">보낸 메일함</span>
								<span class="">10건</span>
							</div>
							<div class="btn-box bold m-b10" style="font-size: 14px;">
								<span class="">메일 보관함</span>
								<span class="">100건</span>
							</div>
							<div class="btn-box bold m-b10" style="font-size: 14px;">
								<span class="">메일 사용량</span>
								<span class="">312.0KB / 1024.0MB</span>
							</div>
							<div class="btn-box">
								<button class="mail-btn">메일쓰기</button>
								<button class="mail-btn">메일함 바로가기</button>
							</div>
						</div>
					</div>
					<div class="main-2">
						<div class="bold" style="margin-bottom: 20px;">최근 부서 알림글</div>
						<div class="btn-box" style="font-size: 14px;">
							<div class="btn-box">
								<div class="p-10">
									<img src="images/user.png">
								</div>
								<div style="padding: 15px;">
									<div class="bold">[알림]&nbsp;운영자 확인이 필요한 근태정보가 있습니다. 근태관리에서 확인하세요.</div>
									<div>01-27 15:05 김철수 부장</div>
								</div>
							</div>
							<div class="" style="padding: 15px; margin-right: 30px; font-size: 18px;">
								<i class="fas fa-chevron-right"></i>
							</div>
						</div>
						<hr style="margin-top: 10px; margin-bottom: 10px;">
						<div class="btn-box" style="font-size: 14px;">
							<div class="btn-box">
								<div class="p-10">
									<img src="images/user.png">
								</div>
								<div style="padding: 15px;">
									<div class="bold">[알림]&nbsp;운영자 확인이 필요한 근태정보가 있습니다. 근태관리에서 확인하세요.</div>
									<div>01-27 15:05 김철수 부장</div>
								</div>
							</div>
							<div class="" style="padding: 15px; margin-right: 30px; font-size: 18px;">
								<i class="fas fa-chevron-right"></i>
							</div>
						</div>
						<hr style="margin-top: 10px; margin-bottom: 10px;">
						<div class="btn-box" style="font-size: 14px;">
							<div class="btn-box">
								<div class="p-10">
									<img src="images/user.png">
								</div>
								<div style="padding: 15px;">
									<div class="bold">[알림]&nbsp;운영자 확인이 필요한 근태정보가 있습니다. 근태관리에서 확인하세요.</div>
									<div>01-27 15:05 김철수 부장</div>
								</div>
							</div>
							<div class="" style="padding: 15px; margin-right: 30px; font-size: 18px;">
								<i class="fas fa-chevron-right"></i>
							</div>
						</div>
						<hr style="margin-top: 10px; margin-bottom: 10px;">
						<div class="btn-box" style="font-size: 14px;">
							<div class="btn-box">
								<div class="p-10">
									<img src="images/user.png">
								</div>
								<div style="padding: 15px;">
									<div class="bold">[알림]&nbsp;운영자 확인이 필요한 근태정보가 있습니다. 근태관리에서 확인하세요.</div>
									<div>01-27 15:05 김철수 부장</div>
								</div>
							</div>
							<div class="" style="padding: 15px; margin-right: 30px; font-size: 18px;">
								<i class="fas fa-chevron-right"></i>
							</div>
						</div>
						<hr style="margin-top: 10px; margin-bottom: 10px;">
						<div class="btn-box" style="font-size: 14px;">
							<div class="btn-box">
								<div class="p-10">
									<img src="images/user.png">
								</div>
								<div style="padding: 15px;">
									<div class="bold">[알림]&nbsp;운영자 확인이 필요한 근태정보가 있습니다. 근태관리에서 확인하세요.</div>
									<div>01-27 15:05 김철수 부장</div>
								</div>
							</div>
							<div class="" style="padding: 15px; margin-right: 30px; font-size: 18px;">
								<i class="fas fa-chevron-right"></i>
							</div>
						</div>
					</div>
				</div>
				<div class="btn-box html">
					<div class="main-3">
						<div class="bold" style="margin-bottom: 20px;">공지사항 알림글</div>
						<div class="btn-box m-b10" style="font-size: 14px;">
							<div class="bold">
								<span style="color: #d92550;">[공지]&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>
								운영자 확인이 필요한 근태정보가 있습니다. 근태관리에서 확인하세요.
							</div>
							<div class="" style="font-size: 12px; margin-right: 20px;">01-27</div>
						</div>
						<hr>
						<div class="btn-box m-t10 m-b10" style="font-size: 14px;">
							<div class="bold">
								<span style="color: #d92550;">[공지]&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>
								운영자 확인이 필요한 근태정보가 있습니다. 근태관리에서 확인하세요.
							</div>
							<div class="" style="font-size: 12px; margin-right: 20px;">01-27</div>
						</div>
						<hr>
						<div class="btn-box m-t10 m-b10" style="font-size: 14px;">
							<div class="bold">
								<span style="color: #d92550;">[공지]&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>
								운영자 확인이 필요한 근태정보가 있습니다. 근태관리에서 확인하세요.
							</div>
							<div class="" style="font-size: 12px; margin-right: 20px;">01-27</div>
						</div>
						<hr>
						<div class="btn-box m-t10 m-b10" style="font-size: 14px;">
							<div class="bold">
								<span style="color: #d92550;">[공지]&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>
								운영자 확인이 필요한 근태정보가 있습니다. 근태관리에서 확인하세요.
							</div>
							<div class="" style="font-size: 12px; margin-right: 20px;">01-27</div>
						</div>
						<hr>
						<div class="btn-box m-t10 m-b10" style="font-size: 14px;">
							<div class="bold">
								<span style="color: #d92550;">[공지]&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>
								운영자 확인이 필요한 근태정보가 있습니다. 근태관리에서 확인하세요.
							</div>
							<div class="" style="font-size: 12px; margin-right: 20px;">01-27</div>
						</div>
					</div>
					<div class="main-4">
						<div class="bold" style="margin-bottom: 20px;">결재 대기 문서</div>
						<div class="" style="display: flex;">
							<div class="bold td-10 center" style="font-size: 14px;">기안일</div>
							<div class="bold td-15 center" style="font-size: 14px;">결재양식</div>
							<div class="bold td-62 center" style="font-size: 14px;">결재 문서 제목</div>
							<div class="bold center" style="font-size: 14px;">첨부</div>
						</div>
						<hr class="m-t10 m-b10">
						<div style="font-size: 14px; text-align: center;">결재할 문서가 없습니다.</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<%@ include file="/WEB-INF/views/include/FOOTER.jsp"%>
</html>

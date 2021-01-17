<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/include/HEADER.jsp"%>
<link rel="stylesheet" href="{pageContext.request.contextPath}/css/board.css">

<body>
	<div class="html">
		<%@ include file="/WEB-INF/views/include/AUTH.jsp"%>
		<div class="body">
			<%@ include file="/WEB-INF/views/include/MENU.jsp"%>
			<div class="main">
                <div class="page-wrap">
                    <div class="title m-b10 bold">
                        <span class="">2110011</span>
                    </div>
                    <div class="btn-box m-b5">
                        <button></button>
                        <button type="button" class="btn-white"
                            onclick="location.href='{pageContext.request.contextPath}/employee_list'">목록으로</button>
                    </div>
                    <div class="board-list btn-box">
                        <div class="photo-box">
                            <div class="photo m-b5">
                                <img src="{pageContext.request.contextPath}/images/not-found" style="width: 100%; height: 100%;" />
                            </div>
                            <div class="file">
                            </div>
                        </div>
                        <table border="1" style="width: 89%;">
                            <tr class="center">
                                <td class="bg-eee td-8">회사명</td>
                                <td class="td-12 p-10 left">삼성</td>
                                <td class="bg-eee td-8">부서명</td>
                                <td class="td-12 p-10 left">영업부</td>
                                <td class="bg-eee td-8">직책명</td>
                                <td class="td-12 p-10 left">부장</td>
                                <td class="bg-eee td-8">입사년월일</td>
                                <td class="td-12 p-10 left">2021년 01월 15일</td>
                                <td class="bg-eee td-8">비밀번호</td>
                                <td class="td-12 p-10 left">1</td>
                            </tr>
                            <tr class="center">
                                <td class="bg-eee td-8">사원명</td>
                                <td class="td-12 p-10 left">김부장</td>
                                <td class="bg-eee td-8">성별</td>
                                <td class="td-12 p-10 left">남자</td>
                                <td class="bg-eee td-8">생년월일</td>
                                <td class="td-12 p-10 left">1970년 03월 01일 (양력)</td>
                                <td class="bg-eee td-8">휴대폰</td>
                                <td class="td-12 p-10 left">010-1234-1234</td>
                                <td class="bg-eee td-8">내선번호</td>
                                <td class="td-12 p-10 left">051-222-3333</td>
                            </tr>
                            <tr class="center">
                                <td class="bg-eee td-8">채용형태</td>
                                <td class="td-12 p-10 left">공개채용</td>
                                <td class="bg-eee td-8">희망직무</td>
                                <td class="td-12 p-10 left">마케팅</td>
                                <td class="bg-eee td-8">이메일</td>
                                <td class="td-12 p-10 left">kim123@naver.com</td>
                                <td class="bg-eee td-8">병역구분</td>
                                <td class="td-12 p-10 left">병역필</td>
                                <td class="bg-eee td-8">종교</td>
                                <td class="td-12 p-10 left">불교</td>
                            </tr>
                            <tr class="center">
                                <td class="bg-eee td-8">취미</td>
                                <td class="td-12 p-10 left">-</td>
                                <td class="bg-eee td-8">특기</td>
                                <td class="td-12 p-10 left">-</td>
                                <td class="bg-eee td-8">장애여부</td>
                                <td class="td-12 p-10 left">비장애</td>
                                <td class="bg-eee td-8">보훈대상여부</td>
                                <td class="td-12 p-10 left">비대상</td>
                                <td class="bg-eee td-8">결혼여부</td>
                                <td class="td-12 p-10 left">기혼</td>
                            </tr>
                            <tr class="center">
                                <td class="bg-eee td-8">보유자격1</td>
                                <td class="td-12 p-10 left">-</td>
                                <td class="bg-eee td-8">보유자격2</td>
                                <td class="td-12 p-10 left">-</td>
                                <td class="bg-eee td-8">보유자격3</td>
                                <td class="td-12 p-10 left">-</td>
                                <td class="bg-eee td-8">보유자격4</td>
                                <td class="td-12 p-10 left">-</td>
                                <td class="bg-eee td-8">보유자격5</td>
                                <td class="td-12 p-10 left">-</td>
                            </tr>
                            <tr class="center">
                                <td class="bg-eee td-8">어학사항1</td>
                                <td class="td-12 p-10 left">영어 (중)</td>
                                <td class="bg-eee td-8">어학사항2</td>
                                <td class="td-12 p-10 left">중국어 (하)</td>
                                <td class="bg-eee td-8">어학사항3</td>
                                <td class="td-12 p-10 left">-</td>
                                <td class="bg-eee td-8">어학사항4</td>
                                <td class="td-12 p-10 left">-</td>
                                <td class="bg-eee td-8">어학사항5</td>
                                <td class="td-12 p-10 left">-</td>
                            </tr>
                            <tr class="center">
                                <td class="bg-eee td-8">상벌사항1</td>
                                <td class="td-12 p-10 left">-</td>
                                <td class="bg-eee td-8">상벌사항2</td>
                                <td class="td-12 p-10 left">-</td>
                                <td class="bg-eee td-8">상벌사항3</td>
                                <td class="td-12 p-10 left">-</td>
                                <td class="bg-eee td-8">상벌사항4</td>
                                <td class="td-12 p-10 left">-</td>
                                <td class="bg-eee td-8">상벌사항</td>
                                <td class="td-12 p-10 left">-</td>
                            </tr>
                        </table>
                    </div>
                    <div class="board-list m-t10">
                        <div class="total-num bold m-b5">추가사항</div>
                        <div class="memo noto p-10">영업부 김부장입니다.</div>
                    </div>
                    <div class="center m-t5">
                        <button class="btn-blue">수정하기</button>
                        <button class="btn-red">삭제하기</button>
                    </div>
                </div>
            </div>
		</div>
	</div>
	<%@ include file="/WEB-INF/views/include/FOOTER.jsp"%>
</html>

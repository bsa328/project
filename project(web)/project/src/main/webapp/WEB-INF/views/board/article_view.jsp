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
                        <span class="">영업부 > notice</span>
                    </div>
                    <div class="btn-box m-b5">
                        <button></button>
                        <button type="button" class="btn-white"
                            onclick="location.href='{pageContext.request.contextPath}/article_list'">목록으로</button>
                    </div>
                    <div class="board-list">
                        <table border="1">
                            <tr class="center">
                                <td class="bg-eee td-10">게시글 분류</td>
                                <td class="p-10 left" colspan="3">
                                    공지사항
                                </td>
                            </tr>
                            <tr class="center">
                                <td class="bg-eee td-10">게시글 제목</td>
                                <td class="p-10 left" colspan="3">
                                    영업팀 공지사항입니다. 반드시 필독!
                                </td>
                            </tr>
                            <tr class="center">
                                <td class="bg-eee td-10">작성자</td>
                                <td class="td-40 p-10 left">김부장</td>
                            </tr>
                            <tr class="center">
                                <td class="bg-eee td-10">내용</td>
                                <td class="p-10 left top" style="height: 320px;" colspan="3">
                                    영업팀 공지입니다.</td>
                            </tr>
                            <tr class="center">
                                <td class="bg-eee td-10">첨부파일</td>
                                <td class="p-10 left" colspan="3">-</td>
                            </tr>
                            <tr class="center">
                                <td class="bg-eee td-10">조회수</td>
                                <td class="p-10 left" colspan="3">31</td>
                            </tr>
                        </table>
                    </div>
                    <div class="center m-t5">
                        <button class="btn-blue" onclick="location.href='{pageContext.request.contextPath}/article_modify'">수정하기</button>
                        <button class="btn-red">삭제하기</button>
                    </div>
                </div>
            </div>
		</div>
	</div>
	<%@ include file="/WEB-INF/views/include/FOOTER.jsp"%>
</html>

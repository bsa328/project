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
                        <button class="btn-red" id="">선택삭제</button>
                        <button type="button" class="btn-blue" onclick="{pageContext.request.contextPath}/location.href='article_insert'">게시글
                            작성</button>
                    </div>
                    <div class="board-list">
                        <table border="1">
                            <tr class="center bg-eee">
                                <td class="td-3"><input type="checkbox" /></td>
                                <td class="td-4">번호</td>
                                <td class="td-8">분류</td>
                                <td class="">게시글 제목</td>
                                <td class="td-8">작성자</td>
                                <td class="td-8">날짜</td>
                                <td class="td-4">조회</td>
                                <td class="td-8">게시글 관리</td>
                            </tr>
                            <!-- <tr class="center">
                                <td class="bold" colspan="8">등록된 게시글이 없습니다.</td>
                            </tr> -->
                            <tr class="center">
                                <td><input type="checkbox" /></td>
                                <td>-</td>
                                <td class="notice">공지사항</td>
                                <td class="p-10 left"><a href="article_view.html">영업팀 공지사항입니다. 반드시 필독!</a></td>
                                <td>김과장</td>
                                <td>2021-01-14</td>
                                <td>15</td>
                                <td><button class="s-btn-blue" id="">수정</button>
                                    <button class="s-btn-white" id="">삭제</button>
                                </td>
                            </tr>
                            <tr class="center">
                                <td><input type="checkbox" /></td>
                                <td>-</td>
                                <td class="notice">공지사항</td>
                                <td class="p-10 left"><a href="{pageContext.request.contextPath}/article_view">영업팀 공지사항입니다. 반드시 필독!</a></td>
                                <td>김과장</td>
                                <td>2021-01-14</td>
                                <td>15</td>
                                <td><button class="s-btn-blue" id="">수정</button>
                                    <button class="s-btn-white" id="">삭제</button>
                                </td>
                            </tr>
                            <tr class="center">
                                <td><input type="checkbox" /></td>
                                <td>-</td>
                                <td class="notice">공지사항</td>
                                <td class="p-10 left"><a href="{pageContext.request.contextPath}/article_view">영업팀 공지사항입니다. 반드시 필독!</a></td>
                                <td>김과장</td>
                                <td>2021-01-14</td>
                                <td>15</td>
                                <td><button class="s-btn-blue" id="">수정</button>
                                    <button class="s-btn-white" id="">삭제</button>
                                </td>
                            </tr>
                            <tr class="center">
                                <td><input type="checkbox" /></td>
                                <td>10</td>
                                <td>일반</td>
                                <td class="p-10 left"><a href="{pageContext.request.contextPath}/article_view">영업팀 공지사항입니다. 반드시 필독!</a></td>
                                <td>김과장</td>
                                <td>2021-01-14</td>
                                <td>15</td>
                                <td><button class="s-btn-blue" id="">수정</button>
                                    <button class="s-btn-white" id="">삭제</button>
                                </td>
                            </tr>
                            <tr class="center">
                                <td><input type="checkbox" /></td>
                                <td>9</td>
                                <td>일반</td>
                                <td class="p-10 left"><a href="{pageContext.request.contextPath}/article_view">영업팀 공지사항입니다. 반드시 필독!</a></td>
                                <td>김과장</td>
                                <td>2021-01-14</td>
                                <td>15</td>
                                <td><button class="s-btn-blue" id="">수정</button>
                                    <button class="s-btn-white" id="">삭제</button>
                                </td>
                            </tr>
                            <tr class="center">
                                <td><input type="checkbox" /></td>
                                <td>8</td>
                                <td>일반</td>
                                <td class="p-10 left"><a href="{pageContext.request.contextPath}/article_view">영업팀 공지사항입니다. 반드시 필독!</a></td>
                                <td>김과장</td>
                                <td>2021-01-14</td>
                                <td>15</td>
                                <td><button class="s-btn-blue" id="">수정</button>
                                    <button class="s-btn-white" id="">삭제</button>
                                </td>
                            </tr>
                            <tr class="center">
                                <td><input type="checkbox" /></td>
                                <td>7</td>
                                <td>일반</td>
                                <td class="p-10 left"><a href="{pageContext.request.contextPath}/article_view">영업팀 공지사항입니다. 반드시 필독!</a></td>
                                <td>김과장</td>
                                <td>2021-01-14</td>
                                <td>15</td>
                                <td><button class="s-btn-blue" id="">수정</button>
                                    <button class="s-btn-white" id="">삭제</button>
                                </td>
                            </tr>
                            <tr class="center">
                                <td><input type="checkbox" /></td>
                                <td>6</td>
                                <td>일반</td>
                                <td class="p-10 left"><a href="{pageContext.request.contextPath}/article_view">영업팀 공지사항입니다. 반드시 필독!</a></td>
                                <td>김과장</td>
                                <td>2021-01-14</td>
                                <td>15</td>
                                <td><button class="s-btn-blue" id="">수정</button>
                                    <button class="s-btn-white" id="">삭제</button>
                                </td>
                            </tr>
                            <tr class="center">
                                <td><input type="checkbox" /></td>
                                <td>5</td>
                                <td>일반</td>
                                <td class="p-10 left"><a href="{pageContext.request.contextPath}/article_view">영업팀 공지사항입니다. 반드시 필독!</a></td>
                                <td>김과장</td>
                                <td>2021-01-14</td>
                                <td>15</td>
                                <td><button class="s-btn-blue" id="">수정</button>
                                    <button class="s-btn-white" id="">삭제</button>
                                </td>
                            </tr>
                            <tr class="center">
                                <td><input type="checkbox" /></td>
                                <td>4</td>
                                <td>일반</td>
                                <td class="p-10 left"><a href="{pageContext.request.contextPath}/article_view">영업팀 공지사항입니다. 반드시 필독!</a></td>
                                <td>김과장</td>
                                <td>2021-01-14</td>
                                <td>15</td>
                                <td><button class="s-btn-blue" id="">수정</button>
                                    <button class="s-btn-white" id="">삭제</button>
                                </td>
                            </tr>
                            <tr class="center">
                                <td><input type="checkbox" /></td>
                                <td>3</td>
                                <td>일반</td>
                                <td class="p-10 left"><a href="{pageContext.request.contextPath}/article_view">영업팀 공지사항입니다. 반드시 필독!</a></td>
                                <td>김과장</td>
                                <td>2021-01-14</td>
                                <td>15</td>
                                <td><button class="s-btn-blue" id="">수정</button>
                                    <button class="s-btn-white" id="">삭제</button>
                                </td>
                            </tr>
                            <tr class="center">
                                <td><input type="checkbox" /></td>
                                <td>2</td>
                                <td>일반</td>
                                <td class="p-10 left"><a href="{pageContext.request.contextPath}/article_view">영업팀 공지사항입니다. 반드시 필독!</a></td>
                                <td>김과장</td>
                                <td>2021-01-14</td>
                                <td>15</td>
                                <td><button class="s-btn-blue" id="">수정</button>
                                    <button class="s-btn-white" id="">삭제</button>
                                </td>
                            </tr>
                            <tr class="center">
                                <td><input type="checkbox" /></td>
                                <td>1</td>
                                <td>일반</td>
                                <td class="p-10 left"><a href="{pageContext.request.contextPath}/article_view">영업팀 공지사항입니다. 반드시 필독!</a></td>
                                <td>김과장</td>
                                <td>2021-01-14</td>
                                <td>15</td>
                                <td><button class="s-btn-blue" id="">수정</button>
                                    <button class="s-btn-white" id="">삭제</button>
                                </td>
                            </tr>
                        </table>
                    </div>
                    <div class="search-box m-t5">
                        <div class="total-num">전체 게시글수 : 13개</div>
                        <div class="">
                            <form method="post" action="{pageContext.request.contextPath}/board">
                                <select class="w-150" name="searchOpt">
                                    <option value="">전체검색</option>
                                    <option value=""> 분류</option>
                                    <option value="">게시글 제목</option>
                                    <option value="">작성자</option>
                                </select>
                                <input type="text" class="w-150" name="words" required autocomplete="off" />
                                <button type="submit" class="btn-white" style="width: 70px;">검색</button>
                            </form>
                        </div>
                    </div>
                    <div class="paging m-t10 center">
                        <span class="page">
                            <a href=""><i class="fas fa-angle-double-left"></i></a>
                        </span>
                        <span class="page">
                            <a href=""><i class="fas fa-angle-left"></i></a>
                        </span>
                        <span class="page page-active">
                            <a href="" class="f6">1</a>
                        </span>
                        <span class="page"><a href="">2</a></span>
                        <span class="page"><a href="">3</a></span>
                        <span class="page"><a href="">4</a></span>
                        <span class="page"><a href="">5</a></span>
                        <span class="page">
                            <a href=""><i class="fas fa-angle-right"></i></a>
                        </span>
                        <span class="page">
                            <a href=""><i class="fas fa-angle-double-right"></i></a>
                        </span>
                    </div>
                </div>
            </div>
		</div>
	</div>
	<%@ include file="/WEB-INF/views/include/FOOTER.jsp"%>
</html>

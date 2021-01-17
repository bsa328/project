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
                        <span class="">게시판 관리 > 게시판 생성</span>
                    </div>
                    <div class="board-list">
                        <table border="1">
                            <tr class="center">
                                <td class="bg-eee td-10">게시판 그룹</td>
                                <td class="td-15 p-3">
                                    <select class="select" name="searchOpt">
                                        <option value="buseo">부서를 선택하세요.</option>
                                        <option value="100">관리부</option>
                                        <option value="200">기획부</option>
                                        <option value="300">인사부</option>
                                        <option value="400">영업부</option>
                                        <option value="500">생산부</option>
                                    </select>
                                </td>
                                <td class="bg-eee td-10">게시판 코드</td>
                                <td class="td-15 p-3">
                                    <input type="text" placeholder="영어로 입력" />
                                </td>
                                <td class="bg-eee td-10">게시판 관리자</td>
                                <td class="td-15 p-3">
                                    <input type="text" readonly value="사용자" />
                                </td>
                                <td class="bg-eee td-10">권한</td>
                                <td class="td-15 p-3">
                                    <select class="select" name="searchOpt">
                                        <option value="">공개여부</option>
                                        <option value="">모두</option>
                                        <option value="">해당부서만</option>
                                    </select>
                                </td>
                            </tr>
                            <tr class="center">
                                <td class="bg-eee td-10">게시판 제목</td>
                                <td class="td-15 p-3" colspan="3">
                                    <input type="text" placeholder="제목을 입력하세요." />
                                </td>
                                <td class="bg-eee td-10">게시판 색상</td>
                                <td class="td-15 p-3">
                                    <select class="select" name="searchOpt">
                                        <option value="">색상을 선택하세요.</option>
                                        <option value="">#fff</option>
                                        <option value="">#ccc</option>
                                        <option value="">선택안함</option>
                                    </select>
                                </td>
                                <td class="bg-eee td-10">등록 날짜</td>
                                <td class="td-15 p-3">
                                    <input type="text" readonly value="2021-01-14" />
                                </td>
                            </tr>
                        </table>
                    </div>
                    <div class="center m-t5 m-b10">
                        <button class="btn-blue" onClick="">게시판 생성</button>
                        <button class="btn-white">취소하기</button>
                    </div>
                    <div class="title m-b10 bold">
                        <span class="">게시판 관리 > 게시판 목록</span>
                    </div>
                    <div class="btn-box m-b5">
                        <button class="btn-red" id="">선택삭제</button>
                    </div>
                    <div class="board-list">
                        <table border="1">
                            <tr class="center bg-eee">
                                <td class="td-3"><input type="checkbox" /></td>
                                <td class="td-4">번호</td>
                                <td class="td-8">게시판 그룹</td>
                                <td class="td-8">게시판 코드</td>
                                <td class="">게시판 제목</td>
                                <td class="td-8">관리자</td>
                                <td class="td-8">권한</td>
                                <td class="td-8">게시판 색상</td>
                                <td class="td-8">등록 날짜</td>
                            </tr>
                            <!-- <tr class="center">
                                <td class="bold" colspan="8">등록된 게시판이 없습니다.</td>
                            </tr> -->
                            <tr class="center">
                                <td><input type="checkbox" /></td>
                                <td>10</td>
                                <td>영업부</td>
                                <td><a href="{pageContext.request.contextPath}/article_list" target="_blank">notice</a></td>
                                <td class=""><a href="{pageContext.request.contextPath}/article_list" target="_blank">연말 행사 및 축제 공고입니다.</a></td>
                                <td class="">김과장</td>
                                <td>모두</td>
                                <td>#fff</td>
                                <td class="">2021-01-14</td>
                            </tr>
                            <tr class="center">
                                <td><input type="checkbox" /></td>
                                <td>9</td>
                                <td>영업부</td>
                                <td><a href="{pageContext.request.contextPath}/article_list" target="_blank">notice</a></td>
                                <td class=""><a href="{pageContext.request.contextPath}/article_list" target="_blank">연말 행사 및 축제 공고입니다.</a></td>
                                <td class="">김과장</td>
                                <td>모두</td>
                                <td>#fff</td>
                                <td class="">2021-01-14</td>
                            </tr>
                            <tr class="center">
                                <td><input type="checkbox" /></td>
                                <td>8</td>
                                <td>생산부</td>
                                <td><a href="{pageContext.request.contextPath}/article_list" target="_blank">normal</a></td>
                                <td class=""><a href="{pageContext.request.contextPath}/article_list" target="_blank">자유게시판입니다.</a></td>
                                <td class="">김과장</td>
                                <td>해당부서만</td>
                                <td>#ccc</td>
                                <td class="">2021-01-14</td>
                            </tr>
                            <tr class="center">
                                <td><input type="checkbox" /></td>
                                <td>7</td>
                                <td>영업부</td>
                                <td><a href="{pageContext.request.contextPath}/article_list" target="_blank">notice</a></td>
                                <td class=""><a href="{pageContext.request.contextPath}/article_list" target="_blank">연말 행사 및 축제 공고입니다.</a></td>
                                <td class="">김과장</td>
                                <td>모두</td>
                                <td>#fff</td>
                                <td class="">2021-01-14</td>
                            </tr>
                            <tr class="center">
                                <td><input type="checkbox" /></td>
                                <td>6</td>
                                <td>생산부</td>
                                <td><a href="{pageContext.request.contextPath}/article_list" target="_blank">normal</a></td>
                                <td class=""><a href="{pageContext.request.contextPath}/article_list" target="_blank">자유게시판입니다.</a></td>
                                <td class="">김과장</td>
                                <td>해당부서만</td>
                                <td>#ccc</td>
                                <td class="">2021-01-14</td>
                            </tr>
                            <tr class="center">
                                <td><input type="checkbox" /></td>
                                <td>5</td>
                                <td>영업부</td>
                                <td><a href="{pageContext.request.contextPath}/article_list" target="_blank">notice</a></td>
                                <td class=""><a href="{pageContext.request.contextPath}/article_list" target="_blank">연말 행사 및 축제 공고입니다.</a></td>
                                <td class="">김과장</td>
                                <td>모두</td>
                                <td>#fff</td>
                                <td class="">2021-01-14</td>
                            </tr>
                            <tr class="center">
                                <td><input type="checkbox" /></td>
                                <td>4</td>
                                <td>영업부</td>
                                <td><a href="{pageContext.request.contextPath}/article_list" target="_blank">notice</a></td>
                                <td class=""><a href="{pageContext.request.contextPath}/article_list" target="_blank">연말 행사 및 축제 공고입니다.</a></td>
                                <td class="">김과장</td>
                                <td>모두</td>
                                <td>#fff</td>
                                <td class="">2021-01-14</td>
                            </tr>
                            <tr class="center">
                                <td><input type="checkbox" /></td>
                                <td>3</td>
                                <td>생산부</td>
                                <td><a href="{pageContext.request.contextPath}/article_list" target="_blank">normal</a></td>
                                <td class=""><a href="{pageContext.request.contextPath}/article_list" target="_blank">자유게시판입니다.</a></td>
                                <td class="">김과장</td>
                                <td>해당부서만</td>
                                <td>#ccc</td>
                                <td class="">2021-01-14</td>
                            </tr>
                            <tr class="center">
                                <td><input type="checkbox" /></td>
                                <td>2</td>
                                <td>영업부</td>
                                <td><a href="{pageContext.request.contextPath}/article_list" target="_blank">notice</a></td>
                                <td class=""><a href="{pageContext.request.contextPath}/article_list" target="_blank">연말 행사 및 축제 공고입니다.</a></td>
                                <td class="">김과장</td>
                                <td>모두</td>
                                <td>#fff</td>
                                <td class="">2021-01-14</td>
                            </tr>
                            <tr class="center">
                                <td><input type="checkbox" /></td>
                                <td>1</td>
                                <td>생산부</td>
                                <td><a href="{pageContext.request.contextPath}/article_list" target="_blank">normal</a></td>
                                <td class=""><a href="{pageContext.request.contextPath}/article_list" target="_blank">자유게시판입니다.</a></td>
                                <td class="">김과장</td>
                                <td>해당부서만</td>
                                <td>#ccc</td>
                                <td class="">2021-01-14</td>
                            </tr>
                        </table>
                    </div>
                    <div class="search-box m-t5">
                        <div class="total-num">전체 게시판수 : 10개</div>
                        <div class="">
                            <form method="post" action="{pageContext.request.contextPath}/board">
                                <select class="w-150" name="searchOpt">
                                    <option value="">전체검색</option>
                                    <option value="">게시판 그룹</option>
                                    <option value="">게시판 코드</option>
                                    <option value="">게시판 제목</option>
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
	
	<script>
	$("#delete").click(function() {
	    var str = confirm("선택하신 게시글을 삭제하시겠습니까?");
	    
	    if( str ) {
	        var chkArr = new Array();
	        $(".chk:checked").each(function () {
	        	chkArr.push($(this).attr("data-uid"));
	        });
	        
	        $.ajax({
	        	url 	: "${pageContext.request.contextPath}/board/board_delete",
	        	type 	: "POST", 	
	        	data 	: { chkArr : chkArr },
	        	success	: function (resData) {
	        		alert("삭제되었습니다.");
		    		window.location.reload();
	            },
	            error 	: function() {
	            	alert("선택하신 게시글이 없습니다.");
	            }
	        });  
	  
	    }
	    
	});
	</script>
	<script src="${pageContext.request.contextPath}/js/chk.js"></script>
</html>
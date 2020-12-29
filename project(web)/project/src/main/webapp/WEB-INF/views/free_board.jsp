<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>LOGO</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/reset.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/header_menu.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/board.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://kit.fontawesome.com/3249ba5f1a.js" crossorigin="anonymous"></script>
</head>

<body>
    <div class="html">
        <div class="header">
            <span class="logo">
                <a href="${pageContext.request.contextPath}/admin">LOGO</a>
            </span>
            <div class="auth">
                <div class="user">
                    사용자 : ${sessionScope.userName}(${sessionScope.userID})
                </div>
                <div class="logout">
                    <a href="${pageContext.request.contextPath}/logout">로그아웃</a>
                </div>
            </div>
        </div>
        <div class="body">
            <div class="menu">
                <div class="menu-box">
                    <span class="big-menu">
                        공지사항 <i class="fas fa-chevron-down"></i>
                    </span>
                    <div class="small-menu">
                        <a href="${pageContext.request.contextPath}/notice">- 공지사항</a>
                    </div>
                </div>
                <div class="menu-box">
                    <span class="big-menu">
                        게시판 <i class="fas fa-chevron-down"></i>
                    </span>
                    <div class="small-menu">
                        <a href="${pageContext.request.contextPath}/free_board">- 자유게시판</a>
                    </div>
                </div>
            </div>
            <div class="main">
                <div class="page-wrap">
                    <div class="title">
                        <span class=""><i class="fas fa-cube"> 자유게시판</i></span>
                    </div>
                    <div class="board-list">
                        <table>
                            <tr>
                                <td class="td-5"><input type="checkbox" /></td>
                                <td class="td-5">번호</td>
                                <td>제목</td>
                                <td class="td-12">작성자</td>
                                <td class="td-12">등록일</td>
                                <td class="td-7">조회수</td>
                            </tr>
                            <tr>
                                <td><input type="checkbox" /></td>
                                <td>7</td>
                                <td><a href="#">연말 행사 및 축제 공고입니다.</a></td>
                                <td>관리자</td>
                                <td>2020-12-29</td>
                                <td>65</td>
                            </tr>
                            <tr>
                                <td><input type="checkbox" /></td>
                                <td>6</td>
                                <td><a href="#">자유게시판입니다.</a></td>
                                <td>관리자</td>
                                <td>2020-10-20</td>
                                <td>43</td>
                            </tr>
                            <tr>
                                <td><input type="checkbox" /></td>
                                <td>5</td>
                                <td><a href="#">알림사항입니다.</a></td>
                                <td>관리자</td>
                                <td>2020-11-05</td>
                                <td>18</td>
                            </tr>
                            <tr>
                                <td><input type="checkbox" /></td>
                                <td>4</td>
                                <td><a href="#">연말 행사 및 축제 공고입니다.</a></td>
                                <td>관리자</td>
                                <td>2020-12-29</td>
                                <td>65</td>
                            </tr>
                            <tr>
                                <td><input type="checkbox" /></td>
                                <td>3</td>
                                <td><a href="#">연말 행사 및 축제 공고입니다.</a></td>
                                <td>관리자</td>
                                <td>2020-10-20</td>
                                <td>43</td>
                            </tr>
                            <tr>
                                <td><input type="checkbox" /></td>
                                <td>2</td>
                                <td><a href="#">자유게시판입니다.</a></td>
                                <td>관리자</td>
                                <td>2020-11-05</td>
                                <td>18</td>
                            </tr>
                            <tr>
                                <td><input type="checkbox" /></td>
                                <td>1</td>
                                <td><a href="#">자유게시판입니다.</a></td>
                                <td>관리자</td>
                                <td>2020-12-29</td>
                                <td>65</td>
                            </tr>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>
</body>

<script>
    $(function () {
        $(".big-menu").click(function () {
            $(this).toggleClass("active").next().toggle();
        });
    });
</script>

</html>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<c:if test="${sessionScope.empConfirm == 'N'}">
<script>
	alert("승인된 사용자가 아닙니다.\n관리자에게 문의하세요.");
	window.location.replace("${pageContext.request.contextPath}");
	</script>
</c:if>

<c:if test="${sessionScope.empNum == null}">
<script>
	alert("등록된 사용자가 아닙니다.\n사원가입을 하세요.");
	window.location.replace("${pageContext.request.contextPath}");
	</script>
</c:if>

<!DOCTYPE html>
<html lang="ko">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>LOGO</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/reset.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/header_menu.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/common.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://kit.fontawesome.com/3249ba5f1a.js" crossorigin="anonymous"></script>
<script src="${pageContext.request.contextPath}/js/toggle.js"></script>
</head>
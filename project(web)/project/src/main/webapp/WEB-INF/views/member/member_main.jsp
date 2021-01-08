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
						<button class="td-5 btn-red" id="delete">선택삭제</button>
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
						<div class="total-num">전체 회원수 : ${count}명</div>
						<div class="">
							<form method="post" action="${pageContext.request.contextPath}/member">
								<select class="" name="searchOpt">
									<option value="member_name">이름</option>
									<option value="member_id">아이디</option>
									<option value="all">전체검색</option>
								</select>
								<input value="${words}" type="text" class="" name="words" required autocomplete="off" />
								<button type="submit" class="btn-gray" style="width: 70px;">검색</button>
							</form>
						</div>
					</div>
					<div class="paging m-t50 center">
						<span class="page"><a href=""><i class="fas fa-angle-double-left"></i></a></span>
						<span class="page"><a href=""><i class="fas fa-angle-left"></i></a></span>
						<span class="page page-active"> <a href="" class="f6">1</a></span>
						<span class="page"><a href="">2</a></span>
						<span class="page"><a href="">3</a></span>
						<span class="page"><a href="">4</a></span>
						<span class="page"><a href="">5</a></span>
						<span class="page"><a href=""><i class="fas fa-angle-right"></i></a></span>
						<span class="page"><a href=""><i class="fas fa-angle-double-right"></i></a></span>
					</div>
				</div>
			</div>
		</div>
	</div>
	<%@ include file="/WEB-INF/views/include/FOOTER.jsp"%>
	
	<script>
	$("#delete").click(function() {
	    var str = confirm("선택하신 회원을 삭제하시겠습니까?");
	    
	    if( str ) {
	        var chkArr = new Array();
	        $(".chk:checked").each(function () {
	        	chkArr.push($(this).attr("data-uid"));
	        });
	        
	        //alert(chkArr);

	        $.ajax({
	        	url 	: "${pageContext.request.contextPath}/member/member_delete",
	        	type 	: "POST", 	
	        	data 	: { chkArr : chkArr },
	        	success	: function (resData) {
	        		alert("삭제되었습니다.");
		    		window.location.reload();
	            },
	            error 	: function() {
	            	alert("선택하신 회원번호가 없습니다.");
	            }
	        });  
	  
	    }
	    
	});
	</script>
	
	<script>
		var flag = false; 
		function chkAll() {
		
			var chk = document.getElementsByName("chk");
			
			if( flag == false) {
				flag = true;
		
				for(var i = 0; i < chk.length; i++) {
					chk[i].checked = true;
				}
			}else{
				flag = false;
				for(var i = 0; i < chk.length; i++) {
					chk[i].checked = false;
				}
			}	
		}
	</script>

</html>
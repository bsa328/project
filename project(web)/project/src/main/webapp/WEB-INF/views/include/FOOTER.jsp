<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<footer class="center" style="height: 200px; line-height: 200px; color: #aaa; font-size: 15px;">
	<span class="copy">&copy;Copyright All Rights reserved.</span>
</footer>
</body>

<script>
	$(function() {
		$("#logout").click(function() {
			$.ajax({
				url		: "${pageContext.request.contextPath}/logout",
				type	: "POST",
				data	: "",
				success	: function(data) {
					if(data == "success") {
						alert("로그아웃 되었습니다.");		
						window.location.href = '${pageContext.request.contextPath}';
					}
				},
				error	: function() {
					alert("시스템 에러");
				}
			});
		});
	});
</script>
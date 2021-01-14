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
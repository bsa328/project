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
	var drop = document.getElementById("imgInp");

  
	$(function() {
		
	  drop.ondragover = function(e) {
		  	e.preventDefault(); // 이 부분이 없으면 ondrop 이벤트가 발생하지 않습니다.
	  	};
	  	drop.ondrop = function(e) {
	  		
		  	e.preventDefault(); // 이 부분이 없으면 파일을 브라우저 실행해버립니다.
		  	
			var data 			= e.dataTransfer;
			
			if (!data.items) {
				alert("파일이 없습니다");
				return;
			}
			
			for (var i=0,loop=data.items.length; i<loop; i++) { // DataTransferItem 객체 사용
				var div				= document.createElement("div"),
					img				= document.createElement("img"),
					file			= data.files[i],
					fileType		= data.items[i].kind;
					fileCheck		= /\.(gif|jpg|jpeg|png)$/i.test(data.files[i].name);
					
				if (!fileCheck) { // 아이템 종류가 파일이면
					alert("올바른 확장자가 아닙니다. *표준 확장자: gif|jpg|jpeg|png*");
					return;
				}
				
				var reader = new FileReader();
				
				reader.readAsDataURL(file);
				
				reader.onload = function(e) {
					
					img.setAttribute("src",e.target.result);
					img.setAttribute("class","col-12");
					div.setAttribute("class","col-12 previews_"+i);
					div.appendChild(img);
					
					$(".preview").append(div);
					
					var form = $("#uploadFrm");
					var formData = new FormData(form);
					
				}
			}
			$("#imgInp").prop("files",data.files);
			
		  };
	})
  
  
  	
      

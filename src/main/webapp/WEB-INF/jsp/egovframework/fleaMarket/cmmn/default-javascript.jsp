<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!-- Contact form JavaScript -->
<script src="js/jqBootstrapValidation.js"></script>
<script src="js/contact_me.js"></script>

<!-- Custom scripts for this template -->
<script src="js/agency.min.js"></script>

<script type="text/javascript">
	var pageMove = {
			moveFn : function(pageName) {
				
				$("#pageId").val(pageName);
				$("#pageMoveFrm").attr("action",pageName + ".do");
				$("#pageMoveFrm").submit();
				
			}
	}
		
		
	
	
	$(function() {
		$(".nav-item").on("click",function() {
			var pageName = $(this).children().attr("id");
			
			pageMove.moveFn(pageName);
		})
	})

</script>
<form id="pageMoveFrm">
	<input id="pageId" name="pageName">
</form>


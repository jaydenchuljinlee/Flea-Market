<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!-- Javascript files -->

<!-- 추가한 left.js -->
<script src="admin/js/left.js"></script>

<!-- Bootstrap JS -->
<script src="admin/js/bootstrap.min.js"></script>
<!-- jQuery UI -->
<script src="admin/js/jquery-ui.min.js"></script> 
<!-- left custom -->
<script src="admin/js/custom.js"></script>

<!-- Bootstrap -->
<!-- <script src="myStore/vendors/bootstrap/dist/js/bootstrap.min.js"></script> -->
<!-- iCheck -->
<!-- <script src="myStore/vendors/iCheck/icheck.min.js"></script> -->
<!-- Custom Theme Scripts -->
<!-- <script src="myStore/build/js/custom.min.js"></script> -->

<script>
	
		$(function() {
			var pageName = "<c:out value="${param.pageHeadName}"/>"; // var pageName에는 클릭한 페이지명이 들어간다
			var $pageName = $("#" + pageName); // 클릭한 태그를 jQuery 변수인 $pageName에 넣는다.
			var $has_submenu = $($pageName).closest(".has_submenu"); // 클릭한 태그가 서브 메뉴 유무 확인을 위한 $has_submenu 변수
			
			$(".pageMove").removeClass("current"); // 단일 메뉴 highlight 제거
			$(".pageMove").removeClass("active"); // 서브 메뉴 highlight 제거
			
			if($has_submenu.length === 1) { //서브 메뉴를 가지고 있을 경우
				$has_submenu.addClass("open");
				$pageName.addClass("active");
			} else { //서브 메뉴를 가지고 있지 않을 경우
				$pageName.addClass("current"); 
			}
			
			$(".pageMove").click(function() { // .menu 클래스를 가진 태그들의 이벤트리스너
				
				var menu = $(this).attr("id"); // 내가 클릭한 태그의 속성중의 id의 값을 빼와서 var menu에 넣는다는 것.
				
				left.pageSubmitFn(menu);
			})
		})

</script>  
<form id="pageFrm">
	<input type="hidden" id="pageName" name="pageName">
</form>

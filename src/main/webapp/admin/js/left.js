/**
 * 
 */
var left = { // 전역변수
	
	pageSubmitFn : function(menu) {
		console.log(menu);
		$("#pageFrm").attr("action", menu+".do"); // form(#headerFrm)에 action이라는 속성에  클릭한 태그 아이디.do라는 value를 넣는다.
		$("#pageName").val(menu); //$("#pageHeadName")의 value를 클릭한 태그 아이디로 넣는다.
		
		$("#pageFrm").submit(); // form(#headerFrm)을 submit 한다.
	}
}

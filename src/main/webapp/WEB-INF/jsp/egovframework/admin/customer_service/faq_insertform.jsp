<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<script type="text/javascript">
$(function() {
	
	//취소 버튼
	$("#cancelBtn").click(function() {
		location.href = "adminFaq.do";
	});
	
	$("#insert").click(function() { /* 인력 */
		
		if($("#faqContentQ").val().trim() === "") {
			 alert("질문을 입력해 주세요");
		} else if ($("#faqContentA").val().trim() === "") {
			alert("답변을 입력해 주세요");
		}
		faqDetailFn.saveData("insert"); 
	}); 
});

var faqDetailFn = {
		
		saveData : function (gubun) {
			
			var jsonFAQ 	= {};
		
			jsonFAQ.faqCategoryCd 	= $("#faqCategoryCd").val();
		 	jsonFAQ.faqContentQ		= $("#faqContentQ").val();
			jsonFAQ.faqContentA		= $("#faqContentA").val();
			jsonFAQ.gubun			= gubun;
			console.log(jsonFAQ);
			this.save(jsonFAQ);
		},
		save : function(jsonFAQ) {
			$.ajax({
				type 		: "post",
				url 		: "saveFAQ.do",
				dataType 	: "json",
				data 		: {"jsonFAQ" : JSON.stringify(jsonFAQ)},  // 쿼리 스트링 형식으로 된다
				async 		: false,
				success 	: function (result) {
					if(result.result) {
						alert(JSON.stringify(jsonFAQ.gubun) + "완료!");
						location.href="adminFaq.do";
					}
				}
			});
		}
}
</script>

<h4 class="pull-left">FAQ</h4>
<div class="clearfix"></div>
<hr />

<div class="row">
	<div class="col-md-12">
		<div class="widget wgreen">
			<div class="widget-head">
				<div class="pull-left">FAQ 추가</div>
				<div class="clearfix"></div>
			</div>
			<div class="widget-content">
				<div class="padd">
					<!-- Form starts.  -->
					<form action="#" class="form-horizontal" role="form">
						<div class="form-group">
							<label class="col-md-2 control-label">분류</label>
							<div class="col-md-8">
								<select id="faqCategoryCd" class="form-control">
									<c:forEach items="${faqCategoryList}" var="faqCategoryList">
										<option value="<c:out value="${faqCategoryList.faqCategoryCd}"/>">
												<c:out value="${faqCategoryList.faqCategoryTitle}"/>
										</option>
									</c:forEach>
								</select>
							</div>
						</div>
						<div class="form-group">
							<label class="col-md-2 control-label">질문</label>
							<div class="col-md-8">
								<input type="text" id="faqContentQ" class="form-control" placeholder="질문">
							</div>
						</div>
						<div class="form-group">
							<label class="col-md-2 control-label">답변</label>
							<div class="col-md-8">
								<textarea id="faqContentA" class="form-control" rows="10" placeholder="답변"></textarea>
							</div>
						</div>
						<div class="form-group">
							<div class="col-md-offset-2 col-md-8">
								<button type="button" id="insert" 	 class="btn btn-success">등록</button>
								<button type="button" id="cancelBtn" class="btn btn-default">취소</button>
							</div>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>
</div>


</script>
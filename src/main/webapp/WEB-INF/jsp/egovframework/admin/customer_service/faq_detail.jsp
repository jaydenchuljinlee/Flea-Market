<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<script type="text/javascript">
$(function() {

	$("#update").click(function() { /* 수정 */
		faqDetailFn.saveData("update"); 
	}); 
	
	$("#delete").click(function () { /* 삭제 */
		faqDetailFn.saveData("delete"); 
	});
	$("#cancel").click(function(){
		location.href="adminFaq.do";
	});
});

var faqDetailFn = {
		
		saveData : function (gubun) {
			
			var jsonFAQ 	= {};
		
			jsonFAQ.faqCategoryCd 	= $("#faqCategoryCd").val();
			jsonFAQ.faqContentQ		= $("#faqContentQ").val();
			jsonFAQ.faqContentA		= $("#faqContentA").val();
			jsonFAQ.faqNo			= "<c:out value="${faqDetailList[0].faqContentNo}"/>"
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
<hr/>

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
										<option 
											<c:if test = "${faqCategoryList.faqCategoryCd  eq faqDetailList[0].faqCategoryCd}"> 
													selected ='selected'</c:if> value="<c:out value="${faqCategoryList.faqCategoryCd}"/>">
											<c:out value="${faqCategoryList.faqCategoryTitle}"/>
										</option>
									</c:forEach>
								</select>
							</div>
						</div>
						<div class="form-group">
							<label class="col-md-2 control-label">질문</label>
							<div class="col-md-8">
							<!-- 줄바꿈하면 탭도 db에 들어감 , 줄바꿈 금지-->
								<input type="text" id="faqContentQ" class="form-control" value="<c:out value="${resMap.faqContentQ}"/>">
							<!-- 줄바꿈하면 탭도 db에 들어감 , 줄바꿈 금지-->
							</div>
						</div>
						<div class="form-group">
							<label class="col-md-2 control-label">답변</label>
							<div class="col-md-8">
							<!-- 줄바꿈하면 탭도 db에 들어감 , 줄바꿈 금지-->
								<textarea id="faqContentA" class="form-control" rows="10" placeholder="답변"><c:out value="${resMap.faqContentA}" escapeXml="false"/></textarea>
							<!-- 줄바꿈하면 탭도 db에 들어감 , 줄바꿈 금지-->
							</div>
						</div>
						<div class="form-group">
							<div class="col-md-offset-2 col-md-8">
								<button type="button" class="btn btn-success"	id="update">수정</button>
								<button type="button" class="btn btn-danger" 	id="delete">삭제</button>
								<button type="button" class="btn btn-warning" 	id="cancel">취소</button>
							</div>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>
</div>
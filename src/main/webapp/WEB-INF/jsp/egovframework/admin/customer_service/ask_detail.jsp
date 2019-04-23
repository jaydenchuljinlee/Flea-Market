<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core" %>
<h4 class="pull-left">1:1 문의</h4>
<div class="clearfix"></div>
<hr />
<div class="row">
	<div class="col-md-12">
		<div class="widget wgreen">
			<div class="widget-head">
				<div class="pull-left">문의 내용</div>
				<div class="clearfix"></div>
			</div>
			<div class="widget-content">
				<div class="padd">
					<!-- Form starts.  -->
					<form method="post" id="Fam" name="Fam" class="form-horizontal" role="form">
						<div class="form-goup">
							<label class="col-md-2 control-label">분류</label>
							<div class="col-md-8">
								<input type="text" id="type" class="form-control" value="${vo.q_type}" required="required" readonly>
							</div>
						</div>
						<div class="form-group">
							<label class="col-md-2 control-label">제목</label>
							<div class="col-md-8">
								<input type="text" id="title" class="form-control" value="${vo.q_title}" required="required" readonly>
							</div>
						</div>
						<div class="form-group">
							<label class="col-md-2 control-label">내용</label>
							<div class="col-md-8">
								<textarea class="form-control" rows="10" readonly="readonly">${vo.q_content}</textarea>
							</div>
						</div>
						<div class="form-group">
							<label class="col-md-2 control-label">답변</label>
							<div class="col-md-8">
								<textarea id="q_answer_content" name ="q_answer_content"  class="form-control" rows="10">${vo.q_answer_content}</textarea>
							
							</div>
						</div>
						<div class="form-group">
							<div class="col-md-offset-2 col-md-8">
							    <input type="hidden"  id="question_NO" name="question_NO" value="${vo.question_NO}">
								<button type="button" id="askDetailButton"  name="askDetailButton"class="btn btn-success askDetailButton">등록</button>
								<button type="button" class="btn btn-danger">취소</button>
							</div>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>
</div>

<script type="text/javascript" src="ckeditor/ckeditor.js"></script>
<script type="text/javascript">
// CKEDITOR.config.language = 'ko';
// CKEDITOR.replace('answer');

$("#askDetailButton").click(function() {
  
	$("#Fam").attr("action","adminAskReturn.do");
	  alert("답변이 완료되었습니다.");
	$("#Fam").submit();
});
 </script> 
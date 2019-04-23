<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<h4 class="pull-left">이벤트</h4>
<div class="clearfix"></div>
<hr />

<div class="row">
	<div class="col-md-12">
		<div class="widget wgreen">
			<div class="widget-head">
				<div class="pull-left">이벤트 추가</div>
				<div class="clearfix"></div>
			</div>
			<div class="widget-content">
				<div class="padd">
					<!-- Form starts.  -->
					<form action="#" method="post" class="form-horizontal eventFrm" role="form" enctype="multipart/form-data">
						<div class="form-group">
							<label class="col-md-2 control-label">적용 대상</label>
							<div class="col-md-8">
								<select id="target" name="target" class="form-control">
									<option>모든 책</option>
									<option>책 분류</option>
									<option>특정 책</option>
									<option>금액</option>
									<option>회원등급</option>
								</select>
							</div>
						</div>
						<div class="form-group">
							<label class="col-md-2 control-label">시작일</label>
							<div class="col-md-8">
								<input name="startDay" type="text" class="form-control datepicker" readonly="readonly">
							</div>
						</div>
						<div class="form-group">
							<label class="col-md-2 control-label">종료일</label>
							<div class="col-md-8">
								<input name="endDay" type="text" class="form-control datepicker" readonly="readonly">
							</div>
						</div>
						<div class="form-group">
							<label class="col-md-2 control-label">제목</label>
							<div class="col-md-8">
								<input name="eveTitle" type="text" class="form-control" placeholder="제목">
							</div>
						</div>
						<div class="form-group">
							<label class="col-md-2 control-label">설명</label>
							<div class="col-md-8">
								<input name="eveContent" type="text" class="form-control" placeholder="설명">
							</div>
						</div>
						<div class="form-group">
							<label class="col-md-2 control-label">이벤트 이미지 </label>
							<div class="col-md-8">
								<input id="thumbnail" type="file" name="thumbnail">
								<img id="eventThumbnail" style="height: 500px; width: 100%">
							</div>
						</div>
						<div class="form-group">
							<div class="col-md-offset-2 col-md-8">
								<button id="faqInsertBtn" class="btn btn-success eventBtn">등록</button>
								<button type="button" id="cancelBtn" class="btn btn-default">취소</button>
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
$(function() {
	//ckEditor
	//책 분류
	var bookCategory = ["프로그래밍 언어", "데이터베이스", "알고리즘", "수험서"];
	var clientGrade = ["골드", "실버", "브론즈"];
	
	$(".datepicker").datepicker({
		
		dateFormat: 'yy.mm.dd',
	    prevText: '이전 달',
	    nextText: '다음 달',
	    monthNames: ['1월','2월','3월','4월','5월','6월','7월','8월','9월','10월','11월','12월'],
	    monthNamesShort: ['1월','2월','3월','4월','5월','6월','7월','8월','9월','10월','11월','12월'],
	    dayNames: ['일','월','화','수','목','금','토'],
	    dayNamesShort: ['일','월','화','수','목','금','토'],
	    dayNamesMin: ['일','월','화','수','목','금','토'],
	    showMonthAfterYear: true,
	    changeMonth: true,
	    changeYear: true,
	    yearSuffix: '년'

	});
	
	
	//적용 대상
	$("#target").change(function() {
		$("#targetDetail").empty();
		var target = $("#target").val();
		
		if (target === "책 분류") {
			$("#targetDetail").append('<select id="targetDetailSel" class="form-control" name="targetDetail"></select>');
			
			for (var i in bookCategory) {
				$("#targetDetailSel").append("<option>" + bookCategory[i] + "</option>");
			}
			
		} else if (target === "특정 책") {
			$("#targetDetail").append('<input type="text" class="form-control" name="targetDetail" placeholder="ISBN 입력">');
		} else if (target === "금액") {
			$("#targetDetail").append('<input type="text" class="form-control" name="targetDetail" placeholder="~원 이상">');			
		} else if (target === "회원등급") {
			$("#targetDetail").append('<select id="targetDetailSel" class="form-control" name="targetDetail"></select>');
			
			for (var i in clientGrade) {
				$("#targetDetailSel").append("<option>" + clientGrade[i] + "</option>");
			}
		}
	});
	
	/* //date 유효성 검사
	$("#startDate").change(function() {
		var startDate = $("#startDate").val();
		var endDate = $("#endDate").val();
		
		if (startDate !== "" && endDate !== "") {
			
			if (startDate > endDate) {
				alert("시작일은 종료일과 같거나 이전이어야합니다.");
				$("#startDate").val("");
			}
			
		}
		
	});
	
	$("#endDate").change(function() {
		var startDate = $("#startDate").val();
		var endDate = $("#endDate").val();
		
		if (startDate !== "" && endDate !== "") {
			
			if (startDate > endDate) {
				alert("종료일 시작일과 같거나 이후이어야합니다.");
				$("#endDate").val("");
			}
		}
	}); */
	
	$(".eventBtn").click(function() {
		$(".eventFrm").attr("action","adminEventInsert.do").submit();
	})
	
	
	$("#thumbnail").change(handleImgFileSelect);
	
	function handleImgFileSelect(e) {
		var files = e.target.files;
		var filesArr = Array.prototype.slice.call(files);
		
		filesArr.forEach(function(selFile) {
			
			if (!selFile.type.match("image.*")) {
				alert("이미지 파일을 올려주세요!");
				return;
			}
			
			var reader = new FileReader();
			
			reader.onload = function(e) {
				$("#eventThumbnail").attr("src", e.target.result);
			}
			
			reader.readAsDataURL(selFile);
		})
	}
	
});
</script>
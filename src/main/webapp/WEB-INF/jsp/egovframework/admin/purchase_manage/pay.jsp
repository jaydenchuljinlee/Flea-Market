<%@ page language="java" pageEncoding="utf-8" contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>  
<h4 class="pull-left">결제 내역</h4>
<div class="clearfix"></div>
<hr/>
<div class="row">
	<div class="col-md-12">
		<div class="widget wred">
			<div class="widget-head">
			  <div class="pull-left">결제 목록</div>
			  <div class="clearfix"></div>
			</div>
			<div class="widget-content">
				<div class="table-responsive">
					<table class="table table-bordered payment">
						<thead>
							<tr>
								<th>#</th>
							  	<th>결제 번호</th>
							  	<th>ID</th>
							  	<th>이름</th>
							  	<th>결제 내역</th>
							  	<th>결제 금액</th>
							  	<th>결제 방법</th>
							  	<th>결제일</th>
							  	<th>
							  		<select class="pay_state">
							  			<option value="">전체</option>
								  		<option value="0">입금 대기</option>
								  		<option value="1">결제 완료</option>
								  		<option value="2">결제 취소</option>
									</select>
								</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach items="${payList}" var="payList" varStatus="status">
								<tr>
									<td><c:out value="${status.count}"/></td>
								  	<td><c:out value="${payList.pNo}"/></td>
								  	<td><c:out value="${payList.id}"/></td>
								  	<td><c:out value="${payList.pName}"/></td>
								  	<td id="name_<c:out value="${status.index}"/>"><c:out value="${payList.isbn}"/></td>
								  	<td><c:out value="${payList.price}"/>원</td>
								  	<td><c:out value="${payList.pMethod}"/></td>
								  	<td><c:out value="${payList.pDate}"/></td>
								  	<td><span class="label label-success"><c:out value="${payList.state}"/></span></td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
				</div>
			</div>
			<div class="widget-foot">
				<div class="pull-left">
					<form>
						<input type="text" name="keyword" placeholder="검색어를 입력해주세요">
						<button>검색</button>
					</form>
				</div>
				<ul class="pagination pull-right">
					<li><a href="#">Prev</a></li>
					<li><a href="#">1</a></li>
					<li><a href="#">2</a></li>
					<li><a href="#">3</a></li>
					<li><a href="#">4</a></li>
					<li><a href="#">Next</a></li>
				</ul>
				<div class="clearfix"></div> 
			</div>
		</div>
	</div>
</div>

<script type="text/javascript">
$(function() {
	
	payment.init();
	
	$(".pay_state").change(function() {
		
		$(".payment tbody").children().remove();
		
		var select = {
				
				displayPaymentState : function(list) {
					
					if (list.length > 0) {
						
						
						
						$.each(list, function(i,item){
							
							//alert($(".payment tbody").html());
							
							var optionStr = "<tr>"+
												"<td>"+(i+1)+"</td>"+
											  	"<td>"+item.pNo+"</td>"+
											  	"<td>"+item.id+"</td>"+
											  	"<td>"+item.pName+"</td>"+
											  	"<td id=name_"+(i+1)+">"+item.isbn+"</td>"+
											  	"<td>"+item.price+"원</td>"+
											  	"<td>"+item.pMethod+"</td>"+
											  	"<td>"+item.pDate+"</td>"+
											  	"<td><span class='label label-success'>"+item.state+"</span></td>"+
											"</tr>";
											
							//alert(optionStr);
											
							$(".payment tbody").append(optionStr);
							
							payment.init();
						})						
					} else {
						
						 //$("#childSelectBox").append("<option value=''>없음</option>");
						
					}
				}
		}
		
		
		var str		= $(this).val();
		
		var form	= {"param" : str};
		
		$.ajax({
			
			url			: "adminPayState.do",
	        type		: "post",
	        data 		: JSON.stringify(form), // Stirng, object, array 스트링이 아니면, 쿼리스트링(키 or 값)으로 바꿔줌
	        contentType : "application/json",
	        success		: function(data){
				
	        	
	        	var jobj 	= JSON.parse(data);
	        	var changeBox	= "";
	        	
				 if (jobj.result == "SUCCESS") {
					select.displayPaymentState(jobj.list);
				} 
	        }
		})
		
	});
	
	$(".payDetail").click(function() {
		var payCode = $(this).attr("id");
		location.href = "adminPayDetail.do?payCode=" + payCode;
	});
});

var payment = {init : function() {
	
	var table = $(".payment tbody");
	
	for(var i =0; i<table.children("tr").length; i++) {
		
		var arr1 = table.children("tr:eq("+i+")").children("td:eq(4)").text().trim().split(",");
		var arr2 = table.children("tr:eq("+i+")").children("td:eq(6)").text().trim();
		var arr3 = table.children("tr:eq("+i+")").children("td:eq(8)").text().trim();
		
		if (arr1.length === 1) {
		} else {
			var str = arr1[0]+"외 "+(arr1.length-1)+"권";
			table.children("tr:eq("+i+")").children("td:eq(4)").text(str);
			
		}
		
		if (arr2 === "card") {
			table.children("tr:eq("+i+")").children("td:eq(6)").text("카드");
		} else if (arr2 === "vbank") {
			return;
		} else if (arr2 === "mobile") {
			return;
		}
		
		if (arr3 === "0") {
			table.children("tr:eq("+i+")").children("td:eq(8)").text("<span class='label label-info'>결제대기</span>");
		} else if (arr3 === "1") {
			table.children("tr:eq("+i+")").children("td:eq(8)").html("<span class='label label-success'>결제완료</span>");
		} else if (arr3 === "2") {
			table.children("tr:eq("+i+")").children("td:eq(8)").text("<span class='label label-important'>결제취소</span>");
		}
			
	}
}
}
</script>
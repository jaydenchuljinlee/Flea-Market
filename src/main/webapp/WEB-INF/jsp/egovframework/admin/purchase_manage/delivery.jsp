<%@ page language="java" pageEncoding="utf-8" contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>  
<h4 class="pull-left">배송 관리</h4>
<div class="clearfix"></div>
<hr/>
<div class="row">
	<div class="col-md-12">
		<div class="widget wred">
			<div class="widget-head">
			  <div class="pull-left">회원</div>
			  <div class="clearfix"></div>
			</div>
			<div class="widget-content">
				<div class="table-responsive">
					<table class="table table-bordered deliveryList">
						<thead>
							<tr>
								<th>#</th>
								<th>주문 번호</th>
								<th>아이디</th>
								<th>이름</th>
								<th>배송 내역</th>
								<th>택배사</th>
								<th>송장번호</th>
								<th>
								 	<select class="delivery_state">
								 		<option>전체</option>
								 		<option value="0">출고 대기</option>
								 		<option value="1">배송 중</option>
								 		<option value="2">배송 완료</option>
								</select>	
								</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach items="${deliveryList}" var="deliveryList" varStatus="status">
								<tr>
									<td><c:out value="${status.count}"/></td>
								  	<td><c:out value="${deliveryList.pNo}"/></td>
								  	<td><c:out value="${deliveryList.id}"/></td>
								  	<td><c:out value="${deliveryList.pName}"/></td>
								  	<td id="name_<c:out value="${status.index}"/>"><c:out value="${deliveryList.isbn}"/></td>
								  	<td>대한통운</td>
									<td>111122223333</td>
								  	<td><span class="label label-success"><c:out value="${deliveryList.delivery}"/></span></td>
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
	
	delivery.init();
	
	$(".delivery_state").change(function() {
		
		$(".deliveryList tbody").children().remove();
		
		var select = {
				
				displayDeliveryState : function(list) {
					
					if (list.length > 0) {
						
						
						
						$.each(list, function(i,item){
							
							//alert($(".payment tbody").html());
							
							var optionStr = "<tr>"+
												"<td>"+(i+1)+"</td>"+
											  	"<td>"+item.pNo+"</td>"+
											  	"<td>"+item.id+"</td>"+
											  	"<td>"+item.pName+"</td>"+
											  	"<td id=name_"+(i+1)+">"+item.isbn+"</td>"+
											  	"<td>대한통운</td>"+
											  	"<td>111122223333</td>"+
											  	"<td><span class='label label-success'>"+item.delivery+"</span></td>"+
											"</tr>";
											
							//alert(optionStr);
											
							$(".deliveryList tbody").append(optionStr);
							
							delivery.init();
						})						
					} else {
						
						 //$("#childSelectBox").append("<option value=''>없음</option>");
						
					}
				}
		}
		
		
		var str		= $(this).val();
		
		var form	= {"param" : str};
		
		$.ajax({
			
			url			: "adminDeliveryState.do",
	        type		: "post",
	        data 		: JSON.stringify(form), // Stirng, object, array 스트링이 아니면, 쿼리스트링(키 or 값)으로 바꿔줌
	        contentType : "application/json",
	        success		: function(data){
				
	        	
	        	var jobj 	= JSON.parse(data);
	        	var changeBox	= "";
	        	
				 if (jobj.result == "SUCCESS") {
					select.displayDeliveryState(jobj.list);
				} 
	        }
		})
		
	});
	
	$(".payDetail").click(function() {
		var payCode = $(this).attr("id");
		location.href = "adminPayDetail.do?payCode=" + payCode;
	});
});

var delivery = {init : function() {
	
	var table = $(".deliveryList tbody");
	
	for(var i =0; i<table.children("tr").length; i++) {
		
		var arr1 = table.children("tr:eq("+i+")").children("td:eq(4)").text().trim().split(",");
		var arr2 = table.children("tr:eq("+i+")").children("td:eq(7)").text().trim();
		
		if (arr1.length === 1) {
		} else {
			var str = arr1[0]+"외 "+(arr1.length-1)+"권";
			table.children("tr:eq("+i+")").children("td:eq(4)").text(str);
			
		}
		
		if (arr2 === "0") {
			table.children("tr:eq("+i+")").children("td:eq(7)").html("<span class='label label-warning'>출고 대기</span>");
		} else if (arr2 === "1") {
			table.children("tr:eq("+i+")").children("td:eq(7)").html("<span class='label label-info'>배송중</span>");
		} else if (arr2 === "2") {
			table.children("tr:eq("+i+")").children("td:eq(7)").html("<span class='label label-success'>배송완료</span>");
		}
	}
}
}
</script>
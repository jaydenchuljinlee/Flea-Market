<%@ page language="java" contentType="text/html; charset=UTF-8"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="ui" uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
  <link rel="stylesheet" type="text/css" href="/ITBook/css/book/book.css">
<script type="text/javascript">
 function fnGoPaging(page) {
	  var $pagingFrm = $("#pagingFrm");
		$("#page").val(page);

		$pagingFrm.attr("action", "adminBookManage.do");
		$pagingFrm.attr("method", "post");
		$pagingFrm.submit();
  }
</script>
  <form id="pagingFrm" name="pagingFrm">
		<input type = "hidden" id="page" name="page"/>
	</form>
<h4 class="pull-left">도서 관리</h4>
<div class="clearfix"></div>
<hr />
<div class="row">
	<div class="col-md-12">
		<div class="widget wred">
			<div class="widget-head">
				<div class="pull-left">도서 목록</div>
				<div class="clearfix"></div>
			</div>
			<div class="widget-content medias">
				<div class="table-responsive">
					<form id="bookManageFrm" method="post">
						<input type="hidden" name="checkNum" id="checkNum1">
						<table class="table table-bordered ">
							<col width="50">
							<col width="250">
							<col width="50">
							<col width="50">
							<col width="50">
							<col width="50">
							<col width="50">
							<col width="50">
							<col width="60">
							<thead>
								<tr>
									<th>표지</th>
									<th>제목</th>
									<th>ISBN</th>
									<th>저자</th>
									<th>출판사</th>
									<th>출판일</th>
									<th>가격</th>
									<th>재고</th>
									<th>전체선택 <input type="checkbox" id="checkAll"></th>
								</tr>
							</thead>
							<c:forEach items="${pagingNewBookList}" var="pagingNewBookList" varStatus="status">
							<tbody>
								<tr>												
									<td><img src="${pagingNewBookList.bImage }"></td>
									<td id="${pagingNewBookList.isbn}" class="bookDetail"><a href="#">${pagingNewBookList.bTheme}</a></td>
									<td>${pagingNewBookList.isbn}</td>
									<td>${pagingNewBookList.bAuthor}</td>
									<td>${pagingNewBookList.publish}</td>
									<td>${pagingNewBookList.publishDate}</td>
									<td><fmt:formatNumber pattern="###,###" value="${pagingNewBookList.price}"/></td>
									<td>${pagingNewBookList.quantity}</td>
									<td><input type="checkbox" name="checkNum" value="<c:out value="${pagingNewBookList.isbn}"/>"></td>
								</tr>
							</tbody>
							</c:forEach>
						</table>
					</form>
				</div>
			</div>
			<div class="widget-foot">
				<div class="pull-left">
					<form action="#">
						<input type="text" name="keyword" placeholder="검색어를 입력해주세요">
						<button>검색</button>
						<button type="button" id="bookRegisterBtn" class="btn btn-success">도서 등록</button>
						<button type="button" id="bookDelete" class="btn btn-danger">선택삭제</button>
					</form>
				</div>
				<ul class="pagination pull-right">
				<c:if test="${resMap.pageGroup > 1}">
					<li> 
						<a href="javascript:fnGoPaging(<c:out value='${resMap.firstPage}'/>)">◀</a>
						<a href="javascript:fnGoPaging(<c:out value='${resMap.prePage}'/>)">«</a></li>
				</c:if>
					<c:forEach var="i" begin="${resMap.startPage}"
							end="${resMap.endPage > resMap.totalPage ? resMap.totalPage : resMap.endPage}">
						<c:choose>
							<c:when test="${resMap.page eq i}">
								<li class="tg-active active">
									<a href="javascript:fnGoPaging(${i});">${i}</a>
								</li>
							</c:when>
							<c:otherwise>
								<li>
									<a href="javascript:fnGoPaging(${i});">${i}</a>
								</li>
							</c:otherwise>
						</c:choose>
					</c:forEach>
					
					<c:if test="${resMap.nextPage <= resMap.totalPage}"> 
					<li> 
						<a href="javascript:fnGoPaging(<c:out value='${resMap.nextPage}'/>)">»</a>
					</li>
					</c:if>
					<c:if test="${resMap.pageGroup < resMap.totalPage/resMap.pageScale}">
						<li>
							<a href="javascript:fnGoPaging(<c:out value='${resMap.totalPage}'/>)">▶</a>
						</li>
					</c:if>
				</ul>
				<div class="clearfix"></div>
			</div>
		</div>
	</div>
</div>

<script type="text/javascript">
$(function() {
	$("#bookRegisterBtn").click(function() {
		location.href = "adminBookRegister.do";
	});
	
	$(".bookDetail").click(function() {
		var isbn = $(this).attr("id");
		location.href = "adminBookDetail.do?isbn=" + isbn;
	
	});
	/* 전체선택 */
	$("#checkAll").click(function() {
		
		var chkNum = document.getElementsByName("checkNum");

		if($("#checkAll").is(":checked")) {
			for(var i = 0; i < chkNum.length ; i++) {
				chkNum[i].checked = true;
			}
		} else {
			for(var i = 0; i < chkNum.length ; i++) {
				chkNum[i].checked = false;
			}
		}
	});
	/* 삭제 클릭*/
	$("#bookDelete").click(function() {
		
		var chkNum = document.getElementsByName("checkNum");
		var chk = false;//선택된 값이 있으면 true 없으면 false
		var jsonArray = [];
		var chkNumVal = {};
		
		for(var i = 0 ; i < chkNum.length ; i++) {
			
			if(chkNum[i].checked === true) {
				chk = true;
			}
		}
		if(!chk) { //아무것도 선택하지 않으면 false 를 반환
			alert("삭제 할 데이터를 선택해 주세요"); 
			return;
		}else if (chk) {
			
			$("#checkNum1").remove();
			$("#bookManageFrm").attr("action","bookManageDelete.do");
			$("#bookManageFrm").submit();
			alert("삭제되었습니다.");
		}

	});
});
</script>
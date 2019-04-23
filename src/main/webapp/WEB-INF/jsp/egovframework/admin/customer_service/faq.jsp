<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<link rel="stylesheet" type="text/css" href="css/contextMenu.min.css">

</script>
<h4 class="pull-left">FAQ</h4>
<div class="clearfix"></div>
<hr/>

<div id="tabs">
	<ul class="tabsList">
		<li><a href="#tabs-0">전체</a></li>
		
	</ul>

	<div id="tabs-0">
		<table class="table table-bordered ">
				<colgroup>
					<col width="10%"/>
					<col width="20%"/>
					<col width="70%"/>
				</colgroup>
			<thead>
				<tr>
					<th>번호</th>
					<th>분류</th>
					<th>제목</th>
				</tr>
			</thead>
			<c:forEach items="${pagingList}" var="pagingList">
				<tbody>
					<tr>
						<td><c:out value="${pagingList.faqContentNo}"/></td>
						<td>
							<c:forEach items="${faqCategoryList}" var="faqCategoryList">
								<c:if test="${pagingList.faqCategoryCd eq faqCategoryList.faqCategoryCd}">
									<c:out value="${faqCategoryList.faqCategoryTitle}"/>
								</c:if>
							</c:forEach>
						</td>
						<td class="seminarDetail">
							<a id="<c:out value="${pagingList.faqContentNo}"/>" href="#"><c:out value="${pagingList.faqContentQ}"/></a>
						</td>
					</tr>	
				</tbody>
			</c:forEach>
		</table>
		<!-- 페이징 -->
		<div class="content">
			<ul class="pagination">
				<c:if test="${resMap.pageGroup > 1 }">
					<li><a href="#" onclick="fnGoPaging(<c:out value='${resMap.prePage}'/>)">«</a></li>
				</c:if>
				<c:forEach var="i" begin="${resMap.startPage }" 
						end="${resMap.endPage > resMap.totalPage ? resMap.totalPage : resMap.endPage }">
					<c:choose>
						<c:when test="${resMap.page eq i }">
							<li class="active"><a href="#" onclick="fnGoPaging(${i});">${i}</a></li>
						</c:when>
						<c:otherwise>
							<li><a href="#" onclick="fnGoPaging(${i});">${i}</a></li>
						</c:otherwise>
					</c:choose>
				</c:forEach>
				<c:if test="${resMap.nextPage <= resMap.totalPage }">
					<li><a href="#" onclick="fnGoPaging(<c:out value='${resMap.nextPage}'/>)">»</a></li>
				</c:if>
			</ul>
		</div>
		<!--// 페이징 -->
	</div>

	<c:forEach items="${faqCategoryList}" var="faqCategoryList">
		<div id="tabs-<c:out value="${faqCategoryList.faqCategoryCd}"/>">
		<table class="table table-bordered ">
			<colgroup>
				<col width="20%"/>
				<col width="80%"/>
			</colgroup>
			<thead>
				<tr>
					<th>번호</th>
					<th>제목</th>
				</tr>
			</thead>
				<c:forEach items="${faqContentList}" var="faqContentList">
					<c:if test="${faqContentList.faqCategoryCd eq faqCategoryList.faqCategoryCd}">
						<tbody>
							<tr>
								<td><c:out value="${faqContentList.faqContentNo}" /></td>
								<td><a id="<c:out value="${faqContentList.faqContentNo}"/>" href="#"><c:out value="${faqContentList.faqContentQ}"/></a>
								<td>
							</tr>
						</tbody>
					</c:if>
				</c:forEach>
			</table>
			
		</div>
	</c:forEach>
</div>
<br/>

<div>
	<!-- <button class="btn btn-primary btn-lg" data-toggle="modal" data-target="#newTabModal">
		FAQ 탭 추가
	</button>
	<button class="btn btn-success btn-lg">
		현재 순서 저장
	</button> -->
	<button id="addFaqBtn" class="btn btn-info btn-lg">
		FAQ 항목 추가
	</button>
</div>

<!-- add tab modal	-->
<div class="modal fade" id="newTabModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
	<div class="modal-dialog" role="document">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" aria-label="Close">
					<span aria-hidden="true">&times;</span>
				</button>
				<h4 class="modal-title" id="myModalLabel">FAQ 탭 추가</h4>
			</div>
			<div class="modal-body">
				<input type="text" id="newTabTitle" placeholder="FAQ 탭 제목"><br/>
			</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-default" data-dismiss="modal">취소</button>
				<button id="addTabBtn" type="button" class="btn btn-primary">저장</button>
			</div>
		</div>
	</div>
</div>
<!--/ add tab modal -->


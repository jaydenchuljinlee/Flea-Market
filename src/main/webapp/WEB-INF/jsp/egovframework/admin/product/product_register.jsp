<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<script type="text/javascript">
$(function() {
	$("#cancle").click(function() {
		location.href="adminBookManage.do";
	});
	$("#delete").click(function() {
			
		});
	$("#update").click(function() {
		
	});
});
</script>
<h4 class="pull-left">도서 상세 페이지</h4>
<div class="clearfix"></div>
<hr />

<div class="row">
	<div class="col-md-12">
		<div class="widget wgreen">
			<div class="widget-head">
				<div class="pull-left"><c:out value="${book[0].bTheme}" /></div>
				<div class="clearfix"></div>
			</div>
			<div class="widget-content">
				<div class="padd">
					<!-- Form starts.  -->
					<form class="form-horizontal" role="form">
						<input type="hidden" id="isbn" name="isbn">
						<div class="form-group">
							<label class="col-md-2 control-label">표지</label>
							<div class="col-md-8">
								<img id="thumbnail" width="300" src="<c:out value="${book[0].bImage}"/>">
							</div>
						</div>
						<div class="form-group">
							<label class="col-md-2 control-label">제목</label>
							<div class="col-md-8">
								<input type="text" id="title" class="form-control" value="<c:out value="${book[0].bTheme}"/>" required="required">
							</div>
						</div>
						<div class="form-group">
							<label class="col-md-2 control-label">원제</label>
							<div class="col-md-8">
								<input type="text" id="originalTitle" class="form-control" value="<c:out value="${book[0].original}"/>" placeholder="국내책의 경우 빈칸">
							</div>
						</div>
						<div class="form-group">
							<label class="col-md-2 control-label">ISBN</label>
							<div class="col-md-8">
								<input type="text" id="originalTitle" class="form-control" value="<c:out value="${book[0].original}"/>" placeholder="국내책의 경우 빈칸">
							</div>
						</div>
						<div class="form-group">
							<label class="col-md-2 control-label">저자</label>
							<div class="col-md-8">
								<input type="text" id="author" class="form-control" value="<c:out value="${book[0].bAuthor}"/>">
							</div>
						</div>
						<div class="form-group">
							<label class="col-md-2 control-label">역자</label>
							<div class="col-md-8">
								<input type="text" id="translator" class="form-control" value="<c:out value="${book[0].translator}"/>">
							</div>
						</div>
						<div class="form-group">
							<label class="col-md-2 control-label">출판사</label>
							<div class="col-md-8">
								<input type="text" id="publisher" class="form-control" value="<c:out value="${book[0].publish}"/>" required="required">
							</div>
						</div>
						<div class="form-group">
							<label class="col-md-2 control-label">출판일</label>
							<div class="col-md-8">
								<input type="date" id="publishDate" class="form-control" value="<c:out value="${book[0].publishDate}"/>" required="required">
							</div>
						</div>
						<div class="form-group">
							<label class="col-md-2 control-label">가격</label>
							<div class="col-md-8">
								<input type="text" id="publishDate" class="form-control" value="<c:out value="${book[0].price}"/>" required="required">
							</div>
						</div>
						<div class="form-group">
							<label class="col-md-2 control-label">페이지</label>
							<div class="col-md-8">
								<input type="text" id="page" class="form-control" value="<c:out value="${book[0].page}"/>" required="required">
							</div>
						</div>
						<div class="form-group">
							<label class="col-md-2 control-label">소개</label>
							<div class="col-md-8">
								<textarea id="info" class="form-control" rows="10"><p><c:out value="${resMap.bIntro}"/></p></textarea>
							</div>
						</div>
						<div class="form-group">
							<label class="col-md-2 control-label">목차</label>
							<div class="col-md-8">
								<textarea id="contents" class="form-control" rows="10"><p><c:out value="${resMap.bContents}"/></p>
								</textarea>
							</div>
						</div>
						<div class="form-group">
							<label class="col-md-2 control-label">수량</label>
							<div class="col-md-8">
								<input type="text" class="form-control" value="<c:out value="${book[0].quantity}"/>" required="required">
							</div>
						</div>
						<div class="form-group">
							<label class="col-md-2 control-label">분류</label>
							<div class="col-md-8">
								<select>
									<option>프로그래밍</option>
									<option>데이터베이스</option>
									<option>컴퓨터 공학</option>
									<option>수험서</option>
								</select>
								<select>
									<option>JAVA</option>
									<option>C</option>
									<option selected="selected">파이썬</option>
								</select>
							</div>
						</div>
						<div class="form-group">
							<label class="col-md-2 control-label">분류</label>
							<div class="col-md-8">
								<select>
									<c:forEach items="${faqCategoryList}" var="faqCategoryList">
										<option 
											<c:if test = "${faqCategoryList.faqCategoryCd  eq faqDetailList[0].faqCategoryCd}"> 
													selected ='selected'</c:if> value="<c:out value="${faqCategoryList.faqCategoryCd}"/>">
											<c:out value="${faqCategoryList.faqCategoryTitle}"/>
										</option>
									</c:forEach>
									<option>프로그래밍</option>
									<option>데이터베이스</option>
									<option selected="selected">컴퓨터 공학</option>
									<option>수험서</option>
								</select>
								<select>
									<option>인공지능</option>
									<option selected="selected">머신러닝</option>
									<option>컴퓨터 구조</option>
								</select>
							</div>
						</div>
						<div class="form-group">
							<div class="col-md-offset-2 col-md-8">
								<button type="button" class="btn btn-success" id="update">수정</button>
								<button type="button" class="btn btn-danger"  id="delete">삭제</button>
								<button type="button" class="btn btn-warning" id="cancel">취소</button>
							</div>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>
</div>
<script type="text/javascript" src="js/admin/bookRegister.js"></script>
<script type="text/javascript" src="ckeditor/ckeditor.js"></script>
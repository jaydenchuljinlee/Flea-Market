<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="ui" uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!-- Header -->



<section class="container col-12 py-5 mb-5" style="margin-top:102.66px;">
	<div class="col-8 px-0 mx-auto row" style="height:350px;">
		<a class="carousel-control-prev col-1 px-0 h-30 my-auto" href="#carouselExampleIndicators" role="button" data-slide="prev" style="position:relative;">
			<span class="fa fa-chevron-left fa-3x" aria-hidden="true" style="color:#fed136;"></span>
			<span class="sr-only">Previous</span>
		</a>
		<div id="carouselExampleIndicators" class="carousel col-10 slide h-100 px-0" data-ride="carousel" data-interval="false">
			<div class="carousel-inner row h-100 mx-0" role="listbox">
				<!-- Slide One - Set the background image for this slide in the line below -->
				<div class="carousel-itemactive h-100">
					<img class="w-100 h-100" src="img/main/main_banner_1.jpg">
				</div>
				<div class="carousel-itemactive h-100">
					<img class="w-100 h-100" src="img/main/main_banner_2.jpg">
				</div>
			</div>  
		</div>
		<a class="carousel-control-next col-1 px-0 h-30 my-auto" href="#carouselExampleIndicators" role="button" data-slide="next" style="position:relative;">
			<span class="fa fa-chevron-right fa-3x" aria-hidden="true" style="color:#fed136"></span>
			<span class="sr-only">Next</span>
		</a>
	</div>
</section>

<section class="pt-0 mt-2">
	<div class="container-fuild">
	
		<div class="col-12 mx-auto px-0 pt-5 pb-5" style="background-color:#f9f9f9">
			<div class="col-7 pl-5 mx-auto">
				<h3 style="color:#adaaaa">추천 상품</h3>
			</div>
			<div class="col-8 px-0 mx-auto row" style="height:350px;">
				<a class="carousel-control-prev col-1 px-0 h-30 my-auto" href="#carouselExampleIndicators" role="button" data-slide="prev" style="position:relative;">
					<span class="fa fa-chevron-left fa-3x" aria-hidden="true" style="color:#fed136;"></span>
					<span class="sr-only">Previous</span>
				</a>
				<div id="carouselExampleIndicators" class="carousel col-10 slide h-100 px-0" data-ride="carousel" data-interval="false">
					<div class="carousel-inner row h-100 mx-0" role="listbox">
						<!-- Slide One - Set the background image for this slide in the line below -->
						<div class="carousel-itemactive h-100">
							<div class=" col-12 row h-100 px-0 mx-0">
								<c:forEach items="${recommenedList}" var="recommenedList" varStatus="status">
									<div class="col-3 h-100 pt-3">
										<div class="col-11 px-0 h-100 m-1 mx-auto" style="background-color:white;border:1px solid #efe9e9">
											<div class="col-12 h-65 p-3">
													<img class="w-100 h-100" alt="" src="img/header-bg.jpg" style="border-radius: 40%;">
											</div>
											<div class="col-12 h-15 px-0 pt-2 text-center">
												<span><c:out value="${recommenedList.productTitle}"/></span>
											</div>
											<div class="col-10 mx-auto h-20 px-0 pt-2 pb-2 text-left form-inline" style="border-top:2px dotted #ccc">
												<div class="col-8 px-0">
													<span ><b><c:out value="${recommenedList.productPrice}"/></b></span>
													<span><b>원</b></span>
												</div>
												<div class="col-4 px-0">
													<span style="font-size:10px">7</span>
													<span style="font-size:10px">시간 전</span>
												</div>
											</div>
										</div>
									</div>
								</c:forEach>
								
							</div>
						</div>
					</div>  
				</div>
				<a class="carousel-control-next col-1 px-0 h-30 my-auto" href="#carouselExampleIndicators" role="button" data-slide="next" style="position:relative;">
					<span class="fa fa-chevron-right fa-3x" aria-hidden="true" style="color:#fed136"></span>
					<span class="sr-only">Next</span>
				</a>
			</div>
		</div>
		
		
		
	
		<div class="col-6 mx-auto px-0 mt-5">
			<img class="w-100 h-100" src="img/advertise/ad_01.jpg">
		</div>
	
		<div class="col-8 mx-auto mt-5">
			<div class="col-10 mx-auto px-0 row" style="height:80px;border-top:2px solid black; border-bottom:1px solid #c2c2c2;">
				<div class="col-4 px-0 mx-auto h-100">
					
				</div>
				<div class="col-8 px-0 pb-4 row h-100" >
					<c:forEach items="${categoryList}" var="categoryList" varStatus="status">
						<div class="col-2 pt-2 px-0">
							<div class="col-12 text-center  h-60" >
								<i class="fa <c:out value='${categoryList.ca_fontawesome}'/> fa-2x" style="color:#adaaaa"></i>
							</div>	
							<div class="col-12 px-0 text-center h-30" >
								<span style="color:#adaaaa"><b><c:out value='${categoryList.ca_contents}'/></b></span>
							</div>
						</div>
					</c:forEach>
				</div>
			</div>
		</div>
		
		
		
		<div class="col-12 px-0 pt-5 pb-5" style="background-color:">
			<div class="col-8 mx-auto">
				<div class="col-10 mx-auto px-0 row" style="height:600px;">
					<c:forEach items="${categoryPdt}" var="categoryPdt" varStatus="status">
						<div class="col-3 h-50 pt-3">
							<div class="col-10 px-0 h-100 m-1" style="background-color:white;border:1px solid #efe9e9">
								<div class="col-12 h-65 px-0">
										<img class="w-100 h-100" alt="" src="img/header-bg.jpg">
								</div>
								<div class="col-12 h-15 px-0 pt-2 text-center">
									<span><c:out value="${categoryPdt.productTitle}"/></span>
								</div>
								<div class="col-12 mx-auto h-10 px-0 pt-2 pb-2 text-left form-inline">
									<div class="col-8 px-3">
										<span ><b><c:out value="${categoryPdt.productPrice}"/></b></span>
										<span><b>원</b></span>
									</div>
									<div class="col-4 px-0">
										<span style="font-size:10px">7</span>
										<span style="font-size:10px">시간 전</span>
									</div>
								</div>
							</div>
						</div>
					</c:forEach>
					
					
				</div>
			</div>
		</div>
	</div>
</section>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
	<section class="" id="portfolio">
        <div class="container col-6 p-3">
        
            <div class="w-100 title mb-2" style="border-bottom:1px solid #ccc">
                    <span style="font-size:30px;color:#7a7d80"><b><i class="fa fa-home">내 상점</i></b></span>
                </div>
            <div class="row form-inline" style="border:1px solid #d9d9d9">
                <div class="col-lg-4 p-3 text-center" style="background:#ecebe7;">
                   <div class="w-30 rt">authenticated</div>
                   <div class="w-100 mt-5" style="margin:0 auto">
                        <img class="text-center" src="img/about/1.jpg" style="border-radius: 100%">
                    </div>
                    <div class="w-60 mt-4 mb-4" style="margin:0 auto">
                        <div><span style="color:#7a7d80"><b>No: 23045</b></span> 
                        <c:out value="${userName}"/></div>
                        <div>
                            <i class="fas fa-star yellow"></i>
                            <i class="fas fa-star yellow"></i>
                            <i class="fas fa-star yellow"></i>
                            <i class="far fa-star yellow"></i>
                            <i class="far fa-star yellow"></i>
                            <span style="color:#7a7d80"><b>(3.0)</b></span>
                        </div>
                        <div>
                            <i class="fas fa-crown yellow"></i><span style="color:#7a7d80"><b>판매자등급</b></span>
                        </div>
                        
                    </div>
                    <!--<div class="w-40 mt-4 p-2" style="margin:0 auto;background:color:none;border:1px solid white">
                        <span>My store management</span>
                    </div>-->
                </div>
                <div class="col-lg-8" style="height: auto">
                   <div class="w-100">
                   		<div class="btn btn_rt" style="color:#7a7d80"><i class="fas fa-eye ml-3">20</i></div>
                        <div class="btn btn_rt" style="color:#7a7d80"><i class="fas fa-heart mr-1">팔로우하기</i></div>
                    </div>
                    <div class="w-100 mt-5" style="color:#7a7d80">
                        <span style="font-size:25px"><b>상점 이름</b></span>
                        <a class="ml-3 p-1 my-auto" style="border:1px solid #e8e8e8;border-radius: 10%;font-size:15px">update</a>

                    </div>
                    <div class="w-100 mt-4 p-2 border_line" style="color:#7a7d80">
                        <i class="fa fa-dumpster ml-1 mr-2">상점오픈일 127일</i>
                        <i class="fa fa-walking ml-1 mr-2">상점방문수 8명</i>
                        <i class="fa fa-shopping-cart ml-1 mr-2">상품판매 15회</i>
                        <i class="fa fa-car ml-1">상품발송 15회</i>
                    </div>
                    <form>
                    <div class="form-group">
    <p class="form-control w-100 mt-3" style="height:200px;overflow-y:scroll">
직거래는 안해여 🙅🏻‍♀️🙅🏻‍♀️🙅🏻‍♀️🙅🏻‍♀️<br>
교신도 안받구요<br>
사실분들만연락주세용<br><br>

분실책임안져요<br>
입금순입니다 <br>
환불안되요 구매전 꼼꼼이확인부탁드려요<br><br>

저는 매너없게 거래하시는 분들은 <br>
차단합니다 <br>
기분좋게거래합시다♥️
    </p>
  </div>
                   </form>
                </div>
                
            </div>
            <div class="mt-5">
            	<div class="row">
					<a data-target="product_list" class="col-3 text-center tab_menu" style="border:1px solid #ccc;line-height:50px;color:black;font-weight:bold">판매상품 10</a>
					<a data-target="shop_reviews" class="col-3 text-center tab_menu" style="border-bottom:1px solid #ccc;line-height:50px;color:#d0cdc3">상점 후기</a>
					<a data-target="following" class="col-3 text-center tab_menu" style="border-bottom:1px solid #ccc;line-height:50px;color:#d0cdc3">팔로잉 0</a>
					<a data-target="follower" class="col-3 text-center tab_menu" style="border-bottom:1px solid #ccc;line-height:50px;color:#d0cdc3">팔로워 0</a>
				</div>

                <div class="w-100 title mt-5 p-3" style="border-bottom:1px solid #ccc">
                    <span style="font-size:30px">판매상품</span>
                    <span style="font-size:20px;color:red">10</span>
                    <select class="mt-2" style="float:right">
                        <option>All</option>
                        <option>Etc</option>
                    </select>
                </div>
                <div class="w-100 mt-4 p-3 sub">
                    <span>모든 상품</span>
                    <span style="color:grey">10</span>
                    <div style="float:right">
                        <a class="pl-2 pr-2" style="border-right:1px solid black">최신순</a>
                        <a class="pl-2 pr-2" style="border-right:1px solid black">인기순</a>
                        <a class="pl-2 pr-2" style="border-right:1px solid black">저가순</a>
                        <a class="pl-2 pr-2">고가순</a>
                    </div>
                </div>
            </div>

            <div class="row">
                <div class="col-md-3 col-sm-6">
                    <div class="card mb-4 box-shadow">
                        <img class="card-img-top img-fluid" src="img/portfolio/01-thumbnail.jpg" alt="">
                        <div class="card-body">
                            <div class="card-title">상품 제목입니다.</div>
                            <div class="justify-content-between align-items-center">
                                <div>
                                    가격 23000원<small class="text-muted btn_rt">9 mins</small>
                                </div>
                                <div>
                                    <i class="fas fa-map-marker-alt yellow"></i>위치입니다.
                                </div>

                            </div>
                        </div>  
                    </div>
                </div>
                <div class="col-md-3 col-sm-6">
                    <div class="card mb-4 box-shadow">
                        <img class="card-img-top img-fluid" src="img/portfolio/02-thumbnail.jpg" alt="">
                        <div class="card-body">
                            <div class="card-title">상품 제목입니다.</div>
                            <div class="justify-content-between align-items-center">
                                <div>
                                    가격 23000원<small class="text-muted btn_rt">9 mins</small>
                                </div>
                                <div>
                                    <i class="fas fa-map-marker-alt yellow"></i>위치입니다.
                                </div>

                            </div>
                        </div>  
                    </div>
                </div>
                
                <div class="col-md-3 col-sm-6">
                    <div class="card mb-4 box-shadow">
                        <img class="card-img-top img-fluid" src="img/portfolio/03-thumbnail.jpg" alt="">
                        <div class="card-body">
                            <div class="card-title">상품 제목입니다.</div>
                            <div class="justify-content-between align-items-center">
                                <div>
                                    가격 23000원<small class="text-muted btn_rt">9 mins</small>
                                </div>
                                <div>
                                    <i class="fas fa-map-marker-alt yellow"></i>위치입니다.
                                </div>

                            </div>
                        </div>  
                    </div>
                </div>
                <div class="col-md-3 col-sm-6">
                    <div class="card mb-4 box-shadow">
                        <img class="card-img-top img-fluid" src="img/portfolio/05-thumbnail.jpg" alt="">
                        <div class="card-body">
                            <div class="card-title">상품 제목입니다.</div>
                            <div class="justify-content-between align-items-center">
                                <div>
                                    가격 23000원<small class="text-muted btn_rt">9 mins</small>
                                </div>
                                <div>
                                    <i class="fas fa-map-marker-alt yellow"></i>위치입니다.
                                </div>

                            </div>
                        </div>  
                    </div>
                </div>
                <div class="col-md-3 col-sm-6">
                    <div class="card mb-4 box-shadow">
                        <img class="card-img-top img-fluid" src="img/portfolio/04-thumbnail.jpg" alt="">
                        <div class="card-body">
                            <div class="card-title">상품 제목입니다.</div>
                            <div class="justify-content-between align-items-center">
                                <div>
                                    가격 23000원<small class="text-muted btn_rt">9 mins</small>
                                </div>
                                <div>
                                    <i class="fas fa-map-marker-alt yellow"></i>위치입니다.
                                </div>

                            </div>
                        </div>  
                    </div>
                </div>
                <div class="col-md-3 col-sm-6">
                    <div class="card mb-4 box-shadow">
                        <img class="card-img-top img-fluid" src="img/portfolio/06-thumbnail.jpg" alt="">
                        <div class="card-body">
                            <div class="card-title">상품 제목입니다.</div>
                            <div class="justify-content-between align-items-center">
                                <div>
                                    가격 23000원<small class="text-muted btn_rt">9 mins</small>
                                </div>
                                <div>
                                    <i class="fas fa-map-marker-alt yellow"></i>위치입니다.
                                </div>

                            </div>
                        </div>  
                    </div>
                </div>
            </div>
        </div>
    </section>

<script>
	$(function() {
		$(".tab_menu").on("click", function() {
			
			var param = {
					target	: $(this).data("target"),
					user	: "4"
			}
			$.ajax({
				type		: "post",
				url			: "shop_tab.do",
				data		: JSON.stringify(param),
				contentType	: "application/json",
				success	: function(data) {
					console.log(data);
				},
				error		: function(error) {
					console.log(error);
				}
				
			})
		})
	})
</script>

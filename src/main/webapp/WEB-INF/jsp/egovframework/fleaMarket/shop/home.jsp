<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
	<section class="bg-light" id="portfolio">
        <div class="container p-3">
        
            <div class="w-100 title mb-2" style="border-bottom:1px solid #ccc">
                    <span style="font-size:30px">MyStore</span>
                </div>
            <div class="row form-inline" style="border:1px solid #d9d9d9">
                <div class="col-lg-4 p-3 text-center" style="background:grey;">
                   <div class="w-30 rt">authenticated</div>
                   <div class="w-100 mt-5" style="margin:0 auto">
                        <img class="text-center" src="img/about/1.jpg" style="border-radius: 100%">
                    </div>
                    <div class="w-60 mt-4 mb-4" style="margin:0 auto">
                        <div style="color:white">상점 이름: Shop 
                        <c:out value="${userName}"/></div>
                        <div>
                            <i class="fas fa-star yellow"></i>
                            <i class="fas fa-star yellow"></i>
                            <i class="fas fa-star yellow"></i>
                            <i class="far fa-star white"></i>
                            <i class="far fa-star white"></i>
                            <span class="white">(3.0)</span>
                        </div>
                        <div>
                            <i class="fas fa-crown white"></i><span class="white">판매자등급</span>
                            <i class="fas fa-eye white ml-3"></i><span class="white">20</span>
                        </div>
                        
                    </div>
                    <!--<div class="w-40 mt-4 p-2" style="margin:0 auto;background:color:none;border:1px solid white">
                        <span>My store management</span>
                    </div>-->
                </div>
                <div class="col-lg-8" style="height: auto">
                   <div class="w-100">
                        <div class="btn btn_rt"><i class="fas fa-heart mr-1"></i>팔로우하기</div>
                        <div class="btn btn_rt">문의하기</div>
                    </div>
                    <div class="w-100 mt-5">
                        <span style="font-size:25px">상점 이름: Shop No.211234</span>
                        <a class="ml-3 p-1" style="border:1px solid #e8e8e8;border-radius: 10%;font-size:5px">이름수정</a>

                    </div>
                    <div class="w-100 mt-4 p-2 border_line">
                        <span class="ml-2 mr-3"><i class="fa fa-dumpster orange"></i>상점오픈일 127일</span>
                        <span class="ml-2 mr-3"><i class="fa fa-walking yellow"></i>상점방문수 8명</span>
                        <span class="ml-2 mr-3"><i class="fa fa-shopping-cart green"></i>상품판매 15회</span>
                        <span class="ml-2 mr-3"><i class="fa fa-car blue"></i>상품발송 15회</span>
                    </div>
                    <form>
                    <div class="form-group">
    <textarea class="form-control w-100 mt-3" rows="8">
직거래는 안해여 🙅🏻‍♀️🙅🏻‍♀️🙅🏻‍♀️🙅🏻‍♀️
교신도 안받구요
사실분들만연락주세용

분실책임안져요
입금순입니다 
환불안되요 구매전 꼼꼼이확인부탁드려요

저는 매너없게 거래하시는 분들은 
차단합니다 
기분좋게거래합시다♥️
    </textarea>
  </div>
                   </form>
                </div>
                
            </div>
            <div class="mt-5">
                <div class="row tab_menu">
                    <a class="btn_row_focus col-3 text-center" href="shop.do">판매상품 10</a>
                    <a class="col-3 text-center btn_row" href="review.do">상점 후기</a>
                    <a class="col-3 text-center btn_row" href="follower.do">팔로잉 0</a>
                    <a class="col-3 text-center btn_row" href="#">팔로워 0</a>
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



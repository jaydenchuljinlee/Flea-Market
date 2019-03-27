<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<link rel="stylesheet" href="css/mypage/mypage.css">
<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>


<!-- Contents -->
<div class="product-grid-holder tc-padding2">
	<div class="row">
		<div class="myItbook_wrap">
		
 	 <!-- 마이페이지 카테고리  -->
			<div class="lft_sec_mypage">
				<ul class="txt_tab_menu mypage-tab">
					<li><a href="myPage.do">마이페이지</a></li>
					<li><a href="grade_info.do">등급별 혜택</a></li>
					<li><a href="myMileage.do">마일리지</a></li>
				    <li><a href="myBasket.do">장바구니</a></li>
					<li><a href="wishList.do">위시리스트</a></li>
					<li><a href="buyList.do">구매/주문 내역</a></li>	
					<li><a href="myQna.do">1:1문의 내역</a></li>					
				    <li><a href="modifyCheckPassword.do">개인정보 수정</a></li>
				</ul>
			</div>
			<!-- 마이페이지 카테고리  -->

			<!-- 마일리지 탭 -->
			<div class="tabmenu" id="my_mileage">
				<ul>
					<li class="left"><i class="far fa-credit-card"></i> 주문결제</li>
				</ul>
			</div>

			<!-- 탭메뉴 -->
		<!-- 주문배송 조회 -->
		<div class="myBasket-step smf_l">
              <hr>
				<ul class="mypage-step">
					<li><em><i class="fas fa-shopping-cart" style="font-size: 50px;"></i></em> <span>장바구니</span></li>
					<li><em><i class="far fa-credit-card" style="font-size: 50px; color: #fe981e"></i></em> <span>주문결제</span></li>
					<li><em><i class="fas fa-child" style="font-size: 50px;"></i></em> <span>주문완료</span></li>
				</ul>
			</div>
		<!-- //주문배송 조회 -->

		<!-- 주문 상품 목록 -->
		<div class="table_area_cart">
			<table class="tbl_type_list" summary="장바구니 리스트 테이블">
				<caption>장바구니 리스트</caption>
				<colgroup>
				<col width="">
				<col width="">
				<col width="">
				<col width="140px">
				<col width="130px">
				<col width="130px">
				<col width="90px">
				</colgroup>
				<thead>
					<tr>
						<th colspan="3" scope="col">상품명</th>
						<th scope="col">판매가</th>
						<th scope="col">수량</th>
						<th scope="col">합계</th>
						<th scope="col">삭제</th>
					</tr>
				</thead>
				<tbody>
						<tr>
							<td class="check_area">
								<label for="check_select">
									<input class="i_check" type="checkbox" name="checked_isbn_" value="">
								</label>
							</td>
							<td class="thumb_area"><a href="#"><img src="" alt="" class="thumb" /></a></td>
							<td class="left info">
								<p class="txt_nomal" id="book_Theme_"><a href="/store/books/look.php?p_code=B2901427500"></a></p>
							</td>
							<td>
								<p class="price">원
								<input type="hidden" name="price_" value="">
								<span class="mileage"	id="mileage_"></span>점								
							</td>
							<td>						
							 <label class="option_label"><input type="text" id="quantity_isbn_" value="" name="quantity_isbn_" class="i_text" maxlength="2"></label>																				
							</td>
							<td class="price2" id="total_"><c:out value=""/><span>원</span></td>
							<td><a href="#" class=""><i class="fas fa-trash-alt delete"></i></a></td>
						</tr>
																
				</tbody>
			</table>
		</div>
		<!-- //주문 상품 목록 -->
		
				<!-- 장바구니 합계 -->
		<div class="cart_result_box">
			<ul>
				<li>주문상품 수량 :  <span class='sumTr'></span>종 [<span class="quantity"></span>개 ]</li>
				<li>예상 마일리지 적립 :  <span id='mileage'></span>점</li>
				<li>배송료 :  <span class='deliveryCost'>0</span>원</li> 
				<li>총 주문 금액 :  <span class="price totalPrice"></span><span class="price">원</span></li>
			</ul>
		</div>
		<!-- //장바구니 합계 -->
		<hr>
		<!-- 할인 정보 -->
        	<p class="tit">마일리지 사용</p>
            <div class="discount_info">
                <div class="register_li">
					<input type="hidden" value="0" name="my_e_coin" id="my_e_coin"  >              	            
                    <label>
	                        <input type="text" value="" name="e_coin" id="text_mileage" class="i_text2" > 점		
	                        <input type="button" value="적용" id="apply_mileage" class="i_button">
	                        <input type="button" value="취소" id="reset_mileage" class="i_button">
	                        <span>보유 마일리지 :<c:out value="${paymentMileage}"/>점</span> 
	                        <input id="remain_mileage" type="hidden" value="<c:out value="${paymentMileage}"/>">
                    </label>
                                
                  	</div>
                </div>
       
        <!-- //할인 정보 -->
     
		<!-- 배송지 정보 -->
		<div class="addr_info_box">
			<p class="tit">배송지 정보</p>
			<div class="address_info" style="position:relative; height:500px">
				<fieldset>
				<legend>배송지 정보 입력</legend>
				<div class="register_addr">
                    <div class="register_li">
						<div class="i_tit"><strong>배송지 선택<span> *</span></strong></div>
						<div class="i_con">	
							<label class="ra_label">
								<input type="radio" name="delivery_addr" id="delivery_Orderaddr"  value="Orderaddr"  class="i_radio" checked  onclick="javascript:set_deliveryAddr();" >
								<span>주문자와 동일</span>
							</label>
						</div>
					</div>
                    <div class="register_li">
						<div class="i_tit"><strong>이름<span> *</span></strong></div>
						<div class="i_con">
								<input type="text" value="" name="m_name"  id="buyer_name" class="i_text" >	
						</div>
					</div>
                    <div class="register_li">
						<div class="i_tit"><strong>주소<span> * </span></strong></div>
							<div class="i_con">
								<input type="text" class="i_text" id="sample6_postcode" name="zipNo" placeholder="우편변호">
								<input type="button" onclick="sample6_execDaumPostcode();" value="주소검색" class="i_button" id="prof_zipcode"/>
								<div class="input_space"></div>
								<input type="text" id="sample6_address" name="roadAddrPart1" class="i_text2" placeholder="도로명 주소">
								<input type="text" id="sample6_address2" name="addrDetail" class="i_text2" placeholder="상세주소"> <br>
								<span class="address_span">※ 배송주소를 다시 한번 확인해 주세요.</span>

							</div>
						</div>
                    <div class="register_li">
						<div class="i_tit"><strong>휴대전화<span> *</span></strong></div>
						<div class="i_con">
								<input type="text"  name="mobile_1" id="mobile_1" class="i_text3" onkeyup="this.value=number_filter(this.value);" maxlength="4" >	
								-
								<input type="text"  name="mobile_2" id="mobile_2" class="i_text3" onkeyup="this.value=number_filter(this.value);" maxlength="4" >
								- 
								<input type="text"  name="mobile_3" id="mobile_3" class="i_text3" onkeyup="this.value=number_filter(this.value);" maxlength="4" ><br />
          						
						</div>
					</div>
                    
                    <div class="register_li">
						<div class="i_tit"><strong>일반전화</strong></div>
						<div class="i_con">
								<input type="text" name="phone_1" id="phone_1" class="i_text3" onkeyup="this.value=number_filter(this.value);" maxlength="4" >	
								- 
								<input type="text" name="phone_2" id="phone_2" class="i_text3" onkeyup="this.value=number_filter(this.value);" maxlength="4" >	
								- 
								<input type="text" name="phone_3" id="phone_3" class="i_text3" onkeyup="this.value=number_filter(this.value);" maxlength="4" >	
						</div>
					</div>
					<div class="register_li">
						<div class="i_tit"><strong>이메일</strong></div>
						<div class="i_con">
							
								<input type="text" name="Email_1" id="Email_1" class="i_text2" >@
								<input type="text" name="Email_2" id="Email_2" class="i_text2" disabled>
                                <select id="e_sub" onchange="$('#Email_2').val($('#e_sub').val());" style="background-color:#f9f9f9;width:160px;height:32px">
                                	<option value="naver.com">naver.com</option>
                                	<option value="daum.net">daum.net</option>
                                	<option value="yahoo.co.kr">yahoo.co.kr</option>
                                	<option value="google.com">google.com</option>
                                	<option value="1">직접입력</option>
                                </select>
						</div>
					</div>
                    <div class="register_li">
						<div class="i_tit"><strong>배송메시지</strong></div>
						<div class="i_con">
							
								<input type="text" name="ord_comment" id="ord_comment" class="i_text4" >
                                 <span>(50자 이내 작성)</span>
						</div>
					</div>
				</div>
				</fieldset>
							</div>
			
		</div>
		
        
		
			<!-- 결제 정보 -->
				<div class="payment_info">
			<p class="tit">결제 정보</p>
			<dl class="payment_type">
				<dt>결제방법 선택</dt>
				<dd>
					<label class="ra_label">
						<input type="radio" name="ord_pay_method" id="ord_pay_method" class="i_radio" value="card" checked>
						<span>신용카드</span>
					</label>
				</dd>
				<dd>
					<label class="ra_label">
						<input type="radio" name="ord_pay_method" id="ord_pay_method" class="i_radio" value="bank">
						<span>무통장 입금</span>
					</label>
				</dd>
				<dd>
					<label class="ra_label">
						<input type="radio" name="ord_pay_method" id="ord_pay_method" class="i_radio" value="mobile">
						<span>휴대폰 결제</span>
					</label>
				</dd>
			</dl>			
		</div>
				<!-- //결제 정보 -->
	
		<!-- 주문,결제 최종 정보 영역 -->
		<div class="total_info">			
			
			<input  type="hidden" id="sum_sale_price" name="sum_sale_price">
			<input  type="hidden" id="sum_ecoin_price" name="sum_ecoin_price">
			<input  type="hidden" id="sum_coupon_price" name="sum_coupon_price">
			<input  type="hidden" id="sum_total_price" name="sum_total_price" value="37800">
			<input  type="hidden" id="sum_total_mileage" name="sum_total_mileage" value="2100">
			<input  type="hidden" id="p_delivery_price" name="p_delivery_price" value="0">
			
			<!-- 주문 총액 정보 -->
			<dl class="total_order">
				<dt>주문상품 : </dt>
				<dd>총 <span class="sumTr"></span>종 [<span class="quantity"></span>개 ]</dd>
				<dt>총 상품금액 : </dt>
				<dd><span class="totalPrice"></span>원</dd>
				<dt>배송비 : </dt>
				<dd><span class="deliveryCost"></span>원</dd>
				<dt>할인금액 : </dt>
				<dd><span id="discount">0</span>원</dd>
			</dl>
			<!-- //주문 총액 정보 -->
			
			<!-- 최종 결제 정보 -->
			<dl class="total_payment">
				<dt><strong>최종 결제 금액 :</strong></dt>
				<dd><strong><span id="finalPrice"></span>원</strong></dd>
				<dt>최종 적립 마일리지 :</dt>
				<dd><span id="finalSaveMileage"></span>점</dd>
			</dl>
			<!-- //최종 결제 정보 -->
			
			<!-- 결제하기 버튼 -->
			<label>
				<button name="bynPay" value="결제하기" class="btn_payment">결제하기</button>
				
			</label>
			<!-- //결제하기 버튼 -->
		</div>
		<!-- //주문,결제 최종 정보 영역 -->
		<div class="btn_area_cart" style="text-align:left;">
			<a href="myBasket.do" class="btn_white2" style="text-align:center; width:150px; font-size:14px;">&lt; 이전단계</a>
		</div>
		</div>	<!-- //itbook wrap -->
	</div>
</div>

<script type="text/javascript" src="https://service.iamport.kr/js/iamport.payment-1.1.5.js"></script>
<script type="text/javascript">
	$(function() {
		

		
		$(".btn_payment").click(function() {
			var IMP = window.IMP; // 생략가능
			IMP.init('imp19176780');
			
			//$("#submit_payment").submit();

			//결제창
			/* IMP.request_pay({
			    pg : 'inicis', // version 1.1.0부터 지원.
			    pay_method : "card",
			    merchant_uid : 'merchant_' + new Date().getTime(),
			    name : "책",
			    amount : 1000,
			    buyer_email : "cheoljin1234@naver.com",
			    buyer_name : "이철진",
			    buyer_tel : "010-8966-9169"
			}, function(rsp) {
				alert("d");
				
			});  */
			
			location.href = "";
		});
	});
	
	
	
	
</script>
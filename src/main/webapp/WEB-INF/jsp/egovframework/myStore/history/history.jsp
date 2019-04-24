<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<style>
	.page-title .title_right {
		float:right;
	}
	.top_search .input-group {
		float:left;
	}
	.top_search .input-group .input-group-btn{
		width:auto;
	}
</style>

	<div class="right_col">
         
         <div class="page-title">
           		<div class="title_right">
		       		<div class="col-md-12 col-sm-12 col-xs-12 form-group top_search">
		       			<div class="input-group pull-right">
			       			<select data-type="buy" class="form-control sale-state">
			       				<option value="">전체</option>
		                    	<option value="0">입금대기</option>
		                    	<option value="1">주문대기</option>
		                    	<option value="2">배송대기</option>
		                    	<option value="3">배송완료</option>
		                    	<option value="4">환불신청</option>
			       			</select>
		       			</div>
		       			<div class="input-group pull-right">
			       			<select class="form-control">
			       				<option>10개씩</option>
		                    	<option>20개씩</option>
		                    	<option>50개씩</option>
		                    	<option>100개씩</option>
			       			</select>
			       		</div>
			            <div class="input-group pull-right">
			                <input type="text" class="form-control" placeholder="물품명을 입력하세요...">
			                <span class="input-group-btn">
			                	<button data-type="buy" class="btn btn-default search" type="button">검색</button>
			                </span>
			           	</div>
			           	
		       		</div>
        		</div>
        	</div>
         
         <div class="form-inline">
	        	<div class="col-md-12 col-sm-12 col-xs-12">
                <div class="x_panel">
                  <div class="x_title">
                    <h2>구매 현황</h2>
                    <div class="clearfix"></div>
                  </div>
                  <div class="x_content">
                    <table class="table table-hover">
                      <thead>
                        <tr>
                          <th>상품번호</th>
                          <th>물품명</th>
                          <th>상태</th>
                          <th>가격</th>
                          <th>구매/취소 날짜</th>
                          <th>기타</th>
                        </tr>
                      </thead>
                      <tbody>
                        <tr>
                          <td><img src="#" /></td>
                          <td class="input-group">양말</td>
                          <td> 
                          	<div class="input-group">
	                          	<select class="form-control">
			                    	<option>판매중</option>
			                    	<option>예약중</option>
			                    	<option>판매완료</option>
				       			</select>
			       			</div>
                          </td>
                          <td>3500</td>
                          <td>2018-02-26</td>
                          <td>
                          	<div>
                          		<span>(주)비바리퍼블리카</span>
                          	</div>
                          </td>
                         </tr>
                      </tbody>
                    </table>

                  </div>
                </div>
              </div>              
	        </div>
	        
	        <div class="page-title">
           		<div class="title_right">
		       		<div class="col-md-12 col-sm-12 col-xs-12 form-group top_search">
		       			<div class="input-group pull-right">
			       			<select data-type="sell" class="form-control sale-state">
			       				<option value="">전체</option>
		                    	<option value="0">입금대기</option>
		                    	<option value="1">주문대기</option>
		                    	<option value="2">배송대기</option>
		                    	<option value="3">배송완료</option>
		                    	<option value="4">환불신청</option>
			       			</select>
		       			</div>
		       			<div class="input-group pull-right">
			       			<select class="form-control">
			       				<option>10개씩</option>
		                    	<option>20개씩</option>
		                    	<option>50개씩</option>
		                    	<option>100개씩</option>
			       			</select>
			       		</div>
			            <div class="input-group pull-right">
			                <input type="text" class="form-control" placeholder="물품명을 입력하세요...">
			                <span class="input-group-btn">
			                	<button data-type="sell" class="btn btn-default search" type="button">검색</button>
			                </span>
			           	</div>
			           	
		       		</div>
        		</div>
        	</div>
	        
	       <div class="form-inline">
	        	<div class="col-md-12 col-sm-12 col-xs-12">
                <div class="x_panel">
                  <div class="x_title">
                    <h2>판매 현황</h2>
                    <div class="clearfix"></div>
                  </div>
                  <div class="x_content">
                    <table class="table table-hover">
                      <thead>
                        <tr>
                          <th>구매자</th>
                          <th>물품명</th>
                          <th>상태</th>
                          <th>가격</th>
                          <th>구매/취소 날짜</th>
                          <th>기타</th>
                        </tr>
                      </thead>
                      <tbody>
                        <tr>
                          <td>kim</td>
                          <td class="input-group">양말</td>
                          <td> 
                          	<div class="input-group">
	                          	<select class="form-control">
				       				<option>주문완료</option>
			                    	<option>배송중</option>
			                    	<option>배송완료</option>
			                    	<option>환불대기</option>
			                    	<option>환불완료</option>
				       			</select>
			       			</div>
                          </td>
                          <td>3500</td>
                          <td>2018-02-26</td>
                          <td>
                          	<div>
                          		<span>빨리 보내주세요</span>
                          	</div>
                          </td>
                         </tr>
                      </tbody>
                    </table>

                  </div>
                </div>
              </div>              
	        </div>
    </div>
    
    <script>
    	$(function() {
    		
    		$(".search").on("click",function() {
    			
    			var param = {
    					text	: $(this).parent().prev().val(),
    					type	: $(this).data("type"),
    					user	: "1"
    					
    			}
    			
    			$.ajax({
    				type		: "post",
    				url			: "history_search.do",
    				data		: JSON.stringify(param),
    				contentType	: "application/json",
    				success		: function(data) {
    					console.log(data);
    				},
    				error		: function(error) {
    					console.log(data);
    				}
    				
    			})
    		})
    		
    		$(".sale-state").on("change",function() {

    			var param = {
    					state	: $(this).val(),
    					type	: $(this).data("type"),
    					user	: "1"
    					
    			}
    			
    			$.ajax({
    				type		: "post",
    				url			: "history_state.do",
    				data		: JSON.stringify(param),
    				contentType	: "application/json",
    				success		: function(data) {
    					console.log(data);
    				},
    				error		: function(error) {
    					console.log(data);
    				}
    				
    			})
    			
    		})
    	})
    </script>
    
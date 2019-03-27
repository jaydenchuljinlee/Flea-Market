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

	<div class="right_col" role="main">
		<div class="">
            <div class="page-title">
            	<div class="title_right">
			       	<div class="col-md-12 col-sm-12 col-xs-12 form-group pull-right top_search">
			            <div class="input-group">
			                <input type="text" class="form-control" placeholder="물품명을 입력하세요...">
			                <span class="input-group-btn">
			                	<button class="btn btn-default" type="button">검색</button>
			                </span>
			           	</div>
			           	<div class="input-group">
			       			<select class="form-control">
			       				<option>10개씩</option>
		                    	<option>20개씩</option>
		                    	<option>50개씩</option>
		                    	<option>100개씩</option>
			       			</select>
			       		</div>
			       		<div class="input-group">
			       			<select class="form-control">
			       				<option>전체</option>
		                    	<option>판매중</option>
		                    	<option>예약중</option>
		                    	<option>판매완료</option>
			       			</select>
			       		</div>
			       	</div>
	        	</div>
	        </div>
	        
	        <div class="clearfix"></div>
	        
	        <div class="row">
	        	<div class="col-md-12 col-sm-12 col-xs-12">
                <div class="x_panel">
                  <div class="x_title">
                    <h2>물품 현황</h2>
                    <div class="clearfix"></div>
                  </div>
                  <div class="x_content">
                    <table class="table table-hover">
                      <thead>
                        <tr>
                          <th>사진</th>
                          <th>상태</th>
                          <th>물품명</th>
                          <th>가격</th>
                          <th>찜/댓글</th>
                          <th>최근수정일</th>
                          <th>기능</th>
                        </tr>
                      </thead>
                      <tbody>
                        <tr>
                          <th><img src="#" /></th>
                          <td> 
                          	<div class="input-group">
	                          	<select class="form-control">
				       				<option>전체</option>
			                    	<option>판매중</option>
			                    	<option>예약중</option>
			                    	<option>판매완료</option>
				       			</select>
			       			</div>
                          </td>
                          <td>양말</td>
                          <td>3500</td>
                          <td>250</td>
                          <td>2018-02-26</td>
                          <td>
                          	<button type="button" class="btn btn-success">수정</button>
	                        <button type="button" class="btn btn-danger">삭제</button>
                          </td>
                        </tr>
                        <tr>
                          <th><img src="#" /></th>
                          <td>
                          	<div class="input-group">
	                          	<select class="form-control">
				       				<option>전체</option>
			                    	<option>판매중</option>
			                    	<option>예약중</option>
			                    	<option>판매완료</option>
				       			</select>
			       			</div>
                          </td>
                          <td>양말</td>
                          <td>3500</td>
                          <td>250</td>
                          <td>2018-02-26</td>
                          <td>
                          	<button type="button" class="btn btn-success">수정</button>
	                        <button type="button" class="btn btn-danger">삭제</button>
                          </td>
                        </tr>
                        <tr>
                          <th><img src="#" /></th>
                          <td>
                          	<div class="input-group">
	                          	<select class="form-control">
				       				<option>전체</option>
			                    	<option>판매중</option>
			                    	<option>예약중</option>
			                    	<option>판매완료</option>
				       			</select>
			       			</div>
                          </td>
                          <td>양말</td>
                          <td>3500</td>
                          <td>250</td>
                          <td>2018-02-26</td>
                          <td>
                          	<button type="button" class="btn btn-success">수정</button>
	                        <button type="button" class="btn btn-danger">삭제</button>
                          </td>
                        </tr>
                        <tr>
                          <th><img src="#" /></th>
                          <td>
                          	<div class="input-group">
	                          	<select class="form-control">
				       				<option>전체</option>
			                    	<option>판매중</option>
			                    	<option>예약중</option>
			                    	<option>판매완료</option>
				       			</select>
			       			</div>
                          </td>
                          <td>양말</td>
                          <td>3500</td>
                          <td>250</td>
                          <td>2018-02-26</td>
                          <td>
                          	<button type="button" class="btn btn-success">수정</button>
	                        <button type="button" class="btn btn-danger">삭제</button>
                          </td>
                        </tr>
                      </tbody>
                    </table>

                  </div>
                </div>
              </div>
              <div class="form-group">
	          	<div class="col-md-12 col-sm-12 col-xs-12" style="text-align:right;">
	            	<button type="submit" class="btn btn-success">물품 등록</button>
	            </div>
	          </div>              
	        </div>
        </div>
    </div>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<link rel="stylesheet" href="css/mypage/mypage.css">

<script type= text/javascript>
	history.pushState(null, null, location.href);
	window.onpopstate = function(event) {
	    history.go(1);
	};
</script>

<div class="container" style="margin-top:102.66px;">
	<div class="row mx-auto">
		<div class="contents col-7 mx-auto mt-4" style="border:1px solid black;">
			<div>
				<span>
					<strong>주문 정보</strong>
				</span>
			</div>
			<div>
				<div>
					<span>
						<strong>주문 번호</strong>
					</span>
				</div>
				<div>
					<span>
						<strong>123546233</strong>
					</span>
				</div>
			</div>
			<div>
				<div>
					<span>
						<strong>총 결제 금액</strong>
					</span>
				</div>
				<div>
					<span>
						<strong>3042원</strong>
					</span>
				</div>
			</div>
			<div>
				<div>
					<span>
						<strong>결제일</strong>
					</span>
				</div>
				<div>
					<span>
						<strong>2019.04.29</strong>
					</span>
				</div>
			</div>
			<div>
				<div>
					<span>
						<strong>구매 목록</strong>
					</span>
				</div>
				<div>
					<span>
						<strong>수건</strong>
					</span>
				</div>
			</div>
		</div>
	</div>
</div>
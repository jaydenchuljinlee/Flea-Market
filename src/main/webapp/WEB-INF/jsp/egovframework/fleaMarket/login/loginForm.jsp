<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<style>
.login-container {
	padding-top: 10rem !important;
}
</style>

<!-- Header -->
<header class="masthead" style="height: 100vh;">

	<div class="container text-center login-container">
		<div class="top_contents col-12 text-center">
			<div class="col-12 p-2 mb-2 mt-2">
				<h2>로그인</h2>
				<span>
					<b>토르장터 중고거래 시작하기</b>
				</span>
			</div>
			<div class="col-12 p-2 mb-2 mt-2">
				<span>더 많은 상품 정보를 보기 위해서는 로그인이 필요합니다!</span>
			</div>
		</div>
		<div class="social_login col-4 mx-auto p-2 text-center" style="border-bottom: 1px solid #f7f7f7">
			<div class="col-12 p-2 m-2" style="background-color: #f7f7f7;">
				<a href="#">naver</a>
			</div>
			<div class="col-12 p-2 m-2" style="background-color: #f7f7f7;">
				<a href="#">kakao</a>
			</div>
			<div class="col-12 p-2 m-2" style="background-color: #f7f7f7;">
				<a href="#">facebook</a>
			</div>
		</div>
		<form class="loginFrm m-2">
			<input class="m-2" type="text" name="id">
			<br>
			<input class="m-2" type="password" name="pw">
			<br>
			<a class="loginBtn" href="#">로그인</a>
			<br>
			<a href="#">비밀번호 찾기</a>
		</form>
		<div class="signupFrm mt-4">
			<span>아직 계정이 없으세요?</span>
			<a href="registForm.do" style="color: red">회원가입하기</a>
		</div>
	</div>
</header>
<c:if test="${param.error ne null }">
	<c:choose>
		<c:when test="${param.error eq 1 }">
			<script>alert("아이디가 존재하지 않습니다.");</script>	
		</c:when>
		<c:when test="${param.error eq 2 }">
			<script>alert("비밀번호가 불일치 합니다.");</script>	
		</c:when>
		<c:when test="${param.error eq 3 }">
			<script>alert("서버 오류 입니다. 다시 시도해 주세요");</script>	
		</c:when>
	</c:choose>
</c:if>
<script>
	$(".loginFrm").on("click", ".loginBtn", function() {
		$(".loginFrm").attr("method", "post").attr("action", "login.do").submit();
	});
</script>


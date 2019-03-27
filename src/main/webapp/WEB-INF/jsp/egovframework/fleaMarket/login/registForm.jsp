<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<style>
.pageHeader-title {
	padding-top: 3.5em;
}
.chkPw {
	font-weight : bold;
	color: green;
}
.unChkPw {
	font-weight : bold;
	color: red;
}
</style>
<!-- Header -->
<header class="masthead" style="height: 35vh;">
	<div class="container h-100">
		<h1 class="pageHeader-title">회원가입</h1>
	</div>
</header>

<!-- Services -->
<div class="container my-3">
	<form id="registFrm" class="col-6 mx-auto" method="post">

		<div class="row">
			<label class="col-12">아이디 : </label>
			<div class="col-8">
				<input class="form-control form-control-sm" name="registId" required>
			</div>
			<div class="col-4">
				<a class="form-control form-control-sm text-center">중복확인</a>
			</div>
		</div>

		<div class="row">
			<label class="col-12">비밀번호 : <span class="pwChk"></span></label>
			<div class="col-12">
				<input class="form-control form-control-sm" name="registPw" type="password" required>
			</div>
			<div class="col-12 mt-1">
				<input class="form-control form-control-sm" type="password" required>
			</div>
		</div>

		<div class="row">
			<div class="col-4">
				<label>이름 : </label>
				<input class="form-control form-control-sm " name="registName" required>
			</div>
			<div class="col-4">
				<label>생일 : </label>
				<input class="form-control form-control-sm" type="date" name="registBirthDay" required>
			</div>
			<div class="col-4">
				<label>성별 : </label>
				<select class="form-control form-control-sm" name="registGender" required>
					<option value="M">남자</option>
					<option value="F">여자</option>
				</select>
			</div>
		</div>

		<div class="row">
			<label class="col-12">휴대폰 번호 : </label>
			<div class="col-4">
				<select class="form-control form-control-sm" name="phone1" required>
					<option>010</option>
					<option>011</option>
				</select>
			</div>
			<div class="col-4">
				<input class="form-control form-control-sm" name="phone2"  required>
			</div>
			<div class="col-4">
				<input class="form-control form-control-sm" name="phone3" required>
			</div>
		</div>

		<div class="row">
			<label class="col-12">이메일 : </label>
			<div class="col-5">
				<input class="form-control form-control-sm" name="email" required>
			</div>
			<div class="col-1 text-center px-1">@</div>
			<div class="col-6">
				<select class="form-control form-control-sm" name="domain" required>
					<option>naver.com</option>
					<option>google.com</option>
				</select>
			</div>
		</div>

		<div class="row">
			<label class="col-12">우편번호 : </label>
			<div class="col-5">
				<input class="form-control form-control-sm postcodify_postcode5 " name="registZipcode" readonly="readonly" required>
			</div>
			<div class="col-4">
				<a class="form-control form-control-sm text-center">주소검색</a>
			</div>
			<label class="col-12">주소 : </label>
			<div class="col-12">
				<input class="form-control form-control-sm postcodify_address" name="address" readonly="readonly" required>
			</div>
			<label class="col-12">상세 주소 : </label>
			<div class="col-12">
				<input class="form-control form-control-sm" name="addressDetails" required>
			</div>
		</div>

		<div class="row mt-2">
			<button class="btn btn-primary mx-auto">회원가입</button>
		</div>
		
	</form>
</div>

<!-- 주소 검색 api -->
<script src="//d1p7wdleee1q2z.cloudfront.net/post/search.min.js"></script>

<script>
	var registFn = {
		
		init : function() {
			this.connEvt();
		},
		connEvt : function() {
			var 	$registFrm = $("#registFrm")
				,	$frmRows = $registFrm.children(".row");
			
			$frmRows.eq(0).on("click", "a", $.proxy(this.idChkBtnClick, this))
										.on("keydown", "input", function(e) {
											if(e.target.readOnly){ // readonly일 경우 true
									            if(e.keyCode == 8){
									                return false;
									           }
									        }
										});
			
			$frmRows.eq(1).on("keyup", "input", this.pwChkKeyUp);
			
			$frmRows.eq(3)	.on("keydown", "input", this.phoneKeydown);

			
			$frmRows.eq(5).on("keydown", "[readonly='readonly']", function(e) {
	            if(e.keyCode == 8){
	                return false;
	           }
			}).find("a").postcodifyPopUp();
			
			$frmRows.eq(6).on("click", "button", this.registBtnClick);
			
		},
		phoneKeydown : function(e) {
			var 	$this = $(e.target)
				,	vali = false;	
			
			if ( e.keyCode > 47 && e.keyCode < 58 ) {
				if ($this.val().length > 3 ) {
					console.log("안됨1")
					vali = false;
				} else {
					console.log("됨1")
					vali =true;
				}	
			} else {
				if ( e.keyCode === 9 || e.keyCode === 8 ) {
					console.log("됨2")
					vali = true;
				} else {
					console.log("안됨2")
					vali = false;
				}												
			}
			
			return vali;
		},
		idChkBtnClick : function(e) {
			var 	$this = $(e.target)
				,	$row = $this.closest(".row")
				,	$registId = $row.find("input");

				if ( $registId.prop("readonly") ) {
					$this.text("중복확인");
					$registId.prop("readonly", false).val("");
					
				} else {
					if ( !$registId.val() ) {
						alert("아이디를 입력하세요");				
					} else {
						this.idChkFn($registId);
					}
				}
				
		},
		idChkFn : function($registId) {
			$.ajax({
				url : 'registIdChk.do',
				type : 'get',
				data : {	"registId" : $registId.val()	},
				dataType : "json",
				contentType : "application/json; charset=UTF-8;",
				success : function(data) {
					if (data.useYn) {
						if (confirm("사용가능한 아이디 입니다. \n 아이디를 사용하시겠습니까?")) {
							$registId	.prop("readonly", true)
											.closest(".row")
											.find("a")
											.text("다시선택")
											.addClass("completeChk");							
						} else {
							$registId.val("").focus();
						}
					} else {
						alert("아이디가 이미 존재합니다.");
						$registId.val("").focus();
					}
				}
			}); // ajax 종료
		},
		pwChkKeyUp : function(e) {
			var 	$this = $(e.target)
				,	$row = $this.closest(".row")
				,	$pwChk = $row.find(".pwChk")
				,	$registPws = $row.find("input");

			if ( !$registPws.eq(0).val() ) {
				$pwChk	.removeClass("chkPw")
								.addClass("unChkPw")
								.text("비밀번호를 입력해주세요.");
			} else {
				if ( $registPws.eq(0).val() === $registPws.eq(1).val() ) {
					$pwChk	.removeClass("unChkPw")
									.addClass("chkPw")
									.text("비밀번호가 일치합니다.");
				} else {
					$pwChk	.removeClass("chkPw")
									.addClass("unChkPw")
									.text("비밀번호가 불일치합니다.");
				}
			}
		},
		registBtnClick : function(e) {
			var 	$this = $(e.target)
				,	$registFrm = $this.closest("form")
				,	$frmRows = $registFrm.children(".row");
			
			if ( $frmRows.eq(0).find("input").prop("readonly") ) {
				if ( $frmRows.eq(1).find(".pwChk").hasClass("chkPw") ) {
					$registFrm.attr("action", "regist.do");
					return true;
				} else {
					alert("비밀번호 불일치");
					return false;
				}
			} else {
					alert("중복확인 필요");
					return false;
			}
		},
	}

	registFn.init();
</script>

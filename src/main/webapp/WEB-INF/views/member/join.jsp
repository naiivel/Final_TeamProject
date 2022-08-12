<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../common/header.jsp" %>
<section class="container">
	<div class="row">
		<div class="col-2"></div>
		<div class="col-8">
			<form action="" method="">
				<label for="id" class="form-label">아이디</label>
				<div class="input-group mb-3">
					<input type="text" class="form-control" id="id" placeholder="">
					<button class="btn btn-outline-secondary" type="button" id="button-addon2">중복확인</button>
				</div>
				<div class="mb-3">
					<label for="password" class="form-label">비밀번호</label>
					<input type="password" class="form-control" id="password" placeholder="">
				</div>
				<div class="mb-3">
					<label for="password2" class="form-label">비밀번호 확인</label>
					<input type="password" class="form-control" id="password2" placeholder="">
				</div>
				<div class="row">
					<div class="col-md-6 mb-3">
						<label for="name" class="form-label">이름</label>
						<input type="text" class="form-control" id="name" placeholder="">
					</div>
					<div class="col-md-6 mb-3">
						<div>
							<label for="gender" class="form-label">성별</label>
						</div>
						<div class="pt-1">
							<div class="form-check form-check-inline">
								<input class="form-check-input" type="radio" name="gender" id="male" value="male">
								<label class="form-check-label" for="male">남성</label>
							</div>
							<div class="form-check form-check-inline">
								<input class="form-check-input" type="radio" name="gender" id="female" value="female">
								<label class="form-check-label" for="female">여성</label>
							</div>
						</div>
					</div>
				</div>
				<div class="mb-3">
					<label for="birth" class="form-label">생년월일</label>
					<input type="date" class="form-control" id="birth" placeholder="">
				</div>
				<div class="mb-3">
					<label for="phone" class="form-label">핸드폰</label>
					<input type="text" class="form-control" id="phone" placeholder="">
				</div>
				<div class="mb-3">
					<label for="addr" class="form-label">주소</label>
					<div class="input-group mb-2">
						<input type="text" class="form-control" id="sample6_address" placeholder="주소">
						<input type="button" class="btn btn-outline-secondary" onclick="sample6_execDaumPostcode()"
							value="주소 찾기">
					</div>
					<div class="row g-3">
						<div class="col-md-8">
							<input type="text" class="form-control" id="sample6_detailAddress" placeholder="상세주소">
						</div>
						<div class="col-md-4">
							<input type="text" class="form-control" id="sample6_postcode" placeholder="우편번호">
						</div>
					</div>
				</div>
				<div class="mb-3">
					<label for="email" class="form-label">이메일</label>
					<input type="text" class="form-control" id="email" placeholder="">
				</div>
			</form>
		</div>
		<div class="col-2"></div>
	</div>
	<div class="text-center">
		<button class="btn btn-secondary">가입하기</button>
		<button class="btn btn-secondary">가입취소</button>
		</div>
</section>
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script>
	function sample6_execDaumPostcode() {
		new daum.Postcode({
			oncomplete: function (data) {
				var addr = ''; // 주소 변수
				var extraAddr = ''; // 참고항목 변수
				if (data.userSelectedType === 'R') {
					addr = data.roadAddress;
				} else {
					addr = data.jibunAddress;
				}
				document.getElementById('sample6_postcode').value = data.zonecode;
				document.getElementById("sample6_address").value = addr;
				document.getElementById("sample6_detailAddress").focus();
			}
		}).open();
	}
</script>
<%@ include file="../common/footer.jsp" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../common/header.jsp" %>
<section class="container">
	<div class="row mb-5">
		<div class="col-2"></div>
		<div class="col-8">
			<form action="joinPost" method="post">
				<label for="id" class="form-label">아이디</label>
				<div class="input-group mb-3">
					<input type="text" class="form-control" value="${writeInfo.member_id}" name="member_id"
						id="member_id" placeholder="">
					<button class="btn btn-outline-secondary" type="button" id="reduplication_check">중복확인</button>
					<input type="hidden" name="reduCkConfirm" id="reduCkConfirm" value="N" />
				</div>
				<div class="mb-3">
					<label for="password" class="form-label">비밀번호</label>
					<input type="password" class="form-control" name="member_pw" id="member_pw" placeholder="">
				</div>
				<div class="mb-3">
					<label for="password2" class="form-label">비밀번호 확인</label>
					<font id="confirm" size="2"></font>
					<input type="password" class="form-control" name="passwordCheck" id="passwordCheck" placeholder="">
				</div>
				<div class="row">
					<div class="col-md-6 mb-3">
						<label for="name" class="form-label">이름</label>
						<input type="text" class="form-control" value="${writeInfo.member_name}" name="member_name"
							id="name" placeholder="">
					</div>
					<div class="col-md-6 mb-3">
						<div>
							<label for="gender" class="form-label">성별</label>
						</div>
						<div class="pt-1">
							<div class="form-check form-check-inline">
								<input class="form-check-input" type="radio" name="member_gender" id="male"
									value="male">
								<label class="form-check-label" for="male">남성</label>
							</div>
							<div class="form-check form-check-inline">
								<input class="form-check-input" type="radio" name="member_gender" id="female"
									value="female">
								<label class="form-check-label" for="female">여성</label>
							</div>
						</div>
					</div>
				</div>
				<div class="mb-3">
					<label for="birth" class="form-label">생년월일</label>
					<input type="date" class="form-control" value="${writeInfo.member_birth}" name="member_birth"
						id="birth" placeholder="">
				</div>
				<div class="mb-3">
					<label for="phone" class="form-label">핸드폰</label>
					<input type="text" class="form-control" value="${writeInfo.member_phone}" name="member_phone"
						placeholder="">
				</div>
				<div class="mb-3">
					<label for="addr" class="form-label">주소</label>
					<div class="input-group mb-2">
						<input type="text" class="form-control" id="sample6_address" name="member_address"
							placeholder="주소">
						<input type="button" class="btn btn-outline-secondary" onclick="sample6_execDaumPostcode()"
							value="주소 찾기">
					</div>
					<div class="row g-3">
						<div class="col-md-8">
							<input type="text" class="form-control" name="member_address_detail"
								id="sample6_detailAddress" placeholder="상세주소">
						</div>
						<div class="col-md-4">
							<input type="text" class="form-control" id="sample6_postcode" placeholder="우편번호">
						</div>
					</div>
				</div>
				<div class="mb-3">
					<label for="email" class="form-label">이메일</label>
					<input type="text" class="form-control" value="${writeInfo.member_email}" name="member_email"
						placeholder="">
				</div>
				<div class="text-center">
					<button class="btn btn-secondary">가입하기</button>
					<button class="btn btn-secondary">가입취소</button>
				</div>
			</form>
		</div>
		<div class="col-2"></div>
	</div>
	<div class="text-center mb-5">
		<button class="btn btn-secondary">가입하기</button>
		<button class="btn btn-secondary">가입취소</button>
	</div>
</section>
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script src="https://code.jquery.com/jquery-latest.min.js"></script>
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

	var msg = '${message}';
	if (msg != '') {
		alert(msg);
	}

	$("#reduplication_check").click(function () {
		$.ajax({
			url: "redu_check",
			type: "POST",
			dataType: "json",
			data: { "member_id": $("#member_id").val() },
			success: function (data) {
				if (data == 1) {
					alert("중복된 아이디입니다. 다시 입력해주세요.");
					$("#member_id").val("");
				} else {
					alert("사용가능한 아이디입니다.");
					$("#reduCkConfirm").attr("value", "Y");
				}
			}
		});
	});

	$(function () {
		$('#member_pw').keyup(function () {
			$('#confirm').html('');
		});

		$('#passwordCheck').keyup(function () {
			if ($('#member_pw').val() != $('#passwordCheck').val()) {
				$('#confirm').html('비밀번호 일치하지 않음');
				$('#confirm').attr('color', 'red');
			} else {
				$('#confirm').html('비밀번호 일치함');
				$('#confirm').attr('color', 'blue');
			}
		});

	});


</script>
<%@ include file="../common/footer.jsp" %>
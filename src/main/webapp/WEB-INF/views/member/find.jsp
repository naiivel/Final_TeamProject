<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../common/header.jsp" %>
<section class="container">
	<div class="row">
		<div class="col-md-2">
		</div>
		<div class="col-md-10 mb-5">
			<h2 class="mb-5">아이디/비밀번호 찾기</h2>
			<div class="row">
				<div class="mt-5 col-8 offset-2">
				<div id="sendId">[ 아이디 : ${findMember.member_id}]</div>
				<div id="sendPw">[ 비밀번호 : ${findMember.member_pw}]</div>
				<br/>
					<c:choose>
						<c:when test="${!empty id}">
							<form id="idForm" action="findId" method="post" class="mb-4 text-center">
								<p>E-mail</p>
								<input class="form-control mb-3" id="member_email" name="member_email" type="email" placeholder="인증번호를 받을 이메일을 입력해주세요."/>
								<button class="btn btn-outline-secondary" type="button" id="acceptEmail">이메일 인증</button>
								<div class="result"></div>
								<div id="emailCodeWrap">
									<input type="text" id="emailCode"/>
									<button class="btn btn-outline-secondary" type="button" id="acceptId">인증완료</button>
								</div>
							</form>
						</c:when>
						<c:otherwise>
							<form id="pwForm" action="findPw" method="post" class="mb-4 text-center">
								<label for="id" class="form-label">아이디</label>
								<div class="input-group mb-3">
									<input type="text" class="form-control" name="member_id" id="member_id" placeholder="비밀번호를 찾으실 아이디를 입력해주세요.">
				
									<button class="btn btn-outline-secondary" type="button" id="reduplication_check">아이디 확인</button>
									<input type="hidden" name="reduCkConfirm" id="reduCkConfirm" value="N" />
								</div>
								<div>
								<p>E-mail</p>
								<input class="form-control mb-3" id="member_emails" name="member_email" type="email" placeholder="인증번호를 받을 이메일을 입력해주세요."/>
								<button class="btn btn-outline-secondary" type="button" id="acceptEmail">이메일 인증</button>
								</div>
								<div class="result"></div>
								<div id="emailCodeWrap">
									<input type="text" id="emailCode"/>
									<button class="btn btn-outline-secondary" type="button" id="acceptPw">인증완료</button>
								</div>
							</form>
						</c:otherwise>
					</c:choose>
				</div>
			</div>
		</div>
	</div>
</section>
<script>


	$("#sendId").hide();
	$("#sendPw").hide();

	var msg = '${message}';
	if (msg != '') {
		alert(msg);
	}

	// 아이디 확인 체크
	var idCheck = $('#reduCkConfirm').val();

	// 인증 메일에 발송된 코드 저장
	var emailCode = "";
	$("#acceptEmail").click(function() {
		console.log($("#member_email").val());
		$.ajax({
			type : "GET",
			dataType : "text",
			url : "checkEmail",
			data : {
				member_email : $("#member_email").val()
			},
			success : function(code) {
				console.log(code);
				if (code) {
					emailCode = code;
					alert("메일 발송 완료\n메일을 확인해주세요.");
				} else {
					alert("메일 발송 실패 관리자에게 문의해 주세요.");
				}
			}
		});
	});
	// 인증코드 확인 완료 여부
	var boolEmailCode = false;
	//아이디 인증 코드 검사
	$("#acceptId").click(function() {
		var userCode = $("#emailCode").val();
		if (emailCode == userCode) {
			console.log("일치");
			boolEmailcode = true;
			alert("이메일 인증이 완료 되었습니다.");
			$.ajax({
				url : "findInfo",
				type : "POST",
				dataType : "json",
				data : {
					"member_email" : $("#member_email").val()
				},
				success : function(data) {
					if (data == 1) {
						alert('해당하는 아이디를 찾았습니다.');
						$("#sedId").show();
					} else {
						alert('죄송합니다. 관리자에게 문의해주세요.');
					}
				}
			});
		} else {
			boolEmailCode = false;
			alert("인증코드를 다시 확인해주세요");
		}
	});

	// 인증코드 확인 완료 여부
	var boolEmailCode = false;
	//비밀번호 인증 코드 검사
	$("#acceptPw").click(function() {
		if (idCheck == "" || idCheck == "N") {
			alert('해당하는 아이디는 존재하지 않습니다.');
			$('#member_id').focus();
			return;
		}
		var userCode = $("#emailCode").val();
		if (emailCode == userCode) {
			console.log("일치");
			boolEmailcode = true;
			alert("이메일 인증이 완료 되었습니다.");
			$.ajax({
				url : "findInfo",
				type : "POST",
				dataType : "json",
				data : {
					"member_email" : $("#member_emails").val()
				},
				success : function(data) {
					if (data == 1) {
						alert('해당하는 비밀번호를 찾았습니다.');
						$("#sendId").show();
						$("#sendPw").show();
					} else {
						alert('죄송합니다. 관리자에게 문의해주세요.');
					}
				}
			});
		} else {
			boolEmailCode = false;
			alert("인증코드를 다시 확인해주세요");
		}
	});

	$("#reduplication_check").click(function() {
		$.ajax({
			url : "redu_check",
			type : "POST",
			dataType : "json",
			data : {
				"member_id" : $("#member_id").val()
			},
			success : function(data) {
				if (data == 1) {
					alert("등록된 아이디입니다.");
					$("#reduCkConfirm").attr("value", "Y");
				} else {
					alert("등록되지않은 아이디입니다.");
					$("#member_id").val("");
				}
			}
		});
	});
</script>
<%@ include file="../common/footer.jsp" %>
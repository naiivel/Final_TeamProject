<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../common/header.jsp"%>
<section class="container">
	<div class="row">
		<div class="col-md-2"></div>
		<div class="col-md-10 mb-5">
			<h2 class="mb-5">아이디/비밀번호 찾기</h2>
			<div class="row">
				<div class="mt-5 col-8 offset-2">
					<c:choose>
						<c:when test="${!empty id}">
							<div class="input-group mb-3">
								<div class="input-group-prepend">
									<span class="input-group-text" id="basic-addon1">아이디</span>
								</div>
								<input type="text" class="form-control"
									placeholder="찾으신 아이디가 출력됩니다." aria-label="Username"
									aria-describedby="basic-addon1" id="sendIds" readonly />
							</div>
							<form id="idForm" action="findId" method="post"
								class="mb-4 text-center">
								<p>E-mail</p>
								<input class="form-control mb-3" id="member_email"
									name="member_email" type="email"
									placeholder="인증번호를 받을 이메일을 입력해주세요." />
								<button class="btn btn-outline-secondary" type="button"
									id="acceptEmail">이메일 인증</button>
								<div class="result"></div>
								<div id="emailCodeWrap">
									<input type="text" id="emailCode" />
									<button class="btn btn-outline-secondary" type="button"
										id="acceptId">인증완료</button>
								</div>
							</form>
						</c:when>
						<c:otherwise>
							<div class="input-group mb-3">
								<div class="input-group-prepend">
									<span class="input-group-text" id="basic-addon1">아이디</span>
								</div>
								<input type="text" class="form-control"
									placeholder="찾으신 아이디가 출력됩니다." aria-label="Username" id="sendId"
									aria-describedby="basic-addon1" readonly />
							</div>
							<div class="input-group mb-3">
								<div class="input-group-prepend">
									<span class="input-group-text" id="basic-addon1">비밀번호</span>
								</div>
								<input type="text" class="form-control"
									placeholder="찾으신 비밀번호가 출력됩니다." aria-label="Username"
									id="sendPw" aria-describedby="basic-addon1" readonly />
							</div>
							<form id="pwForm" action="findPw" method="post"
								class="mb-4 text-center">
								<label for="id" class="form-label">아이디</label>
								<div class="input-group mb-3">
									<input type="text" class="form-control" name="member_id"
										id="member_id" placeholder="비밀번호를 찾으실 아이디를 입력해주세요.">

									<button class="btn btn-outline-secondary" type="button"
										id="reduplication_check">아이디 확인</button>
									<input type="hidden" name="reduCkConfirm" id="reduCkConfirm"
										value="N" />
								</div>
								<div>
									<p>E-mail</p>
									<input class="form-control mb-3" id="member_emails"
										name="member_email" type="email"
										placeholder="인증번호를 받을 이메일을 입력해주세요." />
									<button class="btn btn-outline-secondary" type="button"
										id="acceptEmails">이메일 인증</button>
								</div>
								<div class="result"></div>
								<div id="emailCodeWrap">
									<input type="text" id="emailCode" />
									<button class="btn btn-outline-secondary" type="button"
										id="acceptPw">인증완료</button>
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



	var msg = '${message}';
	if (msg != '') {
		alert(msg);
	}
	

	// 아이디 확인 체크
	var idCheck = $('#reduCkConfirm').val();
	
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

	// 인증 메일에 발송된 코드 저장
	// 아이디 찾기용
	var emailCode = "";
	$("#acceptEmail").click(function() {
		if($("#member_email").val() == "" || 
				$("#member_email").val() == undefined || 
				$("#member_email").val() == null){
			alert('이메일을 입력해주세요');
			return;
		}
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
		if(emailCode == "" || 
				emailCode == undefined || 
				emailCode == null){
			alert('코드가 송신되지않았습니다.이메일 인증을 진행해주세요.');
			return;
		}
		var userCode = $("#emailCode").val();
		if (emailCode == userCode) {
			console.log("일치");
			alert("이메일 인증이 완료 되었습니다.");
			$.ajax({
				url : "findInfo",
				type : "POST",
				dataType : "json",
				data : {
					"member_email" : $("#member_email").val()
				},
				success : function(data) {
					if (data) {
						alert('해당하는 아이디를 찾았습니다.');
						$("#sendIds").attr("value",data.member_id);
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
	
	// 인증 메일에 발송된 코드 저장
	// 비밀번호 찾기용
	var emailCode = "";
	$("#acceptEmails").click(function() {
		if($("#member_emails").val() == "" || 
				$("#member_emails").val() == undefined || 
				$("#member_emails").val() == null){
			alert('이메일을 입력해주세요');
			return;
		}
		$.ajax({
			type : "GET",
			dataType : "text",
			url : "checkEmail",
			data : {
				member_email : $("#member_emails").val()
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
	console.log($("#member_emails").val());
	console.log(idCheck);
	console.log($("#reduCkConfirm").val());
	//비밀번호 인증 코드 검사
	$("#acceptPw").click(function() {
		if(emailCode == "" || 
				emailCode == undefined || 
				emailCode == null){
			alert('코드가 송신되지않았습니다.이메일 인증을 진행해주세요.');
			return;
		}
		if ($("#reduCkConfirm") == "N") {
			alert('해당하는 아이디는 존재하지 않습니다.');
			$('#member_id').focus();
			return;
		}
		var userCode = $("#emailCode").val();
		if (emailCode == userCode) {
			console.log("일치");
			alert("이메일 인증이 완료 되었습니다.");
			$.ajax({
				url : "findInfo",
				type : "POST",
				dataType : "json",
				data : {
					"member_email" : $("#member_emails").val()
				},
				success : function(data) {
					if (data) {
						alert('해당하는 비밀번호를 찾았습니다.');
						console.log(data);
						$("#sendId").attr("value",data.member_id);
						$("#sendPw").attr("value",data.member_pw);
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

</script>
<%@ include file="../common/footer.jsp" %>
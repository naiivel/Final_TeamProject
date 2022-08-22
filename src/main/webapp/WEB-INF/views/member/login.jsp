<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../common/header.jsp" %>
<c:if test="${not empty cookie.id}">
	<c:set value="checked" var="checked"/>
	<c:set value="${cookie.id.value}" var="id"/>
</c:if>
<section class="container">
	<div class="row mb-5">
		<div class="col-2"></div>
		<div class="col-8">
			<div class="row">
				<h2 class="mb-5">대탈출</h2>
				<form action="loginPost" method="post">
					<div class="row">
						<div class="col-md-9">
							<input type="text" class="form-control mb-3" name="member_id" placeholder="id" value="${id}"/>
							<input type="password" class="form-control" name="member_pw" placeholder="password"/>
						</div>
						<div class="col-md-3">
							
							<button id="loginBtn" class="btn btn btn-secondary w-100 h-100">로그인</button>
						</div>
						<div class="form-check m-3">
							<input class="form-check-input" type="checkbox" value="checked" name="remember_id" id="remember_id" ${checked}>
							<label class="form-check-label" for="flexCheckDefault">
								아이디 저장
							</label>
						</div>
					</div>
				</form>
			</div>
		</div>
		<div class="col-2"></div>
	</div>
	<div class="row ">
		<div class="col-3"></div>
		<div class="col-6 text-center">
			<button id="joinBtn" type="button" class="btn btn-secondary">회원가입</button>
			<button type="button" class="btn btn-secondary">아이디 찾기</button>
			<button type="button" class="btn btn-secondary">비밀번호 찾기</button>
			<button id="rev_check" type="button" class="btn btn-secondary">비회원 예약확인</button>

		</div>
		<div class="col-3"></div>
	</div>
</section>
<script>
	document.querySelector('#joinBtn').addEventListener('click', () => {
		location.href = 'join';
	});
	
	var msg = '${message}';
	if(msg != ''){
		alert(msg);
	}
	
	$("#rev_check").click(function(){
		location.href = 'rev_check';
	});
	
	$("#loginBtn").click(function(){
		var remember_id = $("#remember_id").is(':checked')
	});
	 
</script>
<%@ include file="../common/footer.jsp" %>
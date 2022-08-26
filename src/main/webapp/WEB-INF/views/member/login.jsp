<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../common/header.jsp" %>
<c:if test="${not empty cookie.id}">
	<c:set value="checked" var="checked" />
	<c:set value="${cookie.id.value}" var="id" />
</c:if>
<section class="container d-flex flex-column justify-content-center align-items-center h-100">
	<div class="row">
		<h3 class="mb-3">로그인</h3>
		<form action="loginPost" method="post">
			<div class="row">
				<div class="col-md-9">
					<input type="text" class="form-control mb-3" name="member_id" placeholder="id" value="${id}" />
					<input type="password" class="form-control" name="member_pw" placeholder="password" />
				</div>
				<div class="col-md-3">
<<<<<<< HEAD

					<button id="loginBtn" class="btn btn btn-primary w-100 h-100">로그인</button>
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
<<<<<<< Updated upstream
	<div class="row ">
		<div class="col-3"></div>
		<div class="col-6 text-center">
			<button id="joinBtn" type="button" class="btn btn-secondary">회원가입</button>
			<button id="idFinder" type="button" class="btn btn-secondary">아이디 찾기</button>
			<button id="pwFinder" type="button" class="btn btn-secondary">비밀번호 찾기</button>
			<button id="rev_check" type="button" class="btn btn-secondary">비회원 예약확인</button>
=======
>>>>>>> refs/heads/main

<<<<<<< HEAD
		</div>
		<div class="col-3"></div>
=======
	<div>
		<button id="joinBtn" type="button" class="btn btn-primary">회원가입</button>
		<button id="idFinder" type="button" class="btn btn-primary">아이디 찾기</button>
		<button id="pwFinder" type="button" class="btn btn-primary">비밀번호 찾기</button>
		<button id="rev_check" type="button" class="btn btn-primary">비회원 예약확인</button>
>>>>>>> Stashed changes
=======
					<button id="loginBtn" class="btn btn btn-primary w-100 h-100">로그인</button>
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
	<div>
		<button id="joinBtn" type="button" class="btn btn-primary">회원가입</button>
		<button id="idFinder" type="button" class="btn btn-primary">아이디 찾기</button>
		<button id="pwFinder" type="button" class="btn btn-primary">비밀번호 찾기</button>
		<button id="rev_check" type="button" class="btn btn-primary">비회원 예약확인</button>
>>>>>>> refs/heads/main
	</div>
</section>
<script>
	document.querySelector('#joinBtn').addEventListener('click', () => {
		location.href = 'join';
	});

	var msg = '${message}';
	if (msg != '') {
		alert(msg);
	}
<<<<<<< HEAD
<<<<<<< Updated upstream
	
	$("#rev_check").click(function(){
=======

	$("#rev_check").click(function () {
>>>>>>> refs/heads/main
		location.href = 'rev_check';
	});

	$("#idFinder").click(function () {
		location.href = 'id_find';
	});

	$("#pwFinder").click(function () {
		location.href = 'pw_find';
	});
<<<<<<< HEAD
	
	$("#loginBtn").click(function(){
=======

	$("#rev_check").click(function () {
		location.href = 'rev_check';
	});

	$("#idFinder").click(function () {
		location.href = 'id_find';
	});

	$("#pwFinder").click(function () {
		location.href = 'pw_find';
	});

	$("#loginBtn").click(function () {
>>>>>>> Stashed changes
=======

	$("#loginBtn").click(function () {
>>>>>>> refs/heads/main
		var remember_id = $("#remember_id").is(':checked')
	});

</script>
<%@ include file="../common/footer.jsp" %>
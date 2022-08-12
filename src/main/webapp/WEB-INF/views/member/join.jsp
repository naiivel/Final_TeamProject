<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../common/header.jsp" %>
<section class="container">
	<div class="row">
		<div class="col-2"></div>
		<div class="col-8">
			<form action="" method="">
				<div class="mb-3">
					<label for="id" class="form-label">아이디</label>
					<input type="text" class="form-control" id="id" placeholder="">
				</div>
				<div class="mb-3">
					<label for="password" class="form-label">비밀번호</label>
					<input type="password" class="form-control" id="password" placeholder="">
				</div>
				<div class="mb-3">
					<label for="password2" class="form-label">비밀번호 확인</label>
					<input type="password" class="form-control" id="password2" placeholder="">
				</div>
				<div class="mb-3">
					<label for="name" class="form-label">이름</label>
					<input type="text" class="form-control" id="name" placeholder="">
				</div>
				<div class="mb-3">
					<label for="gender" class="form-label">성별</label>
					<input type="text" class="form-control" id="gender" placeholder="">
				</div>
				<div class="mb-3">
					<label for="birth" class="form-label">생년월일</label>
					<input type="text" class="form-control" id="birth" placeholder="">
				</div>
				<div class="mb-3">
					<label for="phone" class="form-label">핸드폰</label>
					<input type="text" class="form-control" id="phone" placeholder="">
				</div>
				<div class="mb-3">
					<label for="addr" class="form-label">주소</label>
					<input type="text" class="form-control" id="addr" placeholder="">
				</div>
				<div class="mb-3">
					<label for="email" class="form-label">이메일</label>
					<input type="text" class="form-control" id="email" placeholder="">
				</div>
			</form>
		</div>
		<div class="col-2"></div>
	</div>
</section>
<%@ include file="../common/footer.jsp" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../common/header.jsp" %>
<section class="container">
	<div class="row">
		<div class="col-md-2">
			<div class="card mb-3">
				<div class="card-header">
					마이 페이지
				</div>
				<div class="list-group list-group-flush">
					<a href="${contextPath}/member/info" class="list-group-item">예약내역 확인</a>
					<a href="${contextPath}/member/edit" class="list-group-item active">정보수정/탈퇴</a>
				</div>
			</div>
		</div>
		<div class="col-md-10 mb-5">
			<h2 class="mb-4">정보수정/탈퇴</h2>
			<div class="row">
				<div class="col-10 offset-1">
					<form action="editPost" method="post">
						<div class="mb-3">
							<label for="id" class="form-label">아이디</label>
							<input type="text" class="form-control" name="member_id" id="id" placeholder="">
						</div>
						<div class="mb-3">
							<label for="password" class="form-label">비밀번호</label>
							<input type="password" class="form-control" name="member_pw" placeholder="">
						</div>
						<div class="mb-3">
							<label for="password2" class="form-label">비밀번호 확인</label>
							<input type="password" class="form-control" id="passwordCheck" placeholder="">
						</div>
						<div class="row">
							<div class="col-md-6 mb-3">
								<label for="name" class="form-label">이름</label>
								<input type="text" class="form-control" name="member_name" id="name" placeholder="">
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
							<input type="date" class="form-control" name="member_birth" id="birth" placeholder="">
						</div>
						<div class="mb-3">
							<label for="phone" class="form-label">핸드폰</label>
							<input type="text" class="form-control" name="member_phone" placeholder="">
						</div>
						<div class="mb-3">
							<label for="addr" class="form-label">주소</label>
							<div class="input-group mb-2">
								<input type="text" class="form-control" id="sample6_address" name="member_address"
									placeholder="주소">
								<input type="button" class="btn btn-outline-secondary"
									onclick="sample6_execDaumPostcode()" value="주소 찾기">
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
							<input type="text" class="form-control" name="member_email" placeholder="">
						</div>
					</form>
				</div>
			</div>
			<div class="text-center mb-5">
				<button class="btn btn-secondary">수정완료</button>
				<button class="btn btn-secondary">회원탈퇴</button>
			</div>
		</div>
	</div>
</section>
<%@ include file="../common/footer.jsp" %>
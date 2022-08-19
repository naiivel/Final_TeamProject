<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../common/header.jsp" %>
<section class="container">
	<div class="row">
		<div class="col-md-2">
			<div class="card mb-3">
				<div class="card-header">
					관리자 페이지
				</div>
				<div class="list-group list-group-flush">
					<a href="${contextPath}/board/service" class="list-group-item active">회원/관리자 목록</a>
					<a href="${contextPath}/board/service2" class="list-group-item">매출 관리</a>
					<a href="${contextPath}/board/service3" class="list-group-item">상품 관리</a>
				</div>
			</div>
		</div>
		<div class="col-md-10">
			<h2 class="mb-5">관리자 계정 생성 </h2>
			<div class="table-responsive col-11">
				<form action="">
					<table class="table table-borderless">
						<tbody>
							<tr>
								<th>아이디</th>
								<td><input type="text" name="" id="" class="form-control"></td>
							</tr>
							<tr>
								<th>비밀번호</th>
								<td><input type="password" name="" id="" class="form-control"></td>
							</tr>
							<tr>
								<th>비밀번호 확인</th>
								<td><input type="password" name="" id="" class="form-control"></td>
							</tr>
							<tr>
								<th>이름</th>
								<td><input type="text" name="" id="" class="form-control"></td>
							</tr>
							<tr>
								<th>휴대폰</th>
								<td><input type="text" name="" id="" class="form-control"></td>
							</tr>
							<tr>
								<th>이메일</th>
								<td><input type="text" name="" id="" class="form-control"></td>
							</tr>
						</tbody>
					</table>
				</form>
				<div class="mb-4 text-end">
					<button class="btn btn-outline-secondary" id="addBtn">관리자 계정 추가</button>
				</div>
			</div>
		</div>
</section>
<%@ include file="../common/footer.jsp" %>
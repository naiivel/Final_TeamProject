<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../common/header.jsp" %>
<fmt:formatDate value="${product.product_departure}" var="departure" pattern="yyyy-MM-dd"/>
<fmt:formatDate value="${product.product_arrive}" var="arrive" pattern="yyyy-MM-dd"/>
<section class="container">
	<div class="row mb-5">
		<div class="col-md-2">
			<div class="card mb-3">
				<div class="card-header">
					마이 페이지
				</div>
				<div class="list-group list-group-flush">
					<a href="myPage" class="list-group-item active">예약내역 확인</a>
					<a href="edit_check" class="list-group-item">정보수정/탈퇴</a>
				</div>
			</div>
		</div>
		<div class="col-md-10">
			<h2 class="mb-5">예약 내역 상세 확인</h2>
			<div class="card mb-4">
				<div class="card-header">
					<h3 class="card-title">${product.product_name}</h3>
					<p class="text-end card-text">여행 기간 : ${departure} ~ ${arrive}</p>
				</div>
				<div class="card-body">
					<ul class="list-group list-group-flush">
						<li class="list-group-item text-muted"> 예약자 명 : ${userInfo.member_name}</li>
						<li class="list-group-item"> 연락처 : ${userInfo.member_phone}</li>
						<li class="list-group-item"> 이메일 : ${userInfo.member_email}</li>
					</ul>
				</div>
				<div class="card-body">
					<p class="card-text">항공편 : ${product.product_airplane}</p>
					<p class="card-text">성인 : ${reservation.rev_adult*product.product_adult}원</p>
					<p class="card-text">소인 : ${reservation.rev_minor*product.product_minor}원</p>
					<p class="card-text">${product.product_plan - 1}박 ${product.product_plan}일</p>
					<a href="#" class="card-link">${product.product_country} 대사관</a>
					<p class="card-text">
						<small class="text-muted">작은글씨</small>
					</p>
					<p class="card-text">${tripInfo}</p>
				</div>
				<div class="card-footer">
					<button id="deleteBtn" class="btn btn-outline-secondary">예약 취소</button>
				</div>
			</div>
		</div>
	</div>
</section>
<script>
	$("#deleteBtn").click(function(){
		location.href='deleteProduct';
	});
</script>
<%@ include file="../common/footer.jsp" %>
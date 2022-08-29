<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../common/header.jsp" %>
<section class="container">
	<div class="row mb-5">
		<div class="col-md-2">
			<div class="card mb-3">
				<div class="card-header">
					비회원 예약내역 페이지
				</div>
			</div>
		</div>
		<div class="col-md-10">
			<h2 class="mb-5">예약 내역 상세 확인</h2>
			<div class="card mb-4">
				<div class="card-header">
					<h3 class="card-title">${noproduct.product_name}</h3>
					<p class="text-end card-text">${noproduct.product_departure} ~ ${noproduct.product_arrive}</p>
				</div>
				<div class="card-body">
					<ul class="list-group list-group-flush">
						<li class="list-group-item text-muted"> 예약자 명 : ${noMember.rev_name}</li>
						<li class="list-group-item"> 연락처 : ${noMember.rev_phone}</li>
						<li class="list-group-item"> 이메일 : ${noMember.rev_email}</li>
					</ul>
				</div>
				<div class="card-body">
					<p class="card-text">항공편 : ${noproduct.product_airplane}</p>
					<p class="card-text">성인 : ${noMember.rev_adult*noproduct.product_adult}원</p>
					<p class="card-text">소인 : ${noMember.rev_minor*noproduct.product_minor}원</p>
					<p class="card-text">${noproduct.product_plan - 1}박 ${noproduct.product_plan}일</p>
					<a href="${embassy}" class="card-link">${product.product_country} 대사관</a>
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
		location.href='deleteNoProduct';
	});
</script>
<%@ include file="../common/footer.jsp" %>
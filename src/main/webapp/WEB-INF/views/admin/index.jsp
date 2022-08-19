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
			<h2 class="mb-4">회원/관리자 목록</h2>
			<div class="mb-4">
				<div class="dropdown">
					<a class="btn btn-outline-secondary dropdown-toggle" href="#" role="button"
						data-bs-toggle="dropdown" aria-expanded="false">
						회원 유형
					</a>
					<ul class="dropdown-menu">
						<li><a class="dropdown-item" href="#">전체</a></li>
						<li><a class="dropdown-item" href="#">회원</a></li>
						<li><a class="dropdown-item" href="#">관리자</a></li>
					</ul>
				</div>
			</div>
			<div class="table-responsive">
				<table class="table">
					<thead>
						<tr>
							<th>필요한</th>
							<th>단락을</th>
							<th>추가하여</th>
							<th>사용하세요</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td>temp</td>
							<td>temp</td>
							<td>temp</td>
							<td>temp</td>
						</tr>
					</tbody>
				</table>
			</div>
			<nav aria-label="Page navigation mb-3">
				<ul class="pagination justify-content-center">
					<li class="page-item disabled">
						<a class="page-link">Previous</a>
					</li>
					<li class="page-item"><a class="page-link" href="#">1</a></li>
					<li class="page-item"><a class="page-link" href="#">2</a></li>
					<li class="page-item"><a class="page-link" href="#">3</a></li>
					<li class="page-item">
						<a class="page-link" href="#">Next</a>
					</li>
				</ul>
			</nav>
			<div class="mb-4 text-end">
				<button class="btn btn-outline-secondary" id="addBtn">관리자 계정 추가</button>
			</div>
		</div>
	</div>
</section>
<script src="${contextPath}/resources/js/popper.min.js"></script>
<script>
	document.querySelector("#addBtn").addEventListener("click", function () {
		location.href = "${contextPath}/board/service/new";
	});
</script>
<%@ include file="../common/footer.jsp" %>
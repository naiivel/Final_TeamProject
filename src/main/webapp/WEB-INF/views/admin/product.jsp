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
					<a href="${contextPath}/member/adminPage" class="list-group-item">회원/관리자 목록</a>
					<a href="${contextPath}/member/sales" class="list-group-item">매출 관리</a>
					<a href="${contextPath}/member/control" class="list-group-item active">상품 관리</a>
				</div>
			</div>
		</div>
		<div class="col-md-10 mb-5">
			<h2 class="mb-5">상품 내역</h2>
			<div class="mb-4">
				<div class="dropdown">
					<a class="btn btn-outline-secondary dropdown-toggle" href="#" role="button"
						data-bs-toggle="dropdown" aria-expanded="false">
						지역 선택
					</a>
					<ul class="dropdown-menu">
						<li><a class="dropdown-item" href="${contextPath}/member/control">전체</a></li>
						<li><a class="dropdown-item" href="${contextPath}/member/control?continent=아시아">아시아</a></li>
						<li><a class="dropdown-item" href="${contextPath}/member/control?continent=유럽">유럽</a></li>
						<li><a class="dropdown-item" href="${contextPath}/member/control?continent=아메리카">아메리카</a></li>
						<li><a class="dropdown-item" href="${contextPath}/member/control?continent=오세아니아">오세아니아</a></li>
					</ul>
				</div>
			</div>
			<div class="table-responsive">
				<table class="table">
					<thead>
						<tr>
							<th>대륙</th>
							<th>상품명</th>
							<th>잔여좌석</th>
							<th>관리</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach items="${list}" var="product">
							<tr>
								<td>${product.product_continent}</td>
								<td>${product.product_name}</td>
								<td>${product.product_seat}/15</td>
								<td>
									<div class="form-check">
										<input class="form-check-input" type="checkbox" value="${product.product_num}"
											id="flexCheckDefault"> <label
											class="form-check-label" for="flexCheckDefault">
										</label>
									</div>
								</td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
			</div>
			<nav aria-label="Page navigation mb-3">
				<ul class="pagination justify-content-center">
					<c:if test="${pm.prev}">
								<li class="page-item"><a class="page-link" href="${pm.startPage - 1}">&laquo;</a></li>
								<li class="page-item"><a class="page-link" href="1">1</a></li>
								<li class="page-item"><span>...</span></li>
							</c:if>
							<c:forEach begin="${pm.startPage}" end="${pm.endPage}" var="idx">
								<li class="page-item" ${pm.cri.page == idx ? ' class=active' : ''}>
									<a class="page-link" href="${idx}">${idx}</a>
								</li>
							</c:forEach>
							<c:if test="${pm.next}">
								<li class="page-item"><span>...</span></li>
								<li class="page-item"><a class="page-link" href="${pm.maxPage}">${pm.maxPage}</a></li>
								<li class="page-item"><a class="page-link" href="${pm.endPage + 1}">&raquo;</a></li>
							</c:if>
				</ul>
			</nav>
			<div class="mb-4 text-end">
				<button class="btn btn-outline-secondary">삭제</button>
			</div>
		</div>
	</div>
</section>
<form id="jobForm">
	<input type="hidden" name="page" value="${pm.cri.page}" /> <input
		type="hidden" name="perPageNum" value="${pm.cri.perPageNum}" />
</form>
<script src="${contextPath}/resources/js/popper.min.js"></script>
<script>
	document.querySelector("#addBtn").addEventListener("click", function() {
		location.href = "createAdmin";
	});

	$(".pagination li a").on("click", function(event) {
		event.preventDefault();
		// page
		var targetPage = $(this).attr("href");

		var jobForm = $("#jobForm");

		jobForm.find("[name='page']").val(targetPage);
		jobForm.attr("action", "control").attr("method", "GET");
		jobForm.submit();
	});
</script>
<%@ include file="../common/footer.jsp" %>
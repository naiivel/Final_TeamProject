<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../common/header.jsp" %>
<section class="container">
	<div class="row">
		<div class="col-md-2">
			<div class="card mb-3">
				<div class="card-header">
					<h3 class="card-title text-center m-0">아시아</h3>
				</div>
				<div class="accordion" id="accordionPanelsStayOpenExample">
					<div class="accordion-item">
						<h4 class="accordion-header" id="panelsStayOpen-headingOne">
							<button class="accordion-button" type="button" data-bs-toggle="collapse"
								data-bs-target="#panelsStayOpen-collapseOne" aria-expanded="true"
								aria-controls="panelsStayOpen-collapseOne">
								중국
							</button>
						</h4>
						<div id="panelsStayOpen-collapseOne" class="accordion-collapse collapse show"
							aria-labelledby="panelsStayOpen-headingOne">
							<div class="accordion-body">
								베이징
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="col-md-10 mb-5">
			<h2 class="mb-4">질문과 답변</h2>
			<div class="mb-4">
				<div class="dropdown">
					<a class="btn btn-outline-secondary dropdown-toggle" href="#" role="button"
						data-bs-toggle="dropdown" aria-expanded="false">
						보기
					</a>

					<ul class="dropdown-menu">
						<li><a class="dropdown-item" href="#">전체</a></li>
						<li><a class="dropdown-item" href="#">확인 중</a></li>
						<li><a class="dropdown-item" href="#">답변 완료</a></li>
					</ul>
				</div>
			</div>
			<div class="table-responsive">
				<table class="table">
					<thead>
						<tr>
							<th>번호</th>
							<th>제목</th>
							<th>글쓴이</th>
							<th>등록일</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td>임시</td>
							<td><a href="${contextPath}/board/service/show">임시</a></td>
							<td>임시</td>
							<td>임시</td>
						</tr>
						<tr>
							<td>임시</td>
							<td>임시</td>
							<td>임시</td>
							<td>임시</td>
						</tr>
						<tr>
							<td>임시</td>
							<td>임시</td>
							<td>임시</td>
							<td>임시</td>
						</tr>
						<tr>
							<td>임시</td>
							<td>임시</td>
							<td>임시</td>
							<td>임시</td>
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
				<button class="btn btn-outline-secondary" id="addBtn">글쓰기</button>
				<button class="btn btn-outline-secondary">나의 질문</button>
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
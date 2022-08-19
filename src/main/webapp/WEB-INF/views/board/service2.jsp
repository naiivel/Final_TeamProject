<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../common/header.jsp" %>
<section class="container">
	<div class="row">
		<div class="col-md-2">
			<div class="card mb-3">
				<div class="card-header">
					고객센터
				</div>
				<div class="list-group list-group-flush">
					<a href="${contextPath}/board/service" class="list-group-item">질문과 답변</a>
					<a href="${contextPath}/board/service2" class="list-group-item active">자주 묻는 질문</a>
					<a href="${contextPath}/board/service3" class="list-group-item">공지사항</a>
				</div>
			</div>
		</div>
		<div class="col-md-10 mb-5">
			<h2 class="mb-4">자주 묻는 질문</h2>
			<div class="row mb-4">
				<div class="col-8 offset-2">
					<form action="">
						<div class="input-group">
							<span class="input-group-text"><svg xmlns="http://www.w3.org/2000/svg" width="16"
									height="16" fill="currentColor" class="bi bi-search" viewBox="0 0 16 16">
									<path
										d="M11.742 10.344a6.5 6.5 0 1 0-1.397 1.398h-.001c.03.04.062.078.098.115l3.85 3.85a1 1 0 0 0 1.415-1.414l-3.85-3.85a1.007 1.007 0 0 0-.115-.1zM12 6.5a5.5 5.5 0 1 1-11 0 5.5 5.5 0 0 1 11 0z" />
								</svg>
							</span>
							<input type="text" class="form-control" aria-label="Amount (to the nearest dollar)">
							<span class="input-group-text">검색</span>
						</div>
					</form>
				</div>
			</div>
			<div class="row mb-4">
				<div class="row col-10 offset-1 align-items-center">
					<div class="btn col-sm">해외여행</div>
					<div class="btn col-sm">항공</div>
					<div class="btn col-sm">예약 결제</div>
					<div class="btn col-sm">여권/비자/환전</div>
					<div class="btn col-sm">홈페이지/기타</div>
				</div>
			</div>
			<div class="accordion mb-3" id="accordionPanelsStayOpenExample">
				<div class="accordion-item">
					<h2 class="accordion-header" id="panelsStayOpen-headingOne">
						<button class="accordion-button" type="button" data-bs-toggle="collapse"
							data-bs-target="#panelsStayOpen-collapseOne" aria-expanded="true"
							aria-controls="panelsStayOpen-collapseOne">
							질문 #1
						</button>
					</h2>
					<div id="panelsStayOpen-collapseOne" class="accordion-collapse collapse show"
						aria-labelledby="panelsStayOpen-headingOne">
						<div class="accordion-body">
							내용
						</div>
					</div>
				</div>
				<div class="accordion-item">
					<h2 class="accordion-header" id="panelsStayOpen-headingTwo">
						<button class="accordion-button collapsed" type="button" data-bs-toggle="collapse"
							data-bs-target="#panelsStayOpen-collapseTwo" aria-expanded="false"
							aria-controls="panelsStayOpen-collapseTwo">
							질문 #2
						</button>
					</h2>
					<div id="panelsStayOpen-collapseTwo" class="accordion-collapse collapse"
						aria-labelledby="panelsStayOpen-headingTwo">
						<div class="accordion-body">
							내용
						</div>
					</div>
				</div>
				<div class="accordion-item">
					<h2 class="accordion-header" id="panelsStayOpen-headingThree">
						<button class="accordion-button collapsed" type="button" data-bs-toggle="collapse"
							data-bs-target="#panelsStayOpen-collapseThree" aria-expanded="false"
							aria-controls="panelsStayOpen-collapseThree">
							질문 #3
						</button>
					</h2>
					<div id="panelsStayOpen-collapseThree" class="accordion-collapse collapse"
						aria-labelledby="panelsStayOpen-headingThree">
						<div class="accordion-body">
							내용
						</div>
					</div>
				</div>
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
			<div class="text-end mb-3">
				<button class="btn btn-outline-secondary" id="addBtn">추가하기</button>
			</div>
		</div>
	</div>
</section>
<script>
	$("#addBtn").click(function () {
		location.href = "${contextPath}/board/service2/new";
	});
</script>
<%@ include file="../common/footer.jsp" %>
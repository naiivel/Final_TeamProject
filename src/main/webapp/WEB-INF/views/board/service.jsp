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
					<a href="${contextPath}/board/service" class="list-group-item active">질문과 답변</a>
					<a href="${contextPath}/board/service2" class="list-group-item">자주 묻는 질문</a>
					<a href="${contextPath}/board/service3" class="list-group-item">공지사항</a>
				</div>
			</div>
		</div>
		<div class="col-md-10">
			<h2 class="mb-4">질문과 답변</h2>
			<div class="mb-4 text-end">
				<button class="btn btn-outline-secondary" id="addBtn">글쓰기</button>
				<button class="btn btn-outline-secondary">나의 질문</button>
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
		</div>
	</div>
</section>
<%@ include file="../common/footer.jsp" %>
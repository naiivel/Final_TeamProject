<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../common/header.jsp"%>
<section class="container">
	<div class="row">
		<div class="col-md-2">
			<div class="card mb-3">
				<div class="card-header">고객센터</div>
				<div class="list-group list-group-flush">
					<a href="${contextPath}/board/faq" class="list-group-item"
						id="faqBoard">자주 묻는 질문</a> <a href="${contextPath}/board/qna"
						class="list-group-item" id="qnaBoard">질문과 답변</a> <a
						href="${contextPath}/board/notice" class="list-group-item active"
						id="noticeBoard">공지사항</a>
				</div>
			</div>
		</div>
		${noticeList }<br> ${pm }
		<div class="col-md-10 mb-5">
			<h2 class="mb-4">공지사항</h2>
			<div class="mb-4">
				<div class="btn-group">
					<button value="전체" class="btn btn-outline-secondary" id="all">전체</button>
					<button value="공지사항" class="btn btn-outline-secondary" id="notice">공지사항</button>
					<button value="외교부소식" class="btn btn-outline-secondary" id="mofa">외교부소식</button>
				</div>
			</div>

			<div class="table-responsive">
				<table class="table">
					<tr>
						<th>번호</th>
						<th>구분</th>
						<th>제목</th>
						<th>글쓴이</th>
						<th>등록일</th>
					</tr>
					<c:choose>
						<c:when test="${noticeList ne null }">
							<c:forEach var="n" items="${noticeList }">
								<tr>
									<td>${n.notice_num}</td>
									<td>${n.notice_category}</td>
									<td><a href="${contextPath}/board/noticeDetail">${n.notice_title}</a></td>
									<td>${n.notice_writer}</td>
									<td>${n.notice_regdate}</td>
								</tr>
							</c:forEach>
						</c:when>
						<c:otherwise>
							<tr>
								<td colspan="5"><h1>현재 게시글이 존재하지 않습니다.</h1></td>
							</tr>
						</c:otherwise>
					</c:choose>

				</table>

			</div>

			<nav aria-label="Page navigation mb-3">
				<ul class="pagination justify-content-center">
					<li class="page-item disabled"><a class="page-link">Previous</a>
					</li>
					<li class="page-item"><a class="page-link" href="#">1</a></li>
					<li class="page-item"><a class="page-link" href="#">2</a></li>
					<li class="page-item"><a class="page-link" href="#">3</a></li>
					<li class="page-item"><a class="page-link" href="#">Next</a></li>
				</ul>
			</nav>
			<div class="text-end mb-3">
				<button class="btn btn-outline-secondary" id="addBtn">글쓰기</button>
			</div>
		</div>
	</div>
</section>
<script>
	$("#addBtn").click(function() {
		location.href = "${contextPath}/board/service3/new";
	});
</script>
<%@ include file="../common/footer.jsp"%>
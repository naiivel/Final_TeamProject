<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
<%@ include file="../common/header.jsp" %>
<section class="container">
	<div class="row">
		<div class="col-md-2">
			<div class="card mb-3">
				<div class="card-header">
					고객센터 ${list}
				</div>
				<div class="list-group list-group-flush">
					<a href="${contextPath}/board/service" class="list-group-item">질문과 답변</a>
					<a href="${contextPath}/board/faq/list" class="list-group-item active">자주 묻는 질문</a>
					<a href="${contextPath}/board/service3" class="list-group-item">공지사항</a>
				</div>
			</div>
		</div>
		<div class="col-md-10 mb-5">
			<h2 class="mb-4">자주 묻는 질문</h2>
			<form action="board/faq/write" method="POST" class="h-100">
				<div class="form-floating mb-3">
					<select class="form-select" id="floatingSelectCategory" aria-label="category">
						<option value="trip">해외여행</option>
						<option value="airline">항공</option>
						<option value="reservation">예약/결제</option>
						<option value="passport">여권/비자/환전</option>
						<option value="other">홈페이지/기타</option>
					</select>
					<label for="floatingSelectCategory">카테고리 선택</label>
				</div>
				<div class="form-floating mb-3">
					<input type="text" class="form-control" id="floatingInputTitle">
					<label for="floatingInputTitle">제목</label>
				</div>
				<div class="form-floating mb-3 h-100">
					<textarea class="form-control h-100" id="floatingTextarea"></textarea>
					<label for="floatingTextarea">내용</label>
				</div>
				<button class="btn btn-outline-secondary">작성 완료</button>
			</form>
		</div>
	</div>
</section>

<script>
$(".btn-outline-secondary").click(function(){
	$(this).parent().submit();
});
</script>
<%@ include file="../common/footer.jsp" %>
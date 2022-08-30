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
					<a href="${contextPath}/board/faq" class="list-group-item">자주 묻는 질문</a>
					<a href="${contextPath}/board/qna" class="list-group-item active">질문과 답변</a>
					<a href="${contextPath}/board/notice" class="list-group-item">공지사항</a>
				</div>
			</div>
		</div>
		
		<div class="col-md-10 mb-5">
			<h2 class="mb-4">질문과 답변</h2>
			<form action="qnaWrite" method="POST" class="h-100">
				<input type="hidden" name="member_num" value="${userInfo.member_num }">
				<input type="hidden" name="qna_writer" value="${userInfo.member_name}">
				<div class="text-end mb-3">
					${userInfo.member_name}
				</div>
				<div class="form-floating mb-3">
					<input type="text"  class="form-control" id="floatingInputTitle" name="qna_title">
					<label for="floatingInputTitle">제목</label>
				</div>
				<div class="form-floating mb-3 h-100">
					<textarea  class="form-control h-100" id="floatingTextarea" name="qna_question"></textarea>
					<label for="floatingTextarea">내용</label>
				</div>
				<button class="btn btn-outline-secondary">작성 완료</button>
			</form>
		</div>
	</div>
</section>
<%@ include file="../common/footer.jsp" %>
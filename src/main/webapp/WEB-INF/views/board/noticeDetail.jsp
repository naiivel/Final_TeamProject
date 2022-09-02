<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="f" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ include file="../common/header.jsp" %>
<section class="container">
	<div class="row">
		<div class="col-md-2">
			<div class="card mb-3">
				<div class="card-header">
					고객센터
				</div>
				<div class="list-group list-group-flush">
					<a href="${contextPath}/board/faq" class="list-group-item" id="faqBoard">자주 묻는 질문</a> 
					<a href="${contextPath}/board/qna" class="list-group-item" id="qnaBoard">질문과 답변</a> 
					<a href="${contextPath}/board/notice" class="list-group-item active" id="noticeBoard">공지사항</a>
				</div>
			</div>
		</div>
		
		<div class="col-md-10 mb-5">
			<h2 class="mb-4">공지사항</h2>
			<div class="card mb-5">
				<div class="card-header">
					<button class="btn-close float-end"></button>
					<h3 class="card-title">${notice.notice_title }</h3>
					<p class="card-text text-muted d-inline">작성자: ${notice.notice_writer }</p><br/>
					<p class="card-text text-muted d-inline">작성일: <f:formatDate value="${notice.notice_regdate}" pattern="yyyy/MM/dd"/></p>
				</div>
				<div class="card-body">
					<p class="catd-text">${notice.notice_content }</p>
				</div>
				<c:if test="${!empty files}">
					<div class="card-footer">
						<p class="card-text">첨부파일</p>					
						<c:forEach var="file" items="${files}">
							<a class="d-block" href="${contextPath}/attach${file}">${file.substring(file.lastIndexOf("_") + 1)}</a>
						</c:forEach>
					</div>
				</c:if>
			</div>
		</div>
	</div>
</section>
<%@ include file="../common/footer.jsp" %>
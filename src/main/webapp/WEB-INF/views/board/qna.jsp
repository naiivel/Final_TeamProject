<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="f" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ include file="../common/header.jsp"%>
<section class="container">
	<div class="row">
		<div class="col-md-2">
			<div class="card mb-3">
				<div class="card-header">고객센터</div>
				<div class="list-group list-group-flush">
					<a href="${contextPath}/board/faq" class="list-group-item" id="faqBoard">자주 묻는 질문</a> 
					<a href="${contextPath}/board/qna" class="list-group-item active" id="qnaBoard">질문과 답변</a> 
					<a href="${contextPath}/board/notice" class="list-group-item" id="noticeBoard">공지사항</a>
				</div>
			</div>
		</div>
		<div class="col-md-10 mb-5">
			<h2 class="mb-4">질문과 답변</h2>
			<div class="mb-4">
				<div class="dropdown">
					<a class="btn btn-outline-secondary dropdown-toggle" href="#"
						role="button" data-bs-toggle="dropdown" aria-expanded="false">
						보기 </a>
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
					<tbody class="table table-info">
						<c:choose>
							<c:when test="${qnaNoticeList ne null }">
								<c:forEach var="n" items="${qnaNoticeList }">
									<tr>
										<td class="col-sm-2">${n.notice_category}</td>
										<td class="col-sm-6"><a
											href="${contextPath}/board/noticeDetail?notice_num=${n.notice_num}">${n.notice_title}</a></td>
										<td class="col-sm-2">${n.notice_writer}</td>
										<td class="col-sm-2"><f:formatDate value="${n.notice_regdate}" pattern="yyyy.MM.dd" /></td>
									</tr>
								</c:forEach>
							</c:when>
							<c:otherwise>
								<tr>
									<td colspan="4"><h1>현재 게시글이 존재하지 않습니다.</h1></td>
								</tr>
							</c:otherwise>
						</c:choose>
					</tbody>
					<tbody class="table table-striped">
						<c:choose>
						<c:when test="${qnaList ne null}">
							<c:forEach var="q" items="${qnaList }">
								<tr>
									<td class="col-sm-2">${q.qna_num}</td>
									<td class="col-sm-6"><a href="${contextPath}/board/qnaDetail?qna_num=${q.qna_num}">${q.qna_title}</a></td>
									<td id="writer" class="col-sm-2">${q.qna_writer}</td>
									<td class="col-sm-2"><f:formatDate value="${q.qna_regdate}" pattern="yyyy.MM.dd" /></td>
								</tr>
							</c:forEach>
						</c:when>
						<c:otherwise>
							<tr>
								<td colspan="4"><h1>현재 게시글이 존재하지 않습니다.</h1></td>
							</tr>
						</c:otherwise>
						</c:choose>
					</tbody>
				</table>
			</div>
			<nav aria-label="Page navigation mb-3">
				<ul class="pagination justify-content-center">
					<li class="page-item disabled"><a class="page-link">Previous</a></li>
					<li class="page-item"><a class="page-link" href="#">1</a></li>
					<li class="page-item"><a class="page-link" href="#">2</a></li>
					<li class="page-item"><a class="page-link" href="#">3</a></li>
					<li class="page-item"><a class="page-link" href="#">Next</a></li>
				</ul>
			</nav>
			<div class="mb-4 text-end">
				<button type="button" class="btn btn-outline-secondary" id="addBtn">글쓰기</button>
				<button type="button" class="btn btn-outline-secondary" id="myQNA">나의 질문</button>
			</div>
		</div>
	</div>
</section>
<script src="${contextPath}/resources/js/popper.min.js"></script>
<script>
	document.querySelector("#addBtn").addEventListener("click", function() {
		location.href = "${contextPath}/board/qnaWrite";
	});
	var userInfo="<%= session.getAttribute("userInfo") %>";
	console.log(userInfo);
	var qnaWriter='${q.qna_writer}';
	
	var writer= $("#writer").text();
	console.log("writer: "+writer)
	console.log("qnaWriter: "+qnaWriter);
	console.log("maskingName: "+maskingName(writer));
	
	var qnaList='${qnaList}';
	
	for (var i=0; i<=qnaList.length; i++){
		var writer= $("#writer").text();
		$("#writer").text(maskingName(writer));
	}
	
	function maskingName(strName) {
		if (strName.length > 2) {
			var originName = strName.split('');
			originName.forEach(function(name, i) {
				if (i === 0 || i === originName.length - 1)
					return;
				originName[i] = '*';
			});
			var joinName = originName.join();
			return joinName.replace(/,/g, '');
		} else {
			var pattern = /.$/;
			return strName.replace(pattern, '*');
		}
	};
</script>
<%@ include file="../common/footer.jsp"%>
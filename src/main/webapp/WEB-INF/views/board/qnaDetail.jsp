<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="f" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ include file="../common/header.jsp" %>
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
			<div class="card mb-5">
				<div class="card-header">
					<button class="btn-close float-end"></button>
					<h3 class="card-title">${qna.qna_title}</h3>
					작성자:<p id="writer" class="card-text text-muted d-inline">&nbsp;${qna.qna_writer}</p><br/>
					작성일:<p class="card-text text-muted d-inline">&nbsp;<f:formatDate value="${qna.qna_regdate}" pattern="yyyy.MM.dd" /></p>
				</div>
				<div class="card-body">
					<p class="catd-text">${qna.qna_question}</p>
				</div>
			</div>
			<div class="card mb-5">
				<div class="card-header">
					<button class="btn-close float-end"></button>
					<h3 class="card-title">답변 제목</h3>
					<p class="card-text text-muted d-inline">작성자</p>
					<p class="card-text text-muted d-inline">2022-11-11</p>
				</div>
				<div class="card-body">
					<p class="catd-text">Lorem ipsum dolor sit, amet consectetur adipisicing elit. Quae sint quidem quam
						quis voluptas totam autem corrupti error libero expedita. Nostrum illo unde vitae, laudantium
						modi ullam impedit numquam. Dolores?
						Incidunt soluta, deserunt ullam quibusdam earum voluptas. Facere, praesentium! Voluptatem,
						doloremque libero. Necessitatibus placeat quas sit dolorem laborum eaque architecto debitis
						corporis officiis in rem, mollitia temporibus molestiae neque eum!
						Odit aperiam repellendus, facere odio fugiat autem ipsum blanditiis, ipsa rerum minus
						voluptatibus sequi magnam at ipsam? Aliquam culpa placeat numquam! Cumque quis, deserunt rem
						voluptas et quasi deleniti qui.</p>
				</div>
			</div>
		</div>
	</div>
</section>

<script>
	var qnaWriter='${qna.qna_writer}';
	console.log(qnaWriter);
	console.log(maskingName(qnaWriter));
	
	$("#writer").text(maskingName(qnaWriter));
	
	function maskingName(strName){
	if (strName.length > 2) {
		var originName = strName.split('');
		originName.forEach(function(name, i) {
			if (i === 0 || i === originName.length - 1) return;
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
<%@ include file="../common/footer.jsp" %>
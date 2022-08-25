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
					<a href="${contextPath}/board/faq/${pm.makeQuery(1)}" class="list-group-item active" id="faqBoard">자주 묻는 질문</a>
					<a href="${contextPath}/board/qna" class="list-group-item" id="qnaBoard">질문과 답변</a>
					<a href="${contextPath}/board/notice" class="list-group-item" id="noticeBoard">공지사항</a>
				</div>
			</div>
		</div>
		<div class="col-md-10 mb-5">
			<h2 class="mb-4">자주 묻는 질문</h2>
			<form action="faqWrite" method="POST" class="h-100" id="writeForm">
				<div class="form-floating mb-3">
					<select name="faq_category" class="form-select" id="floatingSelectCategory" aria-label="category">
						<option value="해외여행">해외여행</option>
						<option value="항공">항공</option>
						<option value="예약/결제">예약/결제</option>
						<option value="여권/비자/환전">여권/비자/환전</option>
						<option value="홈페이지/기타">홈페이지/기타</option>
					</select>
					<label for="floatingSelectCategory">카테고리 선택</label>
				</div>
				<div class="form-floating mb-3">
					<input type="text" name="faq_title"class="form-control" id="floatingInputTitle">
					<label for="floatingInputTitle">제목</label>
				</div>
				<div class="form-floating mb-3 h-100">
					<textarea class="form-control h-100" id="floatingTextarea" name="faq_content"></textarea>
					<label for="floatingTextarea">내용</label>
				</div>
				<button class="btn btn-outline-secondary" onclick="location.href='${contextPath}/board/faq';">작성 완료</button>
			</form>
		</div>
	</div>
</section>

<script>
	$(".btn-oulinee-secondary").click(function(){
		var faq_category= $("#floatingSelectCategory").val();	
		var faq_title= $("#floatingInputTitle").val();
		var faq_content= $("#floatingTextarea").val();
		
		console.log("faq_category: ", faq_category);
	/* 	$.ajax({
			url:"${contextPath}/board/faqWrite", type:"POST", dataType:"json", 
			data: {"faq_category": faq_category , "faq_title": faq_title, "faq_content": faq_content },
			success:function(data){
				console.log(data);
			},error:function(err){
				console.log("응 안돼 돌아가");
			}
		});
	 */	
		$.ajax({
			url : "${contextPath}/board/faqWrite", type : "POST",data : $("#writeForm").serialize(), dataType:"json",
			success : function(data) {
				console.log(data)
			},error:function(err){
				console.log("응 안돼 돌아가");
			}

		});
		location.href="${contextPath}/board/faq";
	});
</script>
<%@ include file="../common/footer.jsp" %>
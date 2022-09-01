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
			
			<c:if test="${!empty commentList }">

				<div class="card" >
					<div class="card-header">등록된 답변</div>
					<ul class="list-group list-group-flush">
						<c:forEach var="reply" items="${commentList}">
							<li class="list-group-item">${reply.qna_answer }</li>
						</c:forEach>
					</ul>
				</div>

			</c:if>
			<div id="addedcommentList"></div>
			
			<c:if test="${userInfo.member_master eq 'Y'}">
			<!-- Comments Form -->
			<div class="card my-4">
				<h5 class="card-header">답변을 작성하세요</h5>
				<div class="card-body">
					<form name="comment-form" action="comment" method="post" autocomplete="off">
						<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
						<div class="form-group">
							<input type="hidden" name="qna_num" value="${qna.qna_num}">
							<input type="hidden" name="comment_writer" value="${userInfo.member_name }">
							<textarea name="qna_answer" class="form-control" rows="3"></textarea>
						</div>
						<button type="submit" class="btn btn-primary">등록</button>
					</form>
				</div>
			</div>
			</c:if>
		</div>
	</div>
</section>

<script>
	window.onload= function(){
		getCommentList();
	};
	
	
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
	
	
	
	function getCommentList(){
		var qna_num= $('input[name=qna_num]').val();
		$.ajax({
			type: 'GET', url:"getCommentList", data:{"qna_num":qna_num},
			beforeSend : function(xhr)
            {   /*데이터를 전송하기 전에 헤더에 csrf값을 설정한다*/
                xhr.setRequestHeader("${_csrf.headerName}", "${_csrf.token}");
            },
			success: function(result) {
				for(var i=0; i<result.length; i++){
					var str='<div class="comment">';
					str += '관리자 답변';
					str += '</div><div>&nbsp;&nbsp;&nbsp;';
					str += result[i].qna_answer;
					str += '</div><hr/>';
					$("#commentList").append(str);
				}
			},error: function(err){
				console.log("안되누");
			} 
		});//ajax
			
			
	}
		
		
	
	
	
	
	
	
	
</script>
<%@ include file="../common/footer.jsp" %>